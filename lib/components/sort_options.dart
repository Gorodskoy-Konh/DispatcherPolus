import 'package:dispatcher_polus/constants/strings.dart';

enum SortOption {
  beginTimeDescending(kBeginTimeDescending),
  beginTimeAscending(kBeginTimeAscending);

  const SortOption(this.value);
  final String value;
  
  
}