// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  DateTime get begin => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: "transport_id")
  String get transportId =>
      throw _privateConstructorUsedError; // destination point
  @JsonEnum()
  OrderStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String description,
      @JsonKey(name: "customer_id")
          String customerId,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          DateTime begin,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          DateTime end,
      @JsonKey(name: "transport_id")
          String transportId,
      @JsonEnum()
          OrderStatus status});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? customerId = null,
    Object? begin = null,
    Object? end = null,
    Object? transportId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transportId: null == transportId
          ? _value.transportId
          : transportId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      @JsonKey(name: "customer_id")
          String customerId,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          DateTime begin,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          DateTime end,
      @JsonKey(name: "transport_id")
          String transportId,
      @JsonEnum()
          OrderStatus status});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? customerId = null,
    Object? begin = null,
    Object? end = null,
    Object? transportId = null,
    Object? status = null,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transportId: null == transportId
          ? _value.transportId
          : transportId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order(
      {required this.id,
      required this.description,
      @JsonKey(name: "customer_id")
          required this.customerId,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          required this.begin,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          required this.end,
      @JsonKey(name: "transport_id")
          required this.transportId,
      @JsonEnum()
          this.status = OrderStatus.processing});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  @JsonKey(name: "customer_id")
  final String customerId;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  final DateTime begin;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  final DateTime end;
  @override
  @JsonKey(name: "transport_id")
  final String transportId;
// destination point
  @override
  @JsonKey()
  @JsonEnum()
  final OrderStatus status;

  @override
  String toString() {
    return 'Order(id: $id, description: $description, customerId: $customerId, begin: $begin, end: $end, transportId: $transportId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.transportId, transportId) ||
                other.transportId == transportId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, customerId,
      begin, end, transportId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final String id,
      required final String description,
      @JsonKey(name: "customer_id")
          required final String customerId,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          required final DateTime begin,
      @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp)
          required final DateTime end,
      @JsonKey(name: "transport_id")
          required final String transportId,
      @JsonEnum()
          final OrderStatus status}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  @JsonKey(name: "customer_id")
  String get customerId;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  DateTime get begin;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.timestampToDateTime,
      toJson: DateTimeConverter.dateTimeToTimestamp)
  DateTime get end;
  @override
  @JsonKey(name: "transport_id")
  String get transportId;
  @override // destination point
  @JsonEnum()
  OrderStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
