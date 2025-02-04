import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemainderScreen extends StatelessWidget {
  const RemainderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              TitleAndSubtitleWidget(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                title: context.tr.meditateTimeTitle,
                titleTextAlign: TextAlign.start,
                subtitle: context.tr.meditateTimeSubtitle,
                subTitleTextAlign: TextAlign.start,
              ),
              const SizedBox(height: 40),
              const RemainderTime(),
              const SizedBox(height: 40),
              TitleAndSubtitleWidget(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                title: context.tr.meditateDayTitle,
                titleTextAlign: TextAlign.start,
                subtitle: context.tr.meditateDaySubtitle,
                subTitleTextAlign: TextAlign.start,
              ),
              const SizedBox(height: 40),
              BlocBuilder<DayBloc, DayState>(
                builder: (context, state) {
                  if (state is DayLoading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (state is DayLoaded) {
                    final days = state.days;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: days.map((day) => DayCard(day: day)).toList(),
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
              const SizedBox(height: 40),
              Container(
                width: context.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FilledButton(
                  onPressed: () {},
                  child: Text(context.tr.save),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(context.tr.noThanks),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
