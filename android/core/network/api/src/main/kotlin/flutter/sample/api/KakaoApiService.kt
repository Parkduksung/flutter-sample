package flutter.sample.api

import flutter.sample.api.reponse.SearchBookResponse
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Headers
import retrofit2.http.Query

interface KakaoApiService {


    @Headers("Authorization: KakaoAK 0dd4bc3047fd690e83b5d3e4215f29af")
    @GET("/v3/search/book")
    suspend fun getSearchBook(
        @Query("query") query: String,
    ) : SearchBookResponse
}