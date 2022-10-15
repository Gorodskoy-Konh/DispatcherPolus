import 'dart:convert';

import 'package:dispatcher_polus/models/transport.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../constants/strings.dart';
import '../models/order.dart';
import '../ui_components/app_bar.dart';
import '../ui_components/transport_tile.dart';

class Transports extends StatefulWidget {
  const Transports({Key? key}) : super(key: key);

  @override
  State<Transports> createState() => _TransportsState();
}

class _TransportsState extends State<Transports> {
  final channel = WebSocketChannel.connect(
    Uri.parse('ws://192.168.137.1:9000'),
  );

  @override
  void initState() {
    super.initState();
    channel.sink.add('{"type": "Transports"}');
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
                      List<Transport> transports =
                      json.map((e) => Transport.fromJson(e)).toList();
                      return Expanded(
                        child: Table(
                          children: List.generate(transports.length + 1, (id) {
                            return TransportTableRow.buildTableRow(id - 1, transports,
                                    () {
                                  channel.sink.add(jsonEncode({
                                    "type": "Transports",
                                    "data": transports[id - 1].toJson(),
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
