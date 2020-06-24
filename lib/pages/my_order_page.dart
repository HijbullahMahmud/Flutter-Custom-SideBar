import 'package:flutter/material.dart';
import 'package:fluttercustomsidebar/bloc/navigation_bloc/navigation_bloc.dart';

class MyOrderPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('OrderPage',
      style: TextStyle(fontWeight: FontWeight.w900,
      fontSize: 28),),
    );
  }
}
