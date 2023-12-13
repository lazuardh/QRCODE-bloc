import 'package:go_router/go_router.dart';
import 'package:qrcode_bloc/pages/error.dart';
import 'package:qrcode_bloc/pages/settings.dart';
import 'package:qrcode_bloc/routes/route_name.dart';

import '../pages/home.dart';

/// The route configuration.
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorPages(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => const HomePages(),
    ),
    GoRoute(
      path: '/settings',
      name: Routes.settings,
      builder: (context, state) => const Settings(),
    )
  ],
);
