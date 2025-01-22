package flutter.sample.api.di

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import flutter.sample.api.KakaoApiService
import kotlinx.serialization.json.Json
import okhttp3.MediaType
import okhttp3.OkHttpClient
import retrofit2.Retrofit
import retrofit2.converter.kotlinx.serialization.asConverterFactory
import javax.inject.Singleton

@InstallIn(SingletonComponent::class)
@Module
interface ApiModule {

    companion object {
        private val json = Json {
            isLenient = true
            ignoreUnknownKeys = true
        }

        @Provides
        @Singleton
        internal fun provideKakaoApiService(
            okHttpClient: OkHttpClient
        ): KakaoApiService {
            return Retrofit.Builder()
                .baseUrl("https://dapi.kakao.com")
                .addConverterFactory(json.asConverterFactory(MediaType.get("application/json")))
                .client(okHttpClient).build()
                .create(KakaoApiService::class.java)
        }

        @Provides
        @Singleton
        internal fun provideOkHttpClient(): OkHttpClient {
            return OkHttpClient.Builder().build()
        }
    }
}