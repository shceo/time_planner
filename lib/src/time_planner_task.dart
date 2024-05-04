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
  const TimePlannerTask({
    Key? key,
    required this.minutesDuration,
    required this.dateTime,
    this.daysDuration,
    this.eventItemBackgroundColors,
    this.color,
    this.onTap,
    this.child,
    this.leftSpace,
    this.widthTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthTask,
      height: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFF16B364).withOpacity(0.2),
        border: Border(
          left: BorderSide(
            color: Color(0xFF16B364),
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '8:00 - 9:00',
              style: TextStyle(fontSize: 12),
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