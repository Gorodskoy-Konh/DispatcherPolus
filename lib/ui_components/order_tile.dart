import 'package:dispatcher_polus/constants/colors.dart';
import 'package:dispatcher_polus/constants/strings.dart';
import 'package:dispatcher_polus/models/order_status.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/numbers.dart';
import '../models/order.dart';

class OrderTableRow {
  static TableRow buildTableRow(
      int id, List<Order> orders, VoidCallback callback) {
    return TableRow(
      decoration: id == -1
          ? BoxDecoration(
              color: kYellow,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              shape: BoxShape.rectangle,
            )
          : BoxDecoration(
              color: id % 2 == 1 ? Colors.grey[300] : null,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              shape: BoxShape.rectangle,
            ),
      children: [
        // Working interval
        Padding(
          padding: const EdgeInsets.all(kTableRowPadding),
          child: Text(id >= 0
              ? DateFormat.yMMMd('ru').format(orders[id].begin)
              : kBegin),
        ),
        Padding(
          padding: const EdgeInsets.all(kTableRowPadding),
          child: Text(
              id >= 0 ? DateFormat.yMMMd('ru').format(orders[id].end) : kEnd),
        ),
        // Description
        Padding(
          padding: const EdgeInsets.all(kTableRowPadding),
          child: Text(id >= 0 ? orders[id].description : kDescription),
        ),
        // Customer
        Padding(
          padding: const EdgeInsets.all(kTableRowPadding),
          child: Text(id >= 0 ? orders[id].customerId : kCustomer),
        ),
        // Transport
        Padding(
          padding: const EdgeInsets.all(kTableRowPadding),
          child: Text(id >= 0 ? orders[id].transportId : kTransport),
        ),
        // Status
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kTableRowPadding),
          child: id >= 0
              ? DropdownButton(
                  alignment: Alignment.centerLeft,
                  underline: SizedBox(),
                  value: orders[id].status,
                  isExpanded: true,
                  items: OrderStatus.values
                      .map<DropdownMenuItem<OrderStatus>>((OrderStatus value) {
                    return DropdownMenuItem<OrderStatus>(
                      value: value,
                      child: Text(value.description),
                    );
                  }).toList(),
                  onChanged: (OrderStatus? selectedValue) {
                    orders[id] = orders[id].copyWith(status: selectedValue!);
                    callback();
                  })
              : Text(kStatus),
        ),
      ],
    );
  }
}

// class OrderTile extends StatelessWidget {
//   const OrderTile({Key? key, this.order}) : super(key: key);
//   final Order? order;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // Working interval
//         Text(
//           order != null
//               ? '${order!.begin.toString()}-\n${order!.end.toString()}'
//               : kWorkingInterval,
//           textAlign: TextAlign.left,
//         ),
//         // Description
//         Text(
//           order != null ? order!.description : kDescription,
//           textAlign: TextAlign.left,
//         ),
//         // Customer
//         Text(
//           order != null ? order!.customerId : kCustomer,
//           textAlign: TextAlign.left,
//         ),
//         // Transport
//         Text(
//           order != null ? order!.transportId : kTransport,
//           textAlign: TextAlign.left,
//         ),
//         // Status
//         Text(
//           order != null ? order!.status.description : kStatus,
//           textAlign: TextAlign.left,
//         ),
//       ],
//     );
//   }
// }
