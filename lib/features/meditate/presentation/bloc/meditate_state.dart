part of 'meditate_bloc.dart';

abstract class MeditateState extends Equatable {}

final class MeditateInitial extends MeditateState {
  @override
  List<Object?> get props => [];
}

final class MeditateCategoryLoading extends MeditateState {
  @override
  List<Object?> get props => [];
}

final class MeditateCategoryLoaded extends MeditateState {
  MeditateCategoryLoaded({required this.categories, this.selectedIndex = 0});

  final int selectedIndex;
  final List<CategoryData> categories;

  MeditateCategoryLoaded copyWith({
    List<CategoryData>? categories,
    int? selectedIndex,
  }) {
    return MeditateCategoryLoaded(
      categories: categories ?? this.categories,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props => [selectedIndex, categories];
}

final class MeditateCategoryError extends MeditateState {
  MeditateCategoryError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
