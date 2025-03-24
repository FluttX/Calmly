import 'dart:async';

import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:calmly/features/music/domain/usecase/get_music_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'music_event.dart';
part 'music_state.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc(this._getMusicUsecase) : super(MusicInitial()) {
    on<LoadMusicEvent>(_onLoadMusicEvent);
  }

  final GetMusicUsecase _getMusicUsecase;

  Future<void> _onLoadMusicEvent(
    LoadMusicEvent event,
    Emitter<MusicState> emit,
  ) async {
    emit(MusicLoading());

    final results = await _getMusicUsecase.call();

    results.fold(
      (error) => emit(MusicError(message: error.toString())),
      (musics) => emit(MusicLoaded(musics: musics)),
    );
  }
}
