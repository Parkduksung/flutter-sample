package flutter.sample.api.reponse

import flutter.sample.model.BookModel
import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonNames


@Serializable
data class SearchBookResponse(
    val meta: Meta,
    val documents: List<KakaoDocument>
)

@Serializable
data class Meta(
    @SerialName("is_end")
    val isEnd: Boolean,
    @SerialName("pageable_count")
    val pageableCount: Int,
    @SerialName("total_count")
    val totalCount: Int
)

@Serializable
data class KakaoDocument(
    val title: String,
    val contents: String,
    val url: String,
    val isbn: String,
    val datetime: String,
    val authors: List<String>,
    val publisher: String,
    val translators: List<String>,
    val price: Int,
    @SerialName("sale_price")
    val salePrice: Int,
    val thumbnail: String,
    val status: String
)


fun KakaoDocument.asModel(): BookModel =
    BookModel(
        title,
        contents,
        url,
        isbn,
        datetime,
        authors,
        publisher,
        translators,
        price,
        salePrice,
        thumbnail,
        status
    )