package flutter.sample.data.di

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import flutter.sample.data.repo.KakaoRepository
import flutter.sample.data.repo.KakaoRepositoryImpl
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
interface RepositoryModule {

    @Binds
    @Singleton
    fun provideKakaoRepository(kakaoRepositoryImpl: KakaoRepositoryImpl): KakaoRepository
}