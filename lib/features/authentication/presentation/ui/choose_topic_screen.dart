import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseTopicScreen extends StatelessWidget {
  const ChooseTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              AppImages.topicBackground,
              height: 700,
              fit: BoxFit.fitWidth,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    context.tr.whatBringsYou,
                    style: context.textTheme.headlineSmall,
                  ),
                  Text(
                    context.tr.toAppName('Silent Moon'),
                    style: context.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    context.tr.chooseATopic,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: context.colors.textSecondary,
                    ),
                  ),
                  BlocBuilder<TopicBloc, TopicState>(
                    builder: (context, state) {
                      // LOADING
                      if (state is TopicLoading) {
                        return const Column(
                          children: [
                            SizedBox(height: 150),
                            Center(child: CircularProgressIndicator.adaptive()),
                          ],
                        );
                      }
                      // TOPICS GRIDVIEW
                      else if (state is TopicLoaded) {
                        return TopicGirdView(topics: state.topics);
                      }

                      return const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
