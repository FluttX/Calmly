part of 'meditate_bloc.dart';

abstract class MeditateState extends Equatable {}

final class MeditateInitial extends MeditateState {
  @override
  List<Object?> get props => [];
}

final class MeditateLoading extends MeditateState {
  @override
  List<Object?> get props => [];
}

class MeditateLoaded extends MeditateState {
  MeditateLoaded({
    this.categories = const [],
    this.topics = const [],
    this.isLoadingCategories = false,
    this.isLoadingTopics = false,
    this.categoryError,
    this.topicError,
    this.selectedIndex = 0,
  });

  final List<CategoryData> categories;
  final List<MeditateData> topics;
  final bool isLoadingCategories;
  final bool isLoadingTopics;
  final String? categoryError;
  final String? topicError;
  final int selectedIndex;

  MeditateLoaded copyWith({
    List<CategoryData>? categories,
    List<MeditateData>? topics,
    bool? isLoadingCategories,
    bool? isLoadingTopics,
    String? categoryError,
    String? topicError,
    int? selectedIndex,
  }) {
    return MeditateLoaded(
      categories: categories ?? this.categories,
      topics: topics ?? this.topics,
      isLoadingCategories: isLoadingCategories ?? this.isLoadingCategories,
      isLoadingTopics: isLoadingTopics ?? this.isLoadingTopics,
      categoryError: categoryError ?? this.categoryError,
      topicError: topicError ?? this.topicError,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props => [
        categories,
        topics,
        isLoadingCategories,
        isLoadingTopics,
        categoryError,
        topicError,
        selectedIndex,
      ];
}
