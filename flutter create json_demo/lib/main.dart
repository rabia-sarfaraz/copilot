import 'dart:convert';
import 'package:flutter/material.dart';
import 'user_manual.dart';
import 'user_auto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JSON Encode/Decode Demo",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const JsonDemoScreen(),
    );
  }
}

class JsonDemoScreen extends StatefulWidget {
  const JsonDemoScreen({super.key});

  @override
  State<JsonDemoScreen> createState() => _JsonDemoScreenState();
}

class _JsonDemoScreenState extends State<JsonDemoScreen> {
  String _output = "Press a button to see result";

  // Sample JSON string
  final String sampleJson =
      '{"id": 1, "name": "Rabia", "email": "rabia@example.com"}';

  // Sample Objects
  final UserManual manualUser = UserManual(
    id: 2,
    name: "Sara",
    email: "sara@example.com",
  );

  final UserAuto autoUser = UserAuto(
    id: 3,
    name: "Ayesha",
    email: "ayesha@example.com",
  );

  // Manual Decode
  void _manualDecode() {
    Map<String, dynamic> jsonMap = jsonDecode(sampleJson);
    UserManual user = UserManual.fromJson(jsonMap);
    print("Manual Decode → $user");
    setState(() => _output = "Manual Decode:\n$user");
  }

  // Manual Encode
  void _manualEncode() {
    String encoded = jsonEncode(manualUser.toJson());
    print("Manual Encode → $encoded");
    setState(() => _output = "Manual Encode:\n$encoded");
  }

  // Auto Decode
  void _autoDecode() {
    Map<String, dynamic> jsonMap = jsonDecode(sampleJson);
    UserAuto user = UserAuto.fromJson(jsonMap);
    print("Auto Decode → $user");
    setState(() => _output = "Auto Decode:\n$user");
  }

  // Auto Encode
  void _autoEncode() {
    String encoded = jsonEncode(autoUser.toJson());
    print("Auto Encode → $encoded");
    setState(() => _output = "Auto Encode:\n$encoded");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("JSON Serialization Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Buttons Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _manualDecode,
                  child: const Text("Decode"),
                ),
                ElevatedButton(
                  onPressed: _manualEncode,
                  child: const Text("Encode"),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Buttons Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _autoDecode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("G-Decode"),
                ),
                ElevatedButton(
                  onPressed: _autoEncode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("G-Encode"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Output Area
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  child: Text(_output, style: const TextStyle(fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
