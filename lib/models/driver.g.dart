// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Driver _$$_DriverFromJson(Map<String, dynamic> json) => _$_Driver(
      name: json['name'] as String,
      type: json['type'] as String,
      category: (json['category'] as List<dynamic>)
          .map((e) => $enumDecode(_$CarCategoryEnumMap, e))
          .toList(),
      monthHours: json['monthHours'] as int,
      allHours: json['allHours'] as int,
      dailyTsId: json['dailyTsId'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'category':
          instance.category.map((e) => _$CarCategoryEnumMap[e]!).toList(),
      'monthHours': instance.monthHours,
      'allHours': instance.allHours,
      'dailyTsId': instance.dailyTsId,
      'id': instance.id,
    };

const _$CarCategoryEnumMap = {
  CarCategory.autotower: 'autotower',
  CarCategory.crane: 'crane',
  CarCategory.loader: 'loader',
};
