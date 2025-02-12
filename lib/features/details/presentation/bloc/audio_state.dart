part of 'audio_bloc.dart';

abstract class AudioState {}

final class AudioInitial extends AudioState {}

class AudioResponseLoading extends AudioState {}

class AudioResponseLoaded extends AudioState {
  AudioResponseLoaded(this.maleResponses, this.femaleResponses);
  final List<AudioData> maleResponses;
  final List<AudioData> femaleResponses;
}

class AudioResponseError extends AudioState {
  AudioResponseError(this.message);
  final String message;
}
