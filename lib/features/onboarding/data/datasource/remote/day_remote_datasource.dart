import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@singleton
class DayRemoteDataSource {
  final List<Map<String, dynamic>> _jsonData = [
    {'name': 'Sunday', 'value': 'SU'},
    {'name': 'Monday', 'value': 'M'},
    {'name': 'Tuesday', 'value': 'T'},
    {'name': 'Wednesday', 'value': 'W'},
    {'name': 'Thursday', 'value': 'TH'},
    {'name': 'Friday', 'value': 'F'},
    {'name': 'Saturday', 'value': 'S'},
  ];

  Future<List<DayResponse>> getTopics() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(DayResponse.fromJson).toList();
  }
}
