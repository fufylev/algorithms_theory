/// The Function of binary search - lecture #10
/// Requirements - the given list must be sorted!!
///
/// https://youtu.be/EdhN_gEDfUM?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
int binarySearchRecursive(List<int> array, int key, {int start, int end}) {
  start ??= 0;
  end ??= array.length - 1;
  if (start > end) return -1;
  int middle = ((start + end) / 2).floor();
  if (key == array[middle]) {
    return middle;
  }
  if (key < array[middle]) {
    return binarySearchRecursive(array, key, start: start, end: middle - 1);
  } else {
    return binarySearchRecursive(array, key, start: middle + 1, end: end);
  }
}

int binarySearchIterative(List<int> array, int key) {
  int middle = 0, start = 0, end = array.length, step = 0;
  while (start <= end) {
    step = step + 1;
    middle = ((start + end) / 2).floor();
    if (key == array[middle]) {
      return middle;
    }
    if (key < array[middle]) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
  }
  return -1;
}

int leftBound(List<int> array, int key) {
  int left = -1;
  int right = array.length;

  while ((right - left) > 1) {
    final middle = ((left + right) / 2).floor();
    if (array[middle] < key) {
      left = middle;
    } else {
      right = middle;
    }
  }
  return left;
}

int rightBound(List<int> array, int key) {
  int left = -1;
  int right = array.length;

  while ((right - left) > 1) {
    final middle = ((left + right) / 2).floor();
    if (array[middle] <= key) {
      left = middle;
    } else {
      right = middle;
    }
  }
  return right;
}
