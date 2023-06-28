class Stack<T> {
  late int size;
  late int top;
  late List arr;
  Stack(int size) {
    this.size = size;
    top = -1;
    arr = List.filled(size, null);
  }
  bool isEmpty() {
    return top == -1;
  }

  void push(T element) {
    if (top >= size) {
      print("Stack is Full");
    } else {
      top++;
      arr[top] = element;
    }
  }

  void pop() {
    if (isEmpty()) {
      print("Stack is Empty");
    } else {
      top--;
    }
  }

  T getTop() {
    return arr[top];
  }

  void printStack() {
    for (int i = top; i >= 0; i--) {
      print("${arr[i] }");
    }
  }
}

void main() {
  Stack<int> s = Stack<int>(10);
  s.push(1);
  s.push(2);
  s.push(3);
  s.push(4); // 4 3 2 1
  s.pop(); // 3 2 1
  s.printStack(); // 3 2 1
  print("Top : ${s.getTop()}"); // 3
}
