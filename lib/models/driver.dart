import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'category.dart';

part 'driver.freezed.dart';

part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  factory Driver({
    required String name,
    required String type,
    required List<CarCategory> category,
    required int monthHours,
    required int allHours,
    required String dailyTsId,
    required String id,
  }) = _Driver;

  factory Driver.fromJson(Map<String, Object?> json) =>
      _$DriverFromJson(json);
}
