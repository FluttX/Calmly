import 'package:equatable/equatable.dart';

class TopicData with EquatableMixin {
  TopicData({
    required this.image,
    required this.title,
    required this.color,
    required this.textColor,
  });

  final String image;
  final String title;
  final String color;
  final String textColor;

  @override
  List<Object?> get props => [image, title, color, textColor];
}
