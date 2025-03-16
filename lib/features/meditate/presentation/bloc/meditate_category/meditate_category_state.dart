part of 'meditate_category_bloc.dart';

abstract class MeditateCategoryState {}

final class MeditateCategoryInitial extends MeditateCategoryState {}

final class MeditateCategoryLoading extends MeditateCategoryState {}

final class MeditateCategoryLoaded extends MeditateCategoryState {
  MeditateCategoryLoaded({required this.categories, this.selectedIndex = 0});

  final List<CategoryData> categories;
  final int selectedIndex;

  MeditateCategoryLoaded copyWith({int? selectedIndex}) {
    return MeditateCategoryLoaded(
      categories: categories,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}

final class MeditateCategoryError extends MeditateCategoryState {
  MeditateCategoryError({required this.message});

  final String message;
}
