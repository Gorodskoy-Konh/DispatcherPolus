// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String,
      completedOrderIds: (json['completedOrderIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      futureOrderIds: (json['futureOrderIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      currentOrderIds: (json['currentOrderIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'password': instance.password,
      'fullName': instance.fullName,
      'completedOrderIds': instance.completedOrderIds,
      'futureOrderIds': instance.futureOrderIds,
      'currentOrderIds': instance.currentOrderIds,
    };
