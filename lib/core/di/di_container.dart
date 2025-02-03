import 'package:calmly/core/di/di_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDi() async {
  await Hive.initFlutter();
  final box = await Hive.openBox<String>('settings');

  getIt
    ..registerSingleton<Box<String>>(box)
    ..init();
}
