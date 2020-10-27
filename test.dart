/*async, await, future*/
import 'dart:io';

void main() {
  perfomTasks();
}

void perfomTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  print('Task 1 data');
}

Future<String> task2() async {
//  Hold for 3 sec
  Duration twoSec = Duration(seconds: 2);
  String result;
  await Future.delayed(twoSec, () {
    result = 'Task 2 data';
    print('Task 2 completed');
  });

  return result;
}

void task3(String result) {
  print('Task 3 completed with $result');
}
