import 'package:flutter/material.dart';

import '../components/main_view.dart';
import '../components/panel_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              PanelView(),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: MainView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
