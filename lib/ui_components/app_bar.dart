import 'package:dispatcher_polus/constants/strings.dart';
import 'package:dispatcher_polus/navigation/navigation_controller.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                NavigationController().pushToOrdersPage();
              },
              child: const Text(kOrders),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                NavigationController().pushToTransportsPage();
              },
              child: const Text(kTransports),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: const Text(kMap),
            ),
          ),
        ],
      ),
    );
  }
}
