import 'package:dispatcher_polus/models/dateTime_converter.dart';
import 'package:dispatcher_polus/models/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required String id,
    required String description,
    @JsonKey(name: "customer_id") required String customerId,
    @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp) required DateTime begin,
    @JsonKey(fromJson: DateTimeConverter.timestampToDateTime, toJson: DateTimeConverter.dateTimeToTimestamp) required DateTime end,
    @JsonKey(name: "transport_id") required String transportId,
    // destination point
    @JsonEnum() @Default(OrderStatus.processing) OrderStatus status,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
