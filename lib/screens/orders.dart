import 'dart:convert';

import 'package:dispatcher_polus/components/filter_by_status_options.dart';
import 'package:dispatcher_polus/components/sort_options.dart';
import 'package:dispatcher_polus/constants/colors.dart';
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
  SortOption filterByTime = SortOption.beginTimeDescending;
  FilterByOrderStatus filterByStatus = FilterByOrderStatus.all;
  List<Order> orders = [];

  @override
  void initState() {
    super.initState();
    channel.sink.add('{"type": "Orders"}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const MyAppBar(),
          // filter section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // filter by time
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 0.5,
                        style: BorderStyle.solid,
                        color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(2000.0)),
                  ),
                ),
                child: DropdownButton(
                  elevation: 0,
                  focusColor: Colors.white,
                  underline: const SizedBox(),
                  value: filterByTime,
                  items: SortOption.values
                      .map<DropdownMenuItem<SortOption>>((SortOption value) {
                    return DropdownMenuItem<SortOption>(
                      value: value,
                      child: Text(value.value),
                    );
                  }).toList(),
                  onChanged: (selectedValue) {
                    setState(() => filterByTime = selectedValue!);
                    channel.sink.add('{"type":"Orders"}');
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 0.5,
                        style: BorderStyle.solid,
                        color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(2000.0),
                    ),
                  ),
                ),
                child: DropdownButton(
                  elevation: 0,
                  focusColor: Colors.white,
                  underline: const SizedBox(),
                  value: filterByStatus,
                  items: FilterByOrderStatus.values
                      .map<DropdownMenuItem<FilterByOrderStatus>>(
                          (FilterByOrderStatus value) {
                    return DropdownMenuItem<FilterByOrderStatus>(
                      value: value,
                      child: Text(value.value),
                    );
                  }).toList(),
                  onChanged: (selectedValue) {
                    setState(() => filterByStatus = selectedValue!);
                    channel.sink.add('{"type":"Orders"}');
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          StreamBuilder(
            stream: channel.stream,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        color: kYellow,
                      ));
                default:
                  if (!snapshot.hasData) {
                    return const Text(kNoData);
                  } else {
                    final List json = jsonDecode(snapshot.data);
                    orders = json.map((e) => Order.fromJson(e)).toList();
                    _filterByStatus();
                    _sortByTime();

                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 100),
                      child: Table(
                        children: List.generate(orders.length + 1, (id) {
                          return OrderTableRow.buildTableRow(id - 1, orders,
                              () {
                            channel.sink.add(
                              jsonEncode({
                                "type": "Orders",
                                "data": orders[id - 1].toJson(),
                              }),
                            );
                          });
                        }),
                      ),
                    );
                  }
              }
            },
          ),
        ],
      ),
    );
  }

  void _sortByTime() {
    switch (filterByTime) {
      case SortOption.beginTimeDescending:
        orders.sort((order1, order2) => order2.begin.compareTo(order1.begin));
        break;
      case SortOption.beginTimeAscending:
        orders.sort((order1, order2) => order1.begin.compareTo(order2.begin));
        break;
    }
  }

  void _filterByStatus() {
    if (filterByStatus != FilterByOrderStatus.all) {
      orders =
          orders.where((e) => e.status.name == filterByStatus.name).toList();
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
