// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:calmly/core/theme/data/repository/theme_repository_impl.dart'
    as _i549;
import 'package:calmly/core/theme/theme.dart' as _i352;
import 'package:calmly/features/details/data/datasource/remote/audio_remote_data_source.dart'
    as _i513;
import 'package:calmly/features/details/data/repository/audio_repository_impl.dart'
    as _i353;
import 'package:calmly/features/details/domain/repository/audio_repository.dart'
    as _i136;
import 'package:calmly/features/details/domain/usecase/get_audio_responses_usecase.dart'
    as _i780;
import 'package:calmly/features/home/data/datasource/remote/course_remote_datasource.dart'
    as _i478;
import 'package:calmly/features/home/data/repository/course_repository_impl.dart'
    as _i38;
import 'package:calmly/features/home/domain/repository/course_repository.dart'
    as _i904;
import 'package:calmly/features/home/domain/usecase/get_recommended_courses_usecase.dart'
    as _i162;
import 'package:calmly/features/onboarding/data/datasource/remote/day_remote_datasource.dart'
    as _i953;
import 'package:calmly/features/onboarding/data/datasource/remote/topic_remote_datasource.dart'
    as _i673;
import 'package:calmly/features/onboarding/data/repository/day_repository_impl.dart'
    as _i1018;
import 'package:calmly/features/onboarding/data/repository/topic_repository_impl.dart'
    as _i4;
import 'package:calmly/features/onboarding/domain/usecase/get_day_usecase.dart'
    as _i506;
import 'package:calmly/features/onboarding/domain/usecase/get_topics_usecase.dart'
    as _i780;
import 'package:calmly/features/onboarding/onboarding.dart' as _i655;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i478.CourseRemoteDatasource>(
        () => _i478.CourseRemoteDatasource());
    gh.singleton<_i953.DayRemoteDataSource>(() => _i953.DayRemoteDataSource());
    gh.singleton<_i673.TopicRemoteDataSource>(
        () => _i673.TopicRemoteDataSource());
    gh.singleton<_i655.DayRepository>(
        () => _i1018.DayRepositoryImpl(gh<_i655.DayRemoteDataSource>()));
    gh.singleton<_i655.TopicRepository>(() => _i4.TopicRepositoryImpl(
        remoteDataSource: gh<_i655.TopicRemoteDataSource>()));
    gh.singleton<_i513.AudioRemoteDataSource>(
        () => _i513.AudioRemoteDataSourceImpl());
    gh.singleton<_i904.CourseRepository>(
        () => _i38.CourseRepositoryImpl(gh<_i478.CourseRemoteDatasource>()));
    gh.singleton<_i352.ThemeRepository>(
        () => _i549.ThemeRepositoryImpl(gh<_i986.Box<String>>()));
    gh.singleton<_i136.AudioRepository>(
        () => _i353.AudioRepositoryImpl(gh<_i513.AudioRemoteDataSource>()));
    gh.singleton<_i506.GetDayUsecase>(
        () => _i506.GetDayUsecase(gh<_i655.DayRepository>()));
    gh.singleton<_i780.GetAudioResponsesUsecase>(
        () => _i780.GetAudioResponsesUsecase(gh<_i136.AudioRepository>()));
    gh.singleton<_i780.GetTopicUsecase>(
        () => _i780.GetTopicUsecase(repository: gh<_i655.TopicRepository>()));
    gh.singleton<_i162.GetRecommendedCoursesUsecase>(
        () => _i162.GetRecommendedCoursesUsecase(gh<_i904.CourseRepository>()));
    return this;
  }
}
