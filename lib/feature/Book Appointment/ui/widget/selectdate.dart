import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Selectdate extends StatefulWidget {
  const Selectdate({super.key});

  @override
  State<Selectdate> createState() => _SelectdateState();
}

class _SelectdateState extends State<Selectdate> {
    int _selectedDateIndex = 2;

  @override
  Widget build(BuildContext context) {
            List<String> futureDate = getNextDate();
  List<String> futureD  = getNextDays();
    return         Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: futureDate.length,
                        itemBuilder: (context, index) {
                          bool isSelected = _selectedDateIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedDateIndex = index;
                              });
                            },
                            child: Container(
                              width: 80,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.blue : Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Center(
                                    child: Text(
                                     futureD[index].length > 5 ?  futureD[index].substring(0,3) : futureD[index],
                                          style: TextStyle(
                                            color: isSelected ? Colors.white : Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Center(
                                    child: Text(futureDate[index] ,
                                         style: TextStyle(
                                            color: isSelected ? Colors.white : Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  
                                 ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              );
  }

List<String> getNextDate() {
    List<String> daysList = [];
    DateTime now = DateTime.now();

    for (int i = 0; i < 100; i++) {
      DateTime futureDate = now.add(Duration(days: i));
      String formattedDate = "${futureDate.day} "; 
      daysList.add(formattedDate);
    }

    return daysList;
  }

List<String> getNextDays () {
    List<String> daysList = [];
    DateTime now = DateTime.now();

    for (int i = 0; i < 100; i++) {
      DateTime futureDate = now.add(Duration(days: i));
      String formattedDays = "${DateFormat('EEEE').format(futureDate)}";
      daysList.add(formattedDays);
    }

    return daysList;
  }
}