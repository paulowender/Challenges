void main() {
  const nums = [1, 13, 10, 12, 31];
  int reverse(e) => int.parse('$e'.split('').reversed.join(''));
  print((nums + nums.map(reverse).toList()).toSet().length);
}
