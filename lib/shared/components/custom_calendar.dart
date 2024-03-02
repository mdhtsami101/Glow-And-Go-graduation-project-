import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatelessWidget {
  final void Function(int)? onDaySelected;
  final int? selectedDay;
  String text;

  CustomCalendar(
      {Key? key, this.selectedDay, this.onDaySelected, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMMM');
    final String formattedMonth = formatter.format(now);
    final int daysInMonth = DateTime(now.year, now.month + 1, 0).day;
    final List<String> daysOfWeek = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun'
    ];
    final int firstWeekdayOfMonth = DateTime(now.year, now.month, 1).weekday;

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
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 330, // Adjusted height
                    width: 300, // Adjusted width
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
                              formattedMonth,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: daysOfWeek.map((day) {
                              return Text(
                                day,
                                style: TextStyle(fontSize: 12),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: GridView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7,
                                childAspectRatio: 1.0,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0,
                              ),
                              itemCount: daysInMonth + firstWeekdayOfMonth - 1,
                              itemBuilder: (context, index) {
                                if (index < firstWeekdayOfMonth - 1) {
                                  return Container(); // Empty space for days before the 1st of the month
                                } else {
                                  final int day =
                                      index - firstWeekdayOfMonth + 2;
                                  return Center(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selectedDay == day
                                            ? Colors.blue
                                            : Colors.transparent,
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
  }
}
