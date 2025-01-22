// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updae_userprofile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdaeUserprofileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingUpdate value) loading,
    required TResult Function(SuccessUpdate value) success,
    required TResult Function(ErrorUpdate value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingUpdate value)? loading,
    TResult? Function(SuccessUpdate value)? success,
    TResult? Function(ErrorUpdate value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingUpdate value)? loading,
    TResult Function(SuccessUpdate value)? success,
    TResult Function(ErrorUpdate value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdaeUserprofileStateCopyWith<$Res> {
  factory $UpdaeUserprofileStateCopyWith(UpdaeUserprofileState value,
          $Res Function(UpdaeUserprofileState) then) =
      _$UpdaeUserprofileStateCopyWithImpl<$Res, UpdaeUserprofileState>;
}

/// @nodoc
class _$UpdaeUserprofileStateCopyWithImpl<$Res,
        $Val extends UpdaeUserprofileState>
    implements $UpdaeUserprofileStateCopyWith<$Res> {
  _$UpdaeUserprofileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdaeUserprofileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UpdaeUserprofileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingUpdate value) loading,
    required TResult Function(SuccessUpdate value) success,
    required TResult Function(ErrorUpdate value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingUpdate value)? loading,
    TResult? Function(SuccessUpdate value)? success,
    TResult? Function(ErrorUpdate value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingUpdate value)? loading,
    TResult Function(SuccessUpdate value)? success,
    TResult Function(ErrorUpdate value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdaeUserprofileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingUpdateImplCopyWith<$Res> {
  factory _$$LoadingUpdateImplCopyWith(
          _$LoadingUpdateImpl value, $Res Function(_$LoadingUpdateImpl) then) =
      __$$LoadingUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUpdateImplCopyWithImpl<$Res>
    extends _$UpdaeUserprofileStateCopyWithImpl<$Res, _$LoadingUpdateImpl>
    implements _$$LoadingUpdateImplCopyWith<$Res> {
  __$$LoadingUpdateImplCopyWithImpl(
      _$LoadingUpdateImpl _value, $Res Function(_$LoadingUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingUpdateImpl implements LoadingUpdate {
  const _$LoadingUpdateImpl();

  @override
  String toString() {
    return 'UpdaeUserprofileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingUpdate value) loading,
    required TResult Function(SuccessUpdate value) success,
    required TResult Function(ErrorUpdate value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingUpdate value)? loading,
    TResult? Function(SuccessUpdate value)? success,
    TResult? Function(ErrorUpdate value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingUpdate value)? loading,
    TResult Function(SuccessUpdate value)? success,
    TResult Function(ErrorUpdate value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUpdate implements UpdaeUserprofileState {
  const factory LoadingUpdate() = _$LoadingUpdateImpl;
}

/// @nodoc
abstract class _$$SuccessUpdateImplCopyWith<$Res> {
  factory _$$SuccessUpdateImplCopyWith(
          _$SuccessUpdateImpl value, $Res Function(_$SuccessUpdateImpl) then) =
      __$$SuccessUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileResponse updateProfileResponse});
}

/// @nodoc
class __$$SuccessUpdateImplCopyWithImpl<$Res>
    extends _$UpdaeUserprofileStateCopyWithImpl<$Res, _$SuccessUpdateImpl>
    implements _$$SuccessUpdateImplCopyWith<$Res> {
  __$$SuccessUpdateImplCopyWithImpl(
      _$SuccessUpdateImpl _value, $Res Function(_$SuccessUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileResponse = freezed,
  }) {
    return _then(_$SuccessUpdateImpl(
      freezed == updateProfileResponse
          ? _value.updateProfileResponse
          : updateProfileResponse // ignore: cast_nullable_to_non_nullable
              as UpdateProfileResponse,
    ));
  }
}

/// @nodoc

class _$SuccessUpdateImpl implements SuccessUpdate {
  const _$SuccessUpdateImpl(this.updateProfileResponse);

  @override
  final UpdateProfileResponse updateProfileResponse;

  @override
  String toString() {
    return 'UpdaeUserprofileState.success(updateProfileResponse: $updateProfileResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateImpl &&
            const DeepCollectionEquality()
                .equals(other.updateProfileResponse, updateProfileResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updateProfileResponse));

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateImplCopyWith<_$SuccessUpdateImpl> get copyWith =>
      __$$SuccessUpdateImplCopyWithImpl<_$SuccessUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return success(updateProfileResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(updateProfileResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(updateProfileResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingUpdate value) loading,
    required TResult Function(SuccessUpdate value) success,
    required TResult Function(ErrorUpdate value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingUpdate value)? loading,
    TResult? Function(SuccessUpdate value)? success,
    TResult? Function(ErrorUpdate value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingUpdate value)? loading,
    TResult Function(SuccessUpdate value)? success,
    TResult Function(ErrorUpdate value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessUpdate implements UpdaeUserprofileState {
  const factory SuccessUpdate(
      final UpdateProfileResponse updateProfileResponse) = _$SuccessUpdateImpl;

  UpdateProfileResponse get updateProfileResponse;

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUpdateImplCopyWith<_$SuccessUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUpdateImplCopyWith<$Res> {
  factory _$$ErrorUpdateImplCopyWith(
          _$ErrorUpdateImpl value, $Res Function(_$ErrorUpdateImpl) then) =
      __$$ErrorUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorUpdateImplCopyWithImpl<$Res>
    extends _$UpdaeUserprofileStateCopyWithImpl<$Res, _$ErrorUpdateImpl>
    implements _$$ErrorUpdateImplCopyWith<$Res> {
  __$$ErrorUpdateImplCopyWithImpl(
      _$ErrorUpdateImpl _value, $Res Function(_$ErrorUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorUpdateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorUpdateImpl implements ErrorUpdate {
  const _$ErrorUpdateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdaeUserprofileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUpdateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUpdateImplCopyWith<_$ErrorUpdateImpl> get copyWith =>
      __$$ErrorUpdateImplCopyWithImpl<_$ErrorUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingUpdate value) loading,
    required TResult Function(SuccessUpdate value) success,
    required TResult Function(ErrorUpdate value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingUpdate value)? loading,
    TResult? Function(SuccessUpdate value)? success,
    TResult? Function(ErrorUpdate value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingUpdate value)? loading,
    TResult Function(SuccessUpdate value)? success,
    TResult Function(ErrorUpdate value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUpdate implements UpdaeUserprofileState {
  const factory ErrorUpdate({required final String error}) = _$ErrorUpdateImpl;

  String get error;

  /// Create a copy of UpdaeUserprofileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorUpdateImplCopyWith<_$ErrorUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
