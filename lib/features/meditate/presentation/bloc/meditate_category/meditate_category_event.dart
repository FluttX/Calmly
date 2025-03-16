part of 'meditate_category_bloc.dart';

abstract class MeditateCategoryEvent extends Equatable {}

final class LoadMeditateCategories extends MeditateCategoryEvent {
  @override
  List<Object?> get props => [];
}

class SelectMeditateCategory extends MeditateCategoryEvent {
  SelectMeditateCategory(this.selectedIndex);

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
