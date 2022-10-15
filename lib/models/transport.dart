import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'category.dart';

part 'transport.freezed.dart';

part 'transport.g.dart';

@freezed
class Transport with _$Transport {
  factory Transport({
    required String park,
    required String type,
    required String name,
    required CarCategory category,
    required String number,
    @JsonKey(name: 'driver_id') required String driverId,
    required String id,
  }) = _Transport;

  factory Transport.fromJson(Map<String, Object?> json) =>
      _$TransportFromJson(json);
}