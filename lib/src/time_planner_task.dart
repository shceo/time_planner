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
  final TextStyle titleStyle;

  /// Text style for the t
  final TextStyle subTitleStyle;

  /// Text style for the t
  final TextStyle thirdTitleStyle;

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
    required this.titleStyle,
    required this.subTitleStyle,
    required this.thirdTitleStyle,
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
      padding: const EdgeInsets.all(16),
      width: widthTask,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: eventItemBackgroundColors![0],
        border: Border(
          left: BorderSide(
            color: borderColor![0],
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText ?? '',
              style: titleStyle,
            ),
            Text(
              subtitleText ?? '',
              style: subTitleStyle,
            ),
            Text(
              thirdSubtitleText ?? '',
              style: thirdTitleStyle,
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