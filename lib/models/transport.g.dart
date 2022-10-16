// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transport _$$_TransportFromJson(Map<String, dynamic> json) => _$_Transport(
      park: json['park'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      category: $enumDecode(_$CarCategoryEnumMap, json['category']),
      number: json['number'] as String,
      driverId: json['driver_id'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TransportToJson(_$_Transport instance) =>
    <String, dynamic>{
      'park': instance.park,
      'type': instance.type,
      'name': instance.name,
      'category': _$CarCategoryEnumMap[instance.category]!,
      'number': instance.number,
      'driver_id': instance.driverId,
      'id': instance.id,
    };

const _$CarCategoryEnumMap = {
  CarCategory.autotower: 'autotower',
  CarCategory.crane: 'crane',
  CarCategory.loader: 'loader',
};
