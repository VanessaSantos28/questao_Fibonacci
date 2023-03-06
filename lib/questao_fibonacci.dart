void main() {
  int number = 28;
  List<int> finalFibSequence = fibonacciSequence(number);
  print("A sequência de Fibonacci até $number é: $finalFibSequence");
  if (isFibonacciNumber(number)) {
    print("$number faz parte da sequência de fibonacci.");
  } else {
    print("$number não faz parte da sequência de Fibonacci.");
  }
}

List<int> fibonacciSequence(int n) {
  List<int> fib = [0, 1];
  while (fib.last < n) {
    fib.add(fib[fib.length - 1] + fib[fib.length - 2]);
  }
  return fib;
}

bool isFibonacciNumber(int x) {
  List<int> fibNumber = fibonacciSequence(x);
  return fibNumber.contains(x);
}


