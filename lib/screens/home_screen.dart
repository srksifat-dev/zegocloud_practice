import 'package:flutter/material.dart';
import 'package:zegocloud_practice/screens/call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController callIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Zego Cloud")),
      body: Row(
        children: [
          Expanded(
            child: TextField(
              controller: callIdController,
            ),
          ),
          FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CallScreen(callId: callIdController.text),
                  ),
                );
              },
              child: Text("Join Call"))
        ],
      ),
    );
  }
}
