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
import 'package:calmly/features/authentication/authentication.dart' as _i632;
import 'package:calmly/features/authentication/data/datasource/remote/topic_remote_datasource.dart'
    as _i952;
import 'package:calmly/features/authentication/data/repository/topic_repository_impl.dart'
    as _i446;
import 'package:calmly/features/authentication/domain/usecase/get_topics_usecase.dart'
    as _i323;
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
    gh.singleton<_i952.TopicRemoteDataSource>(
        () => _i952.TopicRemoteDataSource());
    gh.singleton<_i352.ThemeRepository>(
        () => _i549.ThemeRepositoryImpl(gh<_i986.Box<String>>()));
    gh.singleton<_i632.TopicRepository>(() => _i446.TopicRepositoryImpl(
        remoteDataSource: gh<_i632.TopicRemoteDataSource>()));
    gh.singleton<_i323.GetTopicUsecase>(
        () => _i323.GetTopicUsecase(repository: gh<_i632.TopicRepository>()));
    return this;
  }
}
