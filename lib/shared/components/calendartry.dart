import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/calendar_cubit.dart';
import '../cubit/calendar_state.dart';

class CustomCalendar2 extends StatelessWidget {
  final int? selectedDay;
  final String text;

  CustomCalendar2({Key? key, this.selectedDay, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child: BlocBuilder<CalendarCubit, CalendarState>(
        builder: (context, state) {
          final DateTime currentDate = state.currentDate;
          final List<String> daysOfWeek = [
            'Mon',
            'Tue',
            'Wed',
            'Thu',
            'Fri',
            'Sat',
            'Sun'
          ];
          final int firstWeekdayOfMonth =
              DateTime(currentDate.year, currentDate.month, 1).weekday;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Color(0x55000000),
                          offset: Offset.fromDirection(3, 5),
                          spreadRadius: 1.5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(15.0),
                        topStart: Radius.circular(15.0),
                        bottomEnd: Radius.circular(15.0),
                        bottomStart: Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.9),
                              child: Image(
                                image: AssetImage('assets/images/head.png'),
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios,
                                          color: Colors.white),
                                      onPressed: () => context
                                          .read<CalendarCubit>()
                                          .previousMonth(),
                                    ),
                                    Text(
                                      text,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white),
                                      onPressed: () => context
                                          .read<CalendarCubit>()
                                          .nextMonth(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // Adjusted width
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10, // Adjusted top padding
                                    bottom: 30,
                                    left: 28,
                                    right: 28,
                                  ),
                                  child: Text(
                                    "${currentDate.month}/${currentDate.year}",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: daysOfWeek.map((day) {
                                    return Text(
                                      day,
                                      style: TextStyle(fontSize: 12),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(height: 10),
                                GridView.builder(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 7,
                                    childAspectRatio: 1.0,
                                    crossAxisSpacing: 4.0,
                                    mainAxisSpacing: 4.0,
                                  ),
                                  itemCount: DateTime(currentDate.year,
                                              currentDate.month + 1, 0)
                                          .day +
                                      firstWeekdayOfMonth -
                                      1,
                                  itemBuilder: (context, index) {
                                    if (index < firstWeekdayOfMonth - 1) {
                                      return Container(); // Empty space for days before the 1st of the month
                                    } else {
                                      final int day =
                                          index - firstWeekdayOfMonth + 2;
                                      return GestureDetector(
                                        onTap: () => context
                                            .read<CalendarCubit>()
                                            .selectDay(day),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: selectedDay == day
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '$day',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
