import 'package:flutter/material.dart';
import 'package:responsiveapp/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
