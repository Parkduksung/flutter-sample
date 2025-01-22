package flutter.sample.data.repo

import flutter.sample.model.BookModel

interface KakaoRepository {

    suspend fun getSearchBooks(query : String) : List<BookModel>
}