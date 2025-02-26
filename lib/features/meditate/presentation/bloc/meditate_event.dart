part of 'meditate_bloc.dart';

abstract class MeditateEvent extends Equatable {}

final class LoadMeditateCategories extends MeditateEvent {
  @override
  List<Object?> get props => [];
}

class SelectMeditateCategory extends MeditateEvent {
  SelectMeditateCategory(this.selectedIndex);

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}

final class LoadMeditateTopics extends MeditateEvent {
  @override
  List<Object?> get props => [];
}
