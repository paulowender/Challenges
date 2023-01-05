void main() {
  print(getPivot([1, 2, 3]));
  print(getPivot([1, 7, 3, 6, 5, 6]));
}

int getPivot(List<int> lista) {
  final index = lista.length ~/ 2;

  var left = lista.sublist(0, index.toInt());
  var right = lista.sublist(index.toInt(), lista.length);

  final totalLeft = left.fold<double>(0, (total, value) => total += value);
  final totalRight = right.fold<double>(0, (total, value) => total += value);

  double diference = totalLeft - totalRight;
  diference = diference < 0 ? diference * -1 : diference;

  if (left.contains(diference) || right.contains(diference)) {
    return lista.indexOf(diference.toInt());
  }
  return -1;
}
