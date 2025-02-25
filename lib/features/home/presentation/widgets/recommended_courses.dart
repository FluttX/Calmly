import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendedCourses extends StatelessWidget {
  const RecommendedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Recommended for you',
            textAlign: TextAlign.start,
            style: context.textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          height: context.width * 0.35 * 0.7 + 65 + 40,
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              if (state is CourseLoading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is CourseLoaded) {
                return ListView.separated(
                  itemCount: state.courses.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  itemBuilder: (context, index) => CourseCard(
                    course: state.courses[index],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
