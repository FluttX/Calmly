import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/onboarding/domain/entities/day_data.dart';
import 'package:flutter/material.dart';

class DayCard extends StatefulWidget {
  const DayCard({required this.day, super.key, this.onTap});

  final DayData day;
  final void Function()? onTap;

  @override
  State<DayCard> createState() => _DayCardState();
}

class _DayCardState extends State<DayCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: AnimatedContainer(
        height: 40,
        width: 40,
        duration: kThemeAnimationDuration,
        decoration: BoxDecoration(
          color: isSelected
              ? context.colors.textPrimary
              : context.colors.background,
          border: Border.all(color: context.colors.textSecondary),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.day.value,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: isSelected ? context.colors.background : null,
          ),
        ),
      ),
    );
  }
}
