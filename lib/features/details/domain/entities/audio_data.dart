import 'package:equatable/equatable.dart';

class AudioData extends Equatable {
  const AudioData({
    required this.title,
    required this.author,
    required this.duration,
    required this.isMale,
  });

  final String title;
  final String author;
  final int duration;
  final bool isMale;

  @override
  List<Object> get props => [title, author, duration, isMale];
}
