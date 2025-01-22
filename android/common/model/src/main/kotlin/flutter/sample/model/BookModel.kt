package flutter.sample.model

data class BookModel(
    val title : String,
    val contents : String,
    val url : String,
    val isbn : String,
    val datetime : String,
    val authors : List<String>,
    val publisher : String,
    val translators : List<String>,
    val price : Int,
    val salePrice : Int,
    val thumbnail : String,
    val status : String
)
