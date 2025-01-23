package com.example.flutter_sample

import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.lifecycleScope
import dagger.hilt.android.AndroidEntryPoint
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach

@AndroidEntryPoint
class MainActivity : FlutterFragmentActivity() {

    private val mainViewModel: MainViewModel by lazy {
        ViewModelProvider.create(this)[MainViewModel::class.java]
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, BOOKS_CHANNEL).setStreamHandler(bookChannelStreamHandler())
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, QUERY_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "query" -> {
                    (call.arguments as? String)?.let(mainViewModel::onQueryChanged)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }


    private fun bookChannelStreamHandler() = object : EventChannel.StreamHandler {
        override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
            mainViewModel.booksStateFlow.onEach { booksJsonString->
                events?.success(booksJsonString)
            }.launchIn(lifecycleScope)
        }
        override fun onCancel(arguments: Any?) {}
    }
    companion object {
        private const val QUERY_CHANNEL = "samples.flutter.io/query"
        private const val BOOKS_CHANNEL = "samples.flutter.io/books"
    }
}
