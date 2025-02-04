import 'package:calmly/features/onboarding/onboarding.dart';

abstract class DayRepository {
  Future<List<DayData>> getDays();
}
