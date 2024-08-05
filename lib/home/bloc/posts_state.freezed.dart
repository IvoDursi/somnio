// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function() loading,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsLoadedState value)? loaded,
    TResult? Function(PostsLoadingState value)? loading,
    TResult? Function(PostsFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsFailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostsInitialStateImplCopyWith<$Res> {
  factory _$$PostsInitialStateImplCopyWith(_$PostsInitialStateImpl value,
          $Res Function(_$PostsInitialStateImpl) then) =
      __$$PostsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsInitialStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsInitialStateImpl>
    implements _$$PostsInitialStateImplCopyWith<$Res> {
  __$$PostsInitialStateImplCopyWithImpl(_$PostsInitialStateImpl _value,
      $Res Function(_$PostsInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostsInitialStateImpl implements PostsInitialState {
  const _$PostsInitialStateImpl();

  @override
  String toString() {
    return 'PostsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function() loading,
    required TResult Function(String error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? failed,
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
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsFailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsLoadedState value)? loaded,
    TResult? Function(PostsLoadingState value)? loading,
    TResult? Function(PostsFailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostsInitialState implements PostsState {
  const factory PostsInitialState() = _$PostsInitialStateImpl;
}

/// @nodoc
abstract class _$$PostsLoadedStateImplCopyWith<$Res> {
  factory _$$PostsLoadedStateImplCopyWith(_$PostsLoadedStateImpl value,
          $Res Function(_$PostsLoadedStateImpl) then) =
      __$$PostsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$PostsLoadedStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsLoadedStateImpl>
    implements _$$PostsLoadedStateImplCopyWith<$Res> {
  __$$PostsLoadedStateImplCopyWithImpl(_$PostsLoadedStateImpl _value,
      $Res Function(_$PostsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostsLoadedStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostsLoadedStateImpl implements PostsLoadedState {
  const _$PostsLoadedStateImpl({required final List<Post> posts})
      : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.loaded(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsLoadedStateImplCopyWith<_$PostsLoadedStateImpl> get copyWith =>
      __$$PostsLoadedStateImplCopyWithImpl<_$PostsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function() loading,
    required TResult Function(String error) failed,
  }) {
    return loaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? failed,
  }) {
    return loaded?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsFailedState value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsLoadedState value)? loaded,
    TResult? Function(PostsLoadingState value)? loading,
    TResult? Function(PostsFailedState value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PostsLoadedState implements PostsState {
  const factory PostsLoadedState({required final List<Post> posts}) =
      _$PostsLoadedStateImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$PostsLoadedStateImplCopyWith<_$PostsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostsLoadingStateImplCopyWith<$Res> {
  factory _$$PostsLoadingStateImplCopyWith(_$PostsLoadingStateImpl value,
          $Res Function(_$PostsLoadingStateImpl) then) =
      __$$PostsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsLoadingStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsLoadingStateImpl>
    implements _$$PostsLoadingStateImplCopyWith<$Res> {
  __$$PostsLoadingStateImplCopyWithImpl(_$PostsLoadingStateImpl _value,
      $Res Function(_$PostsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostsLoadingStateImpl implements PostsLoadingState {
  const _$PostsLoadingStateImpl();

  @override
  String toString() {
    return 'PostsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function() loading,
    required TResult Function(String error) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? failed,
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
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsFailedState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsLoadedState value)? loaded,
    TResult? Function(PostsLoadingState value)? loading,
    TResult? Function(PostsFailedState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostsLoadingState implements PostsState {
  const factory PostsLoadingState() = _$PostsLoadingStateImpl;
}

/// @nodoc
abstract class _$$PostsFailedStateImplCopyWith<$Res> {
  factory _$$PostsFailedStateImplCopyWith(_$PostsFailedStateImpl value,
          $Res Function(_$PostsFailedStateImpl) then) =
      __$$PostsFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PostsFailedStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsFailedStateImpl>
    implements _$$PostsFailedStateImplCopyWith<$Res> {
  __$$PostsFailedStateImplCopyWithImpl(_$PostsFailedStateImpl _value,
      $Res Function(_$PostsFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PostsFailedStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostsFailedStateImpl implements PostsFailedState {
  const _$PostsFailedStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PostsState.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsFailedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsFailedStateImplCopyWith<_$PostsFailedStateImpl> get copyWith =>
      __$$PostsFailedStateImplCopyWithImpl<_$PostsFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function() loading,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsLoadedState value)? loaded,
    TResult? Function(PostsLoadingState value)? loading,
    TResult? Function(PostsFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PostsFailedState implements PostsState {
  const factory PostsFailedState({required final String error}) =
      _$PostsFailedStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$PostsFailedStateImplCopyWith<_$PostsFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
