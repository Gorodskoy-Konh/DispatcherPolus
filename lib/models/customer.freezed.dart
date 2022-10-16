// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  List<String> get completedOrderIds => throw _privateConstructorUsedError;
  List<String> get futureOrderIds => throw _privateConstructorUsedError;
  List<String> get currentOrderIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String id,
      String login,
      String password,
      String fullName,
      List<String> completedOrderIds,
      List<String> futureOrderIds,
      List<String> currentOrderIds});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? password = null,
    Object? fullName = null,
    Object? completedOrderIds = null,
    Object? futureOrderIds = null,
    Object? currentOrderIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      completedOrderIds: null == completedOrderIds
          ? _value.completedOrderIds
          : completedOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      futureOrderIds: null == futureOrderIds
          ? _value.futureOrderIds
          : futureOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentOrderIds: null == currentOrderIds
          ? _value.currentOrderIds
          : currentOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String login,
      String password,
      String fullName,
      List<String> completedOrderIds,
      List<String> futureOrderIds,
      List<String> currentOrderIds});
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$_Customer>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? password = null,
    Object? fullName = null,
    Object? completedOrderIds = null,
    Object? futureOrderIds = null,
    Object? currentOrderIds = null,
  }) {
    return _then(_$_Customer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      completedOrderIds: null == completedOrderIds
          ? _value._completedOrderIds
          : completedOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      futureOrderIds: null == futureOrderIds
          ? _value._futureOrderIds
          : futureOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentOrderIds: null == currentOrderIds
          ? _value._currentOrderIds
          : currentOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  _$_Customer(
      {required this.id,
      required this.login,
      required this.password,
      required this.fullName,
      required final List<String> completedOrderIds,
      required final List<String> futureOrderIds,
      required final List<String> currentOrderIds})
      : _completedOrderIds = completedOrderIds,
        _futureOrderIds = futureOrderIds,
        _currentOrderIds = currentOrderIds;

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String login;
  @override
  final String password;
  @override
  final String fullName;
  final List<String> _completedOrderIds;
  @override
  List<String> get completedOrderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedOrderIds);
  }

  final List<String> _futureOrderIds;
  @override
  List<String> get futureOrderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futureOrderIds);
  }

  final List<String> _currentOrderIds;
  @override
  List<String> get currentOrderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentOrderIds);
  }

  @override
  String toString() {
    return 'Customer(id: $id, login: $login, password: $password, fullName: $fullName, completedOrderIds: $completedOrderIds, futureOrderIds: $futureOrderIds, currentOrderIds: $currentOrderIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality()
                .equals(other._completedOrderIds, _completedOrderIds) &&
            const DeepCollectionEquality()
                .equals(other._futureOrderIds, _futureOrderIds) &&
            const DeepCollectionEquality()
                .equals(other._currentOrderIds, _currentOrderIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      login,
      password,
      fullName,
      const DeepCollectionEquality().hash(_completedOrderIds),
      const DeepCollectionEquality().hash(_futureOrderIds),
      const DeepCollectionEquality().hash(_currentOrderIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  factory _Customer(
      {required final String id,
      required final String login,
      required final String password,
      required final String fullName,
      required final List<String> completedOrderIds,
      required final List<String> futureOrderIds,
      required final List<String> currentOrderIds}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id;
  @override
  String get login;
  @override
  String get password;
  @override
  String get fullName;
  @override
  List<String> get completedOrderIds;
  @override
  List<String> get futureOrderIds;
  @override
  List<String> get currentOrderIds;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
