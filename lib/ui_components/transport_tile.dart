import 'package:dispatcher_polus/constants/strings.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/transport.dart';

class TransportTableRow {
  static TableRow buildTableRow(int id, List<Transport> transports, VoidCallback callback) {
    return TableRow(
      decoration: id == -1
          ? const BoxDecoration(
        color: kYellow,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
      )
          : BoxDecoration(
        color: id % 2 == 1 ? Colors.grey[300] : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
      ),
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
