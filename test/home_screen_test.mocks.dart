// Mocks generated by Mockito 5.4.5 from annotations
// in flutter_sample/test/home_screen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i7;

import 'package:flutter_sample/base/effect_base.dart' as _i6;
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart'
    as _i10;
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart'
    as _i8;
import 'package:flutter_sample/feature/home/home_contract.dart' as _i3;
import 'package:flutter_sample/feature/home/home_viewmodel.dart' as _i4;
import 'package:flutter_sample/utils/debounce_texteditcontroller.dart' as _i2;
import 'package:flutter_sample/utils/result.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDebouncedTextController_0 extends _i1.SmartFake
    implements _i2.DebouncedTextController {
  _FakeDebouncedTextController_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeHomeState_1 extends _i1.SmartFake implements _i3.HomeState {
  _FakeHomeState_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [HomeViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeViewModel extends _i1.Mock implements _i4.HomeViewModel {
  MockHomeViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.DebouncedTextController get textController =>
      (super.noSuchMethod(
            Invocation.getter(#textController),
            returnValue: _FakeDebouncedTextController_0(
              this,
              Invocation.getter(#textController),
            ),
          )
          as _i2.DebouncedTextController);

  @override
  set textController(_i2.DebouncedTextController? _textController) =>
      super.noSuchMethod(
        Invocation.setter(#textController, _textController),
        returnValueForMissingStub: null,
      );

  @override
  _i3.HomeState get initialState =>
      (super.noSuchMethod(
            Invocation.getter(#initialState),
            returnValue: _FakeHomeState_1(
              this,
              Invocation.getter(#initialState),
            ),
          )
          as _i3.HomeState);

  @override
  _i5.Stream<_i3.HomeState> get state =>
      (super.noSuchMethod(
            Invocation.getter(#state),
            returnValue: _i5.Stream<_i3.HomeState>.empty(),
          )
          as _i5.Stream<_i3.HomeState>);

  @override
  _i5.Stream<_i6.BaseEffect> get effect =>
      (super.noSuchMethod(
            Invocation.getter(#effect),
            returnValue: _i5.Stream<_i6.BaseEffect>.empty(),
          )
          as _i5.Stream<_i6.BaseEffect>);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);

  @override
  void event(_i3.HomeEvent? event) => super.noSuchMethod(
    Invocation.method(#event, [event]),
    returnValueForMissingStub: null,
  );

  @override
  void dispose() => super.noSuchMethod(
    Invocation.method(#dispose, []),
    returnValueForMissingStub: null,
  );

  @override
  void updateState(_i3.HomeState? newState) => super.noSuchMethod(
    Invocation.method(#updateState, [newState]),
    returnValueForMissingStub: null,
  );

  @override
  void sendEffect(_i6.BaseEffect? effect) => super.noSuchMethod(
    Invocation.method(#sendEffect, [effect]),
    returnValueForMissingStub: null,
  );

  @override
  void addListener(_i7.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#addListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void removeListener(_i7.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#removeListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void notifyListeners() => super.noSuchMethod(
    Invocation.method(#notifyListeners, []),
    returnValueForMissingStub: null,
  );
}

/// A class which mocks [GetSearchBooksUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetSearchBooksUseCase extends _i1.Mock
    implements _i8.GetSearchBooksUseCase {
  MockGetSearchBooksUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Stream<_i9.Result<List<_i10.DocumentEntity>>> call(String? keyword) =>
      (super.noSuchMethod(
            Invocation.method(#call, [keyword]),
            returnValue:
                _i5.Stream<_i9.Result<List<_i10.DocumentEntity>>>.empty(),
          )
          as _i5.Stream<_i9.Result<List<_i10.DocumentEntity>>>);
}
