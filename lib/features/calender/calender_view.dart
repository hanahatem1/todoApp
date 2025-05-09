import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:to_do_app/constant/colors.dart';

class CalenderView extends StatefulWidget {
  const CalenderView({
    super.key,
  });

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: TableCalendar(
              headerStyle:
                const  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 10),
              lastDay: DateTime.utc(2030, 10, 10),
              onDaySelected: _onDaySelected,
              calendarStyle:const CalendarStyle(
                selectedDecoration: BoxDecoration(
                    color: AppColors.blueColor, shape: BoxShape.circle),
                todayDecoration: BoxDecoration(
                  color: AppColors.greyColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
