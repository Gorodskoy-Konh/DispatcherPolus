// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<CarCategory> get category => throw _privateConstructorUsedError;
  int get monthHours => throw _privateConstructorUsedError;
  int get allHours => throw _privateConstructorUsedError;
  String get dailyTsId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {String name,
      String type,
      List<CarCategory> category,
      int monthHours,
      int allHours,
      String dailyTsId,
      String id});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? category = null,
    Object? monthHours = null,
    Object? allHours = null,
    Object? dailyTsId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CarCategory>,
      monthHours: null == monthHours
          ? _value.monthHours
          : monthHours // ignore: cast_nullable_to_non_nullable
              as int,
      allHours: null == allHours
          ? _value.allHours
          : allHours // ignore: cast_nullable_to_non_nullable
              as int,
      dailyTsId: null == dailyTsId
          ? _value.dailyTsId
          : dailyTsId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$_DriverCopyWith(_$_Driver value, $Res Function(_$_Driver) then) =
      __$$_DriverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      List<CarCategory> category,
      int monthHours,
      int allHours,
      String dailyTsId,
      String id});
}

/// @nodoc
class __$$_DriverCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$_Driver>
    implements _$$_DriverCopyWith<$Res> {
  __$$_DriverCopyWithImpl(_$_Driver _value, $Res Function(_$_Driver) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? category = null,
    Object? monthHours = null,
    Object? allHours = null,
    Object? dailyTsId = null,
    Object? id = null,
  }) {
    return _then(_$_Driver(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CarCategory>,
      monthHours: null == monthHours
          ? _value.monthHours
          : monthHours // ignore: cast_nullable_to_non_nullable
              as int,
      allHours: null == allHours
          ? _value.allHours
          : allHours // ignore: cast_nullable_to_non_nullable
              as int,
      dailyTsId: null == dailyTsId
          ? _value.dailyTsId
          : dailyTsId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver with DiagnosticableTreeMixin implements _Driver {
  _$_Driver(
      {required this.name,
      required this.type,
      required final List<CarCategory> category,
      required this.monthHours,
      required this.allHours,
      required this.dailyTsId,
      required this.id})
      : _category = category;

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$$_DriverFromJson(json);

  @override
  final String name;
  @override
  final String type;
  final List<CarCategory> _category;
  @override
  List<CarCategory> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final int monthHours;
  @override
  final int allHours;
  @override
  final String dailyTsId;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Driver(name: $name, type: $type, category: $category, monthHours: $monthHours, allHours: $allHours, dailyTsId: $dailyTsId, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Driver'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('monthHours', monthHours))
      ..add(DiagnosticsProperty('allHours', allHours))
      ..add(DiagnosticsProperty('dailyTsId', dailyTsId))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Driver &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.monthHours, monthHours) ||
                other.monthHours == monthHours) &&
            (identical(other.allHours, allHours) ||
                other.allHours == allHours) &&
            (identical(other.dailyTsId, dailyTsId) ||
                other.dailyTsId == dailyTsId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      const DeepCollectionEquality().hash(_category),
      monthHours,
      allHours,
      dailyTsId,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      __$$_DriverCopyWithImpl<_$_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  factory _Driver(
      {required final String name,
      required final String type,
      required final List<CarCategory> category,
      required final int monthHours,
      required final int allHours,
      required final String dailyTsId,
      required final String id}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  List<CarCategory> get category;
  @override
  int get monthHours;
  @override
  int get allHours;
  @override
  String get dailyTsId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      throw _privateConstructorUsedError;
}
