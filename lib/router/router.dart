export 'router.gr.dart';

import 'package:auto_route/auto_route.dart';
import 'package:riverpod_performance_test/views/pages/home_page.dart';
import 'package:riverpod_performance_test/views/pages/problem_page.dart';

@MaterialAutoRouter(
    // generateNavigationHelperExtension: true,
    // ignore: always_specify_types
    routes: <AutoRoute>[
      AutoRoute<dynamic>(
        path: '/',
        initial: true,
        page: HomePage,
        fullscreenDialog: true,
      ),
      AutoRoute<dynamic>(
        path: 'problem',
        page: ProblemPage,
        fullscreenDialog: true,
      ),
    ])
class $AppRouter {}
