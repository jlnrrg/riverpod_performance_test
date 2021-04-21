// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

import '../views/pages/home_page.dart' as _i2;
import '../views/pages/problem_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomePageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i2.HomePage(), fullscreenDialog: true);
    },
    ProblemPageRoute.name: (entry) {
      var args = entry.routeData
          .argsAs<ProblemPageRouteArgs>(orElse: () => ProblemPageRouteArgs());
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.ProblemPage(
              key: args.key,
              initialDanceStyles: args.initialDanceStyles,
              doneCallback: args.doneCallback),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(ProblemPageRoute.name, path: 'problem')
      ];
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

class ProblemPageRoute extends _i1.PageRouteInfo<ProblemPageRouteArgs> {
  ProblemPageRoute(
      {_i4.Key? key,
      Iterable<String>? initialDanceStyles,
      dynamic Function(List<String>)? doneCallback})
      : super(name,
            path: 'problem',
            args: ProblemPageRouteArgs(
                key: key,
                initialDanceStyles: initialDanceStyles,
                doneCallback: doneCallback));

  static const String name = 'ProblemPageRoute';
}

class ProblemPageRouteArgs {
  const ProblemPageRouteArgs(
      {this.key, this.initialDanceStyles, this.doneCallback});

  final _i4.Key? key;

  final Iterable<String>? initialDanceStyles;

  final dynamic Function(List<String>)? doneCallback;
}
