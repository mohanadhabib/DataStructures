class Node<T>{
  late T value;
  late Node<T>? next;
}
class Stack<T>{
  Node<T>? top;
  Stack(){
    top = null;
  }
  bool isEmpty(){
    return top == null;
  }
  void push(T element){
    Node<T>? newNode = new Node<T>();
    newNode.value = element;
    newNode.next = top;
    top = newNode;
  }
  void pop(){
    if(isEmpty()){
      print("Stack is Empty");
    }
    else{
      top = top!.next;
    }
  }
  T getTop(){
    return top!.value;
  }
  void printStack(){
    Node<T>? temp = top;
    print('[ ');
    while(temp!=null){
      print('${temp.value} ');
      temp = temp.next;
    }
    print(']');
  }
}
void main(){
  Stack<int> s = new Stack<int>();
  s.push(1);
  s.push(2); // 2 1
  s.pop(); // 1
  s.push(3);
  s.push(4); // 4 3 1
  s.pop(); // 3 1
  s.printStack(); // 3 1
  print('Top : ${s.getTop()}'); // 3
}