import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/music/music.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.secondaryBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: context.colors.secondaryBackground,
        title: Text(
          'Sleep Music',
          style: context.textTheme.titleMedium?.copyWith(
            color: context.colors.background,
          ),
        ),
      ),
      body: BlocBuilder<MusicBloc, MusicState>(
        builder: (context, state) {
          if (state is MusicLoading) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is MusicLoaded) {
            return GridView.builder(
              itemCount: state.musics.length,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.08,
              ),
              itemBuilder: (context, index) {
                return MusicCard(
                  music: state.musics[index],
                );
              },
            );
          } else if (state is MusicError) {
            return Center(
              child: Text(state.message),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
