import 'package:flutter/material.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Show the hour for each row of time planner
class TimePlannerTime extends StatelessWidget {
  /// Text it will be show as hour
  final String? time;
  final bool? setTimeOnAxis;

  /// Show the hour for each row of time planner
  const TimePlannerTime({
    Key? key,
    this.time,
    this.setTimeOnAxis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: config.cellHeight!.toDouble() - 1,
      width: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 12),
        child: setTimeOnAxis!
            ? Transform.translate(
                offset: const Offset(0, -10),
                child: Text(time!),
              )
            : Transform.translate(
                offset: const Offset(0, -10),
                child: Text(time!),
              ),
      ),
    );
  }
}
