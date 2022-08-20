import '../Screens/fab_Screens/add_screen.dart';
import '../Screens/fab_Screens/camera_screen.dart';
import '../Screens/fab_Screens/delete_screen.dart';
import '../Screens/fab_Screens/payment_screen.dart';
import 'package:flutter/material.dart';

import '../Screens/home_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'Flutter Draggable FAB'),
        );

      case '/add':
        return MaterialPageRoute(
          builder: (_) => const AddScreen(title: 'Add Screen'),
        );

      case '/camera':
        return MaterialPageRoute(
          builder: (_) => const CameraScreen(title: 'Camera Screen'),
        );
      case '/payment':
        return MaterialPageRoute(
          builder: (_) => const PaymentScreen(title: 'Payment Screene'),
        );
      case '/delete':
        return MaterialPageRoute(
          builder: (_) => const DeleteScreen(title: 'Delete Screen'),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
