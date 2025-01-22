package flutter.sample.api

import flutter.sample.api.reponse.SearchBookResponse
import retrofit2.http.GET
import retrofit2.http.Query

interface KakaoApiService {


    @GET("/v3/search/book")
    suspend fun getSearchBook(
        @Query("query") query: String,
    ) : SearchBookResponse
}