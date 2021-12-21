void main() {
  const list = [0, 2, 3, 4, 3, 3, 7, 8, 8, 10];
  final list2 = List.from(list);

  if (list.length > 5) {
    if (list.first == 0 && list.last == 10) {
      list2.removeRange(1, 6);
    } else if (list.first != 0 && list.last != 10 && list[5] == 3) {
      list2.first = 1;
      list2.last = 9;
      list2.removeRange(1, 6);
    } else {
      list2.remove(list.last);
      if (list.length > 5) {
        list2.remove(list.first);
      }
      if (list.length > 5) {
        list2.remove(list.first);
      }
    }
    print(list2);
  } else {
    list2.insert(list[list.length - 1], 2);
    if (list2.length < 5) {
      list2.insert(list[list.length - 1], 2);
    }
  }
}
