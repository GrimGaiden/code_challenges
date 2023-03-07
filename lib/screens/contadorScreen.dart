import 'package:code_challenges/contador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContadorBoton extends ConsumerWidget {
  const ContadorBoton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('boton pulsar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: ref.read(contadorProvider.notifier).incrementar,
              child: const Text('incrementar')),
          TextButton(
              onPressed: ref.read(contadorProvider.notifier).reset,
              child: const Text('reiniciar'))
        ],
      ),
    );
  }
}
