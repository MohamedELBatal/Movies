// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrowseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrowse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrowse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrowse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrowseEvent value) getBrowse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrowseEvent value)? getBrowse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrowseEvent value)? getBrowse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseEventCopyWith<$Res> {
  factory $BrowseEventCopyWith(
          BrowseEvent value, $Res Function(BrowseEvent) then) =
      _$BrowseEventCopyWithImpl<$Res, BrowseEvent>;
}

/// @nodoc
class _$BrowseEventCopyWithImpl<$Res, $Val extends BrowseEvent>
    implements $BrowseEventCopyWith<$Res> {
  _$BrowseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BrowseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BrowseEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrowse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrowse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrowse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrowseEvent value) getBrowse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrowseEvent value)? getBrowse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrowseEvent value)? getBrowse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BrowseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetBrowseEventImplCopyWith<$Res> {
  factory _$$GetBrowseEventImplCopyWith(_$GetBrowseEventImpl value,
          $Res Function(_$GetBrowseEventImpl) then) =
      __$$GetBrowseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrowseEventImplCopyWithImpl<$Res>
    extends _$BrowseEventCopyWithImpl<$Res, _$GetBrowseEventImpl>
    implements _$$GetBrowseEventImplCopyWith<$Res> {
  __$$GetBrowseEventImplCopyWithImpl(
      _$GetBrowseEventImpl _value, $Res Function(_$GetBrowseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrowseEventImpl implements GetBrowseEvent {
  const _$GetBrowseEventImpl();

  @override
  String toString() {
    return 'BrowseEvent.getBrowse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrowseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getBrowse,
  }) {
    return getBrowse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getBrowse,
  }) {
    return getBrowse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getBrowse,
    required TResult orElse(),
  }) {
    if (getBrowse != null) {
      return getBrowse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetBrowseEvent value) getBrowse,
  }) {
    return getBrowse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetBrowseEvent value)? getBrowse,
  }) {
    return getBrowse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetBrowseEvent value)? getBrowse,
    required TResult orElse(),
  }) {
    if (getBrowse != null) {
      return getBrowse(this);
    }
    return orElse();
  }
}

abstract class GetBrowseEvent implements BrowseEvent {
  const factory GetBrowseEvent() = _$GetBrowseEventImpl;
}

/// @nodoc
mixin _$BrowseState {
  RequestStatus get getBrowseStatus => throw _privateConstructorUsedError;
  BrowseModel? get browseModel => throw _privateConstructorUsedError;
  Failures? get browseFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrowseStateCopyWith<BrowseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseStateCopyWith<$Res> {
  factory $BrowseStateCopyWith(
          BrowseState value, $Res Function(BrowseState) then) =
      _$BrowseStateCopyWithImpl<$Res, BrowseState>;
  @useResult
  $Res call(
      {RequestStatus getBrowseStatus,
      BrowseModel? browseModel,
      Failures? browseFailure});
}

/// @nodoc
class _$BrowseStateCopyWithImpl<$Res, $Val extends BrowseState>
    implements $BrowseStateCopyWith<$Res> {
  _$BrowseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrowseStatus = null,
    Object? browseModel = freezed,
    Object? browseFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getBrowseStatus: null == getBrowseStatus
          ? _value.getBrowseStatus
          : getBrowseStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      browseModel: freezed == browseModel
          ? _value.browseModel
          : browseModel // ignore: cast_nullable_to_non_nullable
              as BrowseModel?,
      browseFailure: freezed == browseFailure
          ? _value.browseFailure
          : browseFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrowseStateImplCopyWith<$Res>
    implements $BrowseStateCopyWith<$Res> {
  factory _$$BrowseStateImplCopyWith(
          _$BrowseStateImpl value, $Res Function(_$BrowseStateImpl) then) =
      __$$BrowseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getBrowseStatus,
      BrowseModel? browseModel,
      Failures? browseFailure});
}

/// @nodoc
class __$$BrowseStateImplCopyWithImpl<$Res>
    extends _$BrowseStateCopyWithImpl<$Res, _$BrowseStateImpl>
    implements _$$BrowseStateImplCopyWith<$Res> {
  __$$BrowseStateImplCopyWithImpl(
      _$BrowseStateImpl _value, $Res Function(_$BrowseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBrowseStatus = null,
    Object? browseModel = freezed,
    Object? browseFailure = freezed,
  }) {
    return _then(_$BrowseStateImpl(
      getBrowseStatus: null == getBrowseStatus
          ? _value.getBrowseStatus
          : getBrowseStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      browseModel: freezed == browseModel
          ? _value.browseModel
          : browseModel // ignore: cast_nullable_to_non_nullable
              as BrowseModel?,
      browseFailure: freezed == browseFailure
          ? _value.browseFailure
          : browseFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$BrowseStateImpl implements _BrowseState {
  const _$BrowseStateImpl(
      {this.getBrowseStatus = RequestStatus.init,
      this.browseModel,
      this.browseFailure});

  @override
  @JsonKey()
  final RequestStatus getBrowseStatus;
  @override
  final BrowseModel? browseModel;
  @override
  final Failures? browseFailure;

  @override
  String toString() {
    return 'BrowseState(getBrowseStatus: $getBrowseStatus, browseModel: $browseModel, browseFailure: $browseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrowseStateImpl &&
            (identical(other.getBrowseStatus, getBrowseStatus) ||
                other.getBrowseStatus == getBrowseStatus) &&
            (identical(other.browseModel, browseModel) ||
                other.browseModel == browseModel) &&
            (identical(other.browseFailure, browseFailure) ||
                other.browseFailure == browseFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getBrowseStatus, browseModel, browseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrowseStateImplCopyWith<_$BrowseStateImpl> get copyWith =>
      __$$BrowseStateImplCopyWithImpl<_$BrowseStateImpl>(this, _$identity);
}

abstract class _BrowseState implements BrowseState {
  const factory _BrowseState(
      {final RequestStatus getBrowseStatus,
      final BrowseModel? browseModel,
      final Failures? browseFailure}) = _$BrowseStateImpl;

  @override
  RequestStatus get getBrowseStatus;
  @override
  BrowseModel? get browseModel;
  @override
  Failures? get browseFailure;
  @override
  @JsonKey(ignore: true)
  _$$BrowseStateImplCopyWith<_$BrowseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
