import 'package:flutter/material.dart';
import 'package:time_planner/src/time_planner_date_time.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Widget that shows on the time planner as the tasks
class TimePlannerTask extends StatelessWidget {
  /// Minutes duration of task or object
  final int minutesDuration;

  /// Days duration of task or object, default is 1
  final int? daysDuration;

  /// When this task will be happen
  final TimePlannerDateTime dateTime;

  /// Background color of task
  final Color? color;

  /// This will happen when the user taps on the task, for example, show a dialog or navigate to another page
  final Function? onTap;

  /// Show this child on the task
  ///
  /// Typically an [Text].
  final Widget? child;

  /// Parameter to set space from left, to set it: config.cellWidth! * dateTime.day.toDouble()
  final double? leftSpace;

  /// Parameter to set the width of the task, to set it: (config.cellWidth!.toDouble() * (daysDuration ?? 1)) -config.horizontalTaskPadding!
  final double? widthTask;

  /// Event item background colors
  final List<Color>? eventItemBackgroundColors;

  /// Border side color
  final List<Color>? borderColor;

  /// Text style for the titles
  final TextStyle titlesStyle;

  /// Title text
  final String? titleText;

  /// Subtitle text
  final String? subtitleText;

  /// Third subtitle text
  final String? thirdSubtitleText;

  /// Widget that shows on the time planner as the tasks
  const TimePlannerTask({
    Key? key,
    required this.minutesDuration,
    required this.dateTime,
    required this.eventItemBackgroundColors,
    required this.borderColor,
    required this.titleText,
    required this.thirdSubtitleText,
    required this.subtitleText,
    required this.titlesStyle,
    this.color,
    this.onTap,
    this.child,
    this.leftSpace,
    this.daysDuration,
    this.widthTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthTask,
      height: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: eventItemBackgroundColors?.first.withOpacity(0.2) ?? const Color(0xFF16B364).withOpacity(0.2),
        border: Border(
          left: BorderSide(
            color: borderColor![0],
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              titleText ?? '',
              style: titlesStyle,
            ),
            Text(
              subtitleText ?? '',
              style: titlesStyle,
            ),
            Text(
              thirdSubtitleText ?? '',
              style: titlesStyle,
            ),
          ],
        ),
      ),
    );
  }
}



// Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//  color: eventItemBackgroundColors != null &&
//                         eventItemBackgroundColors!.isNotEmpty
//                     ? eventItemBackgroundColors![0]
//                     : Colors.white,
//         ),
//       ),
//       child: Column(
//         children: [Text('8:00 - 9:00')],
//       ),
//     );