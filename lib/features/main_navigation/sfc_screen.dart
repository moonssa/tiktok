import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class StfScreen extends StatefulWidget {
  const StfScreen({super.key});

  @override
  State<StfScreen> createState() => _StfScreenState();
}

class _StfScreenState extends State<StfScreen> {
  int _clicks = 0;

  void _increase() {
    setState(() {
      _clicks += 1;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_clicks"),
            TextButton(
              onPressed: _increase,
              child: const Text(
                "+",
                style: TextStyle(fontSize: Sizes.size24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
