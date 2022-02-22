import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Hitung'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: controller.nilaiSatu,
              decoration: InputDecoration(
                  labelText: "Masukan nilai satu",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.nilaiDua,
              decoration: InputDecoration(
                  labelText: "Masukan nilai dua",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.tambah();
                },
                child: Text('TAMBAH')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.kurang();
                },
                child: Text('KURANG')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.kali();
                },
                child: Text('KALI')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.bagi();
                },
                child: Text('BAGI')),
            SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  'Hasilnya adalah ${controller.hasil.value} ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
