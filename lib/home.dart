import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    void _showDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(
                "Alert dialog",
              ),
              content: const Text(
                "this is an alert dialog",
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "close",
                    )),
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "dialog box",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showDialog(context),
          child: const Text(
            "show alert box",
          ),
        ),
      ),
    );
  }
}
