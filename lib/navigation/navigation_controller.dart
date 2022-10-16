import 'package:dispatcher_polus/navigation/routes.dart';
import 'package:dispatcher_polus/screens/orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/transports.dart';

class NavigationController {
  static final _controller = NavigationController._();

  factory NavigationController() => _controller;

  final _key = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get key => _key;

  PageRouteBuilder<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.orders:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const Orders(),
        );
      case Routes.transports:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const Transports(),
        );
      default:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const Orders(),
        );
    }
  }

  Future<Object?>? pushNamed(String page, {Object? arguments}) =>
      _key.currentState?.pushNamed(page, arguments: arguments);

  Future<Object?>? pushToOrdersPage() =>
      _key.currentState?.pushReplacementNamed(Routes.orders);

  Future<Object?>? pushToTransportsPage() =>
      _key.currentState?.pushNamed(Routes.transports);

  void pop([Object? result]) {
    _key.currentState?.pop(result);
  }

  NavigationController._();
}