import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder(
                bloc: counterCubit,
                builder: (context, counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      // floatingActionButton: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () => counterCubit.increment(),
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add),
      //     ),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     FloatingActionButton(
      //       onPressed: () => counterCubit.decrement(),
      //       tooltip: 'Decrement',
      //       child: const Icon(Icons.remove),
      //     ),
      //   ],
      // ),
    );
  }
}