import 'dart:developer';
import 'package:dio/dio.dart';

// Eventbrite API Key'inizi buraya yerleştirin
const String apiKey = 'XIGKSRBKTXEMEHQLWXCI';

// Dio nesnesini oluşturuyoruz
final dio = Dio(
  BaseOptions(
    baseUrl: 'https://www.eventbriteapi.com/v3/',
    headers: {
      'Authorization': 'Bearer $apiKey',
    },
  ),
);

Future<void> fetchEvents() async {
  try {
    // Etkinlikleri aramak için doğru endpoint ve parametreler
    final response = await dio.get(
      'events/search/', // 'events/' yerine 'events/search/' kullanılıyor
      queryParameters: {
        'location.address': 'Istanbul', // Bu parametre doğru olmalı
        'sort_by': 'date',
        'page': 1, // Sayfalama ekleyebilirsiniz
        'expand': 'venue', // Opsiyonel: Yer bilgisi de ekleyebilirsiniz
      },
    );

    if (response.statusCode == 200) {
      log('Etkinlik Verileri: ${response.data}');
    } else {
      log('Başarısız: ${response.statusCode}');
    }
  } on DioException catch (e) {
    log('Hata: ${e.response?.statusCode} - ${e.message}');
  }
}
