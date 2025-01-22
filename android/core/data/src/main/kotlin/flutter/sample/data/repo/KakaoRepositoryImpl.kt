package flutter.sample.data.repo

import flutter.sample.api.KakaoApiService
import flutter.sample.api.reponse.asModel
import flutter.sample.model.BookModel
import javax.inject.Inject

class KakaoRepositoryImpl @Inject constructor(private val kakaoApiService: KakaoApiService) : KakaoRepository{
    override suspend fun getSearchBooks(query: String): List<BookModel> =
        kakaoApiService.getSearchBook(query).documents.map { it.asModel() }
}