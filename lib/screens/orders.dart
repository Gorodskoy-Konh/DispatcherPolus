import 'dart:convert';

import 'package:dispatcher_polus/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/order.dart';
import '../ui_components/app_bar.dart';
import '../ui_components/order_tile.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final channel = WebSocketChannel.connect(
    Uri.parse('ws://192.168.137.1:9000'),
  );

  @override
  void initState() {
    super.initState();
    channel.sink.add('{"type": "Orders"}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyAppBar(),
          StreamBuilder(
              stream: channel.stream,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  default:
                    if (!snapshot.hasData) {
                      return const Text(kNoData);
                    } else {
                      final List json = jsonDecode(snapshot.data);
                      List<Order> orders =
                          json.map((e) => Order.fromJson(e)).toList();
                      return Expanded(
                        child: Table(
                          children: List.generate(orders.length + 1, (id) {
                            return OrderTableRow.buildTableRow(id - 1, orders,
                                () {
                              channel.sink.add(jsonEncode({
                                "type": "Orders",
                                "data": orders[id - 1].toJson(),
                              }));
                            });
                          }),
                        ),
                      );
                    }
                }
              })
        ],
      ),
    );
  }
}
