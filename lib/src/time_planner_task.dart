import 'package:flutter/material.dart';
import 'package:time_planner/src/time_planner_date_time.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Widget that show on time planner as the tasks
class TimePlannerTask extends StatelessWidget {
  /// Minutes duration of task or object
  final int minutesDuration;

  /// Days duration of task or object, default is 1
  final int? daysDuration;

  /// When this task will be happen
  final TimePlannerDateTime dateTime;

  /// Background color of task
  final Color? color;

  /// This will be happen when user tap on task, for example show a dialog or navigate to other page
  final Function? onTap;

  /// Show this child on the task
  ///
  /// Typically an [Text].
  final Widget? child;

  /// parameter to set space from left, to set it: config.cellWidth! * dateTime.day.toDouble()
  final double? leftSpace;

  /// parameter to set width of task, to set it: (config.cellWidth!.toDouble() * (daysDuration ?? 1)) -config.horizontalTaskPadding!
  final double? widthTask;

  ///  eventItemBackgroundColors;
  final List<Color>? eventItemBackgroundColors;

  /// Widget that show on time planner as the tasks
  const TimePlannerTask(
      {Key? key,
      required this.minutesDuration,
      required this.dateTime,
      this.daysDuration,
      this.eventItemBackgroundColors,
      this.color,
      this.onTap,
      this.child,
      this.leftSpace,
      this.widthTask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF0050FF),
            Color(0xFF00FF00),
          ],
        ),
      ),
      child: Column(
        children: [Text('8:00 - 9:00')],
      ),
    );
  }
}
