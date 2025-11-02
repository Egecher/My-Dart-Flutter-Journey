# 📐 Vücut Kitle Endeksi (VKİ) Hesaplayıcısı

Bu proje, kullanıcının boy ve kilo bilgilerini alarak Vücut Kitle Endeksi (VKİ) değerini hesaplayan ve bu değere göre kullanıcının ağırlık durumunu (zayıf, normal, fazla kilolu vb.) belirleyen **mobil (Flutter)** bir uygulamadır.

## 🚀 Proje Hakkında

Vücut Kitle Endeksi (VKİ), bir kişinin ağırlığının boyunun karesine bölünmesiyle hesaplanır. Bu mobil uygulama, kullanıcı dostu bir arayüz ile hızlı ve kolay bir VKİ hesaplama deneyimi sunar.

## 📦 Kurulum

Bu Flutter uygulamasını çalıştırmak için yerel makinenizde aşağıdaki ön gereksinimlerin kurulu olması gerekir.

### Ön Gereksinimler

  * **[Flutter SDK](https://flutter.dev/docs/get-started/install)**: Uygulamanın çalışması için gereklidir.
  * **[Dart SDK](https://dart.dev/get-dart)**: Flutter ile birlikte gelir.
  * **Geliştirme Ortamı**: VS Code veya Android Studio gibi bir editör.
  * **Cihaz/Emülatör**: Uygulamayı test etmek için fiziksel bir cihaz veya sanal emülatör (Android/iOS).

### Projeyi Klonlama

Komut satırınızı (Terminal/Komut İstemi) açın ve aşağıdaki komutları çalıştırın:

```bash
# GitHub'dan projeyi indirin
git clone https://github.com/egecher/vucud_kitle_endeksi.git

# Proje dizinine girin
cd vucud_kitle_endeksi
```

## ⚙️ Kullanım

Uygulamayı bir emülatörde veya bağlı bir cihazda çalıştırın.

### VKİ Sınıflandırması

Uygulama, hesaplanan VKİ sonucunu aşağıdaki uluslararası kabul görmüş sınıflara göre yorumlar:

| VKİ Değeri | Durum |
| :--- | :--- |
| **\< 18.5** | Zayıf |
| **18.5 – 24.9** | Normal Kilolu |
| **25.0 – 29.9** | Fazla Kilolu |
| **30.0 – 34.9** | Obez (1. Derece) |
| **\> 35.0** | Morbid Obez (Yüksek Risk) |