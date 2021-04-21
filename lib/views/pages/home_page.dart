import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_performance_test/router/router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: <Widget>[
      TextButton(
          onPressed: () => AutoRouter.of(context).push(ProblemPageRoute()),
          child: const Text('Select Page')),
    ])));
  }
}
