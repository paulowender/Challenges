void main(List<String> args) {
  List<int> nums = [1, 13, 10, 12, 31];

  int reverse(int numero) {
    List chars = List.of('$numero'.split(''));
    return int.parse(chars.reversed.join(''));
  }

  List<int> reverseds = nums.map((e) => reverse(e)).toList();
  List<int> union = List.from(nums + reverseds);

  int distincts = union.toSet().length;
  print(distincts);
}
