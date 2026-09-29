import 'dart:io';

// Функция без параметров и без возвращаемого значения.
// Выводит приветствие.
void showWelcome() {
  print('================================');
  print('МИНИ-КАЛЬКУЛЯТОР');
  print('================================');
  print('Добро пожаловать!');
}

// Функция с параметрами и без возвращаемого значения.
// Выводит название операции и её результат.
void showResult(String operation, int result) {
  print('$operation: $result');
}

// Функция сложения.
// Принимает два числа и возвращает их сумму.
int add(int a, int b) {
  return a + b;
}

// Функция вычитания.
// Принимает два числа и возвращает их разность.
int subtract(int a, int b) {
  return a - b;
}

// Функция умножения.
// Принимает два числа и возвращает их произведение.
int multiply(int a, int b) {
  return a * b;
}

// Функция деления.
// Принимает два числа и возвращает результат целочисленного деления.
int divide(int a, int b) {
  return a ~/ b;
}

// Функция без параметров, но с возвращаемым значением.
// Возвращает число по умолчанию.
int getDefaultNumber() {
  return 10;
}

void main() {
  // Показываем приветствие.
  showWelcome();

  // Получаем первое число.
  print('Введите первое число:');
  int firstNumber = int.parse(stdin.readLineSync()!);

  // Получаем второе число.
  print('Введите второе число:');
  int secondNumber = int.parse(stdin.readLineSync()!);

  // Выполняем сложение.
  int sum = add(firstNumber, secondNumber);

  // Выполняем вычитание.
  int difference = subtract(firstNumber, secondNumber);

  // Выполняем умножение.
  int product = multiply(firstNumber, secondNumber);

  // Выполняем деление.
  int quotient = divide(firstNumber, secondNumber);

  // Выводим результаты.
  print('');
  print('================================');
  print('РЕЗУЛЬТАТЫ');
  print('================================');

  showResult('Сложение', sum);
  showResult('Вычитание', difference);
  showResult('Умножение', product);
  showResult('Деление', quotient);

  // Получаем значение по умолчанию.
  int defaultNumber = getDefaultNumber();

  print('');
  print('Значение по умолчанию: $defaultNumber');
}