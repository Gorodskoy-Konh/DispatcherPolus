// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      description: json['description'] as String,
      customerId: json['customer_id'] as String,
      begin: DateTimeConverter.timestampToDateTime(json['begin'] as int),
      end: DateTimeConverter.timestampToDateTime(json['end'] as int),
      transportId: json['transport_id'] as String,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.processing,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'customer_id': instance.customerId,
      'begin': DateTimeConverter.dateTimeToTimestamp(instance.begin),
      'end': DateTimeConverter.dateTimeToTimestamp(instance.end),
      'transport_id': instance.transportId,
      'status': _$OrderStatusEnumMap[instance.status]!,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.complete: 'complete',
  OrderStatus.confirmed_by_driver: 'confirmed_by_driver',
  OrderStatus.in_progress: 'in_progress',
  OrderStatus.driver_is_defined: 'driver_is_defined',
  OrderStatus.driver_is_not_defined: 'driver_is_not_defined',
  OrderStatus.processing: 'processing',
};
