import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemesanan_service_mobil/app/controllers/KendaraanController.dart';
import 'package:pemesanan_service_mobil/app/pages/main/history/ResultSearchHistoryService.dart';

class HistoryServicePage extends StatelessWidget {
  const HistoryServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _no_kt = TextEditingController(text: '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(
          color: Color(0xFF5D5D5D),
        ),
        title: const Text(
          "History Service",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _no_kt,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input No KT Kendaraan',
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  final connectivityResult =
                      await (Connectivity().checkConnectivity());
                  if (connectivityResult == ConnectivityResult.none) {
                    print("NO INTERNET");
                  } else {
                    KendaraanController().getKt(_no_kt.text);
                  }
                },
                child: Text('Cari'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.red),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
