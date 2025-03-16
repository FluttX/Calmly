import 'package:calmly/core/common/common.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeditateCategories extends StatelessWidget {
  const MeditateCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: BlocBuilder<MeditateCategoryBloc, MeditateCategoryState>(
        builder: (context, state) {
          if (state is MeditateCategoryLoading) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is MeditateCategoryLoaded) {
            return ListView.separated(
              itemCount: state.categories.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              itemBuilder: (context, index) {
                final category = state.categories[index];
                final isSelected = index == state.selectedIndex;
                return ButtonWithIconAndText(
                  height: 50,
                  width: 50,
                  iSActive: isSelected,
                  inactiveColor: const Color(0xFFA0A3B1),
                  text: category.title,
                  icon: category.icon,
                  onTap: () {
                    context
                        .read<MeditateCategoryBloc>()
                        .add(SelectMeditateCategory(index));
                  },
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 20),
            );
          } else if (state is MeditateCategoryError) {
            return Center(
              child: Text('Error loading categories: ${state.message}'),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
