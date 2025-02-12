import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/details/details.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseAudioNarration extends StatefulWidget {
  const CourseAudioNarration({super.key});

  @override
  State<CourseAudioNarration> createState() => _CourseAudioNarrationState();
}

class _CourseAudioNarrationState extends State<CourseAudioNarration>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            context.tr.pickANarrator,
            style: context.textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 10),
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: context.tr.maleVoice),
            Tab(text: context.tr.femaleVoice),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              BlocBuilder<AudioBloc, AudioState>(
                builder: (context, state) {
                  if (state is AudioResponseLoading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  if (state is AudioResponseLoaded) {
                    return AudioVoice(audios: state.maleResponses);
                  }
                  if (state is AudioResponseError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox();
                },
              ),
              BlocBuilder<AudioBloc, AudioState>(
                builder: (context, state) {
                  if (state is AudioResponseLoading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  if (state is AudioResponseLoaded) {
                    return AudioVoice(audios: state.femaleResponses);
                  }
                  if (state is AudioResponseError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
