import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';

part 'contador.g.dart';

@riverpod
class Contador extends _$Contador {
  @override
  int build() => 0;

  void incrementar() => state++;

  void reset() => state = 0;
}
