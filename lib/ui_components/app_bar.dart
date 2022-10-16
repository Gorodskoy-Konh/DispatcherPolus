import 'package:dispatcher_polus/constants/colors.dart';
import 'package:dispatcher_polus/constants/strings.dart';
import 'package:dispatcher_polus/navigation/navigation_controller.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  final textStyle = const TextStyle(
    color: kOrange,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kYellowLight),
                foregroundColor: MaterialStateProperty.all(kYellowLight),
              ),
              onPressed: () {
                NavigationController().pushToOrdersPage();
              },
              child: Text(
                kOrders,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kYellowLight),
                foregroundColor: MaterialStateProperty.all(kYellowLight),
              ),
              onPressed: () {
                NavigationController().pushToTransportsPage();
              },
              child: Text(
                kTransports,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kYellowLight),
                foregroundColor: MaterialStateProperty.all(kYellowLight),
              ),
              onPressed: () {},
              child: Text(
                kMap,
                style: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
