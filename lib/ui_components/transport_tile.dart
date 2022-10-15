import 'package:dispatcher_polus/constants/strings.dart';
import 'package:dispatcher_polus/models/order_status.dart';
import 'package:flutter/material.dart';

import '../models/order.dart';
import '../models/transport.dart';

class TransportTableRow {
  static TableRow buildTableRow(int id, List<Transport> transports, VoidCallback callback) {
    return TableRow(
      decoration: BoxDecoration(),
      children: [
        // Park
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(id >= 0 ? transports[id].park : kTransportPark),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(id >= 0 ? transports[id].type : kTransportType),
        ),
        // Description
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(id >= 0 ? transports[id].name : kTransportName),
        ),
        // Customer
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(id >= 0 ? transports[id].number : kTransportNumber),
        ),
        // Transport
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(id >= 0 ? transports[id].driverId : kTransportDriver),
        ),
      ],
    );
  }
}
