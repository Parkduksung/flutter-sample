package com.example.flutter_sample

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import flutter.sample.data.repo.KakaoRepository
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.serialization.json.Json
import javax.inject.Inject

@HiltViewModel
class MainViewModel @Inject constructor(private val kakaoRepository: KakaoRepository) : ViewModel() {

    private val json = Json {
        ignoreUnknownKeys = true
    }

    private val _queryStateFlow = MutableStateFlow(EMPTY_STRING)
    val queryStateFlow: StateFlow<String> = _queryStateFlow

    @OptIn(FlowPreview::class)
    val booksStateFlow: StateFlow<String> = queryStateFlow
        .map { it.trim() }
        .distinctUntilChanged()
        .flatMapLatest { query ->
            val books = kakaoRepository.getSearchBooks(query)
            val toJsonString = json.encodeToString(books)
            flowOf(toJsonString)
        }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), EMPTY_STRING)

    fun onQueryChanged(query: String) {
        viewModelScope.launch {
            _queryStateFlow.value = query
        }
    }

    companion object {
        private const val EMPTY_STRING = ""
    }
}