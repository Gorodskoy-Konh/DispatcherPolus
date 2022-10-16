import '../constants/strings.dart';

enum FilterByOrderStatus {
  complete(kComplete),
  confirmed_by_driver(kConfirmedByDriver),
  in_progress(kInProgress),
  driver_is_defined(kDriverIsDefined),
  driver_is_not_defined(kDriverIsNotDefined),
  processing(kProcessing),
  all(kAll);

  const FilterByOrderStatus(this.value);
  final String value;
}