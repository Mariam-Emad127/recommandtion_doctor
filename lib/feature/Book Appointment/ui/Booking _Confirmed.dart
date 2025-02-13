import 'package:flutter/material.dart';

import '../../home/ui/widgets/recommendd_appbar.dart';

class BookingConfirmed extends StatelessWidget {
  const BookingConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: SafeArea(child:  Column(
children: [
RecommenddAppbar(title: 'Booking Confirmed',)


],
)),

    );
  }
}