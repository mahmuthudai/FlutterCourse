/* Örnek 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın.

Örnek 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın. */

import 'dart:io';

void main(List<String> args) {
  //CEVAP 1
  print("Birinci notu giriniz");
  int? not1 = int.parse(stdin.readLineSync()!);
  print("İkinci notu giriniz");
  int? not2 = int.parse(stdin.readLineSync()!);
  double ort = (not1 + not2) / 2;
  print("Ortalama Not: $ort");

  //CEVAP 2
  print("Fiyatı giriniz");
  int? fiyat = int.parse(stdin.readLineSync()!);
  double sonFiyat = fiyat + (fiyat * 18) / 100;
  print("KDV dahil son fiyat: $sonFiyat");
}
