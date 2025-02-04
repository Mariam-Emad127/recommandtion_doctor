import 'package:flutter/material.dart';

import '../../../../../core/ theming/styles.dart';

class Tabarscreen extends StatefulWidget {
    Tabarscreen({super.key});

  @override
  State<Tabarscreen> createState() => _TabarscreenState();
}

class _TabarscreenState extends State<Tabarscreen> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return    
  Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
               Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About me",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
            style: TextStyles.font12GrayRegular,
          ),
          const SizedBox(height: 16),
          const Text(
            "Working Time",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
            Text("Monday - Friday, 08:00 AM - 08:00 PM",  style: TextStyles.font12GrayRegular,),
          const SizedBox(height: 16),
          const Text(
            "STR",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text("4726482464"),
          const SizedBox(height: 16),
          const Text(
            "Pengalaman Praktik",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text("RSPAD Gatot Soebroto\n2017 - sekarang"),
          const SizedBox(height: 20),
      ],
      ),
               
                const Center(
                  child: Text(
                    'Screen 2',
                  ),
                ),
                const Center(
                  child: Text(
                    'Screen 3',
                  ),
                ),
                
              ],
            ),
          );

   
       
  }
}