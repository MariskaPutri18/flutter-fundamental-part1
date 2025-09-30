import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // <<< Import ini wajib ditambahkan
import 'basic_widget/loading_cupertino.dart';
import 'basic_widget/fab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp diperlukan meskipun menggunakan widget Cupertino
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('My Increment App')),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Cupertino Button (Sekarang berfungsi karena ada import cupertino.dart)
                CupertinoButton(
                  child: const Text("Contoh Cupertino Button (Main App)"),
                  onPressed: () {
                    // ignore: avoid_print
                    print("Button ditekan!");
                  },
                  color: CupertinoColors.systemBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(height: 30),

                // Memanggil LoadingCupertino yang telah diimpor
                const Text("Contoh Widget yang Diimpor:", style: TextStyle(fontSize: 16)),
                const LoadingCupertino(), 
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
