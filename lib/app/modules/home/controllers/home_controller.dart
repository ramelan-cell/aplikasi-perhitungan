import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController nilaiSatu;
  late TextEditingController nilaiDua;
  final hasil = 0.obs;

  void tambah() {
    if (nilaiSatu.text != '' && nilaiDua.text != '') {
      hasil.value = int.parse(nilaiSatu.text) + int.parse(nilaiDua.text);
    } else {
      print('kolom input tidak boleh kosong !');
    }
  }

  void kurang() {
    if (nilaiSatu.text != '' && nilaiDua.text != '') {
      hasil.value = int.parse(nilaiSatu.text) - int.parse(nilaiDua.text);
    } else {
      print('kolom input tidak boleh kosong !');
    }
  }

  void kali() {
    if (nilaiSatu.text != '' && nilaiDua.text != '') {
      hasil.value = int.parse(nilaiSatu.text) * int.parse(nilaiDua.text);
    } else {
      print('kolom input tidak boleh kosong !');
    }
  }

  void bagi() {
    if (nilaiSatu.text != '' && nilaiDua.text != '') {
      hasil.value = int.parse(nilaiSatu.text) ~/ int.parse(nilaiDua.text);
    } else {
      print('kolom input tidak boleh kosong !');
    }
  }

  @override
  void onInit() {
    nilaiSatu = TextEditingController();
    nilaiDua = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nilaiSatu.dispose();
    nilaiDua.dispose();
    super.onClose();
  }
}
