import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:calmly/features/details/domain/usecase/get_audio_responses_usecase.dart';

part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc(this._getAudioResponses) : super(AudioInitial()) {
    on<LoadAudioResponseEvent>(_onLoadAudioResponse);
  }

  final GetAudioResponsesUsecase _getAudioResponses;

  Future<void> _onLoadAudioResponse(
    LoadAudioResponseEvent event,
    Emitter<AudioState> emit,
  ) async {
    emit(AudioResponseLoading());

    final result = await _getAudioResponses.call();

    result.fold(
      (failure) => emit(AudioResponseError('Failed to load audio responses')),
      (audioList) {
        final maleResponses = audioList.where((audio) => audio.isMale).toList();
        final femaleResponses =
            audioList.where((audio) => !audio.isMale).toList();
        emit(AudioResponseLoaded(maleResponses, femaleResponses));
      },
    );
  }
}
