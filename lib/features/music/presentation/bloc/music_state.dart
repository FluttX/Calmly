part of 'music_bloc.dart';

abstract class MusicState {}

final class MusicInitial extends MusicState {}

final class MusicLoading extends MusicState {}

final class MusicLoaded extends MusicState {
  MusicLoaded({required this.musics});

  final List<MusicData> musics;
}

final class MusicError extends MusicState {
  MusicError({required this.message});

  final String message;
}
