import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/count_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(
      child: Consumer(builder: (context, ref, child) {
        final per = ref.watch(personName);
        final n = ref.watch(countProvider).number;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$n', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  ref.read(countProvider).increment();

                }, child: Text('Increase')),

                TextButton(onPressed: () {
                  ref.read(countProvider).decrement();
                }, child: Text('Decrease')),
              ],
            )
          ],
        );
      }),
    ));
  }
}
