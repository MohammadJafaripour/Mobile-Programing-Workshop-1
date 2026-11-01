List<int> evens(List<int> numbers) {
  return numbers.where((number) => number.isEven).toList();
}

int? maxOf(List<int> numbers) {
  if (numbers.isEmpty) {
    return null;
  }

  var maximum = numbers.first;
  for (final number in numbers) {
    if (number > maximum) {
      maximum = number;
    }
  }
  return maximum;
}

void main() {

  print(evens([1, 2, 3, 4, 5, 6]));
  print(maxOf([3, 9, 2]));


  print(evens([7, 9]));
  print(maxOf([]));

  print(evens([]));
  print(maxOf([-8, -3, -12]));


  print(evens([-4, -1, 0, 3, 6]));
  print(maxOf([5]));
}
