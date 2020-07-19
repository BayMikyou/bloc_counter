import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterDisplayState extends CounterState {
  final int count;

  const CounterDisplayState({@required this.count});

  @override
  List<Object> get props => [count];
}
