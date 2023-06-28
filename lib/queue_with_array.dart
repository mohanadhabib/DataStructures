class Queue<T> {
  late int head,tail,count,size;
  late List arr;
  Queue(int size){
    this.size = size;
    head = 0;
    tail = size-1;
    count = 0;
    arr = List.filled(size,null);
  }
  bool isEmpty(){
    return count==0;
  }
  bool isFull(){
    return count==size;
  }
  void enqueue(T element){
    if(isFull()){
      print("Queue is Full");
    }
    else{
      tail = (tail+1)%size;
      arr[tail] = element;
      count++;
    }
  }
  void dequeue(){
    if(isEmpty()){
      print("Queue is Empty");
    }
    else{
      head = (head+1)%size;
      count--;
    }
  }
  T? getHead(){
    if(isEmpty()){
      return null;
    }
    else{
      return arr[head];
    }
  }
  T? getTail(){
    if(isEmpty()){
      return null;
    }
    else{
      return arr[tail];
    }
  }
  int getSize(){
    return count;
  }
  void printQueue(){
    if(isEmpty()){
      print("[ ]");
    }else{
      print("[");
      for(int i = head ; i != tail ; i = (i+1)%size){
        print(arr[i]);
      }
      print(arr[tail]);
      print("]");
    }
  }
}
void main(){
  Queue<int> q = Queue(5);
  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30); // 10 20 30
  q.dequeue(); // 20 30
  q.enqueue(40);
  q.enqueue(50);
  q.enqueue(60); // 20 30 40 50 60
  q.dequeue(); // 30 40 50 60
  q.printQueue(); // 30 40 50 60
  print("Actual size : ${q.getSize()}"); // 4
  print("Head : ${q.getHead()}"); // 30
  print("Tail : ${q.getTail()}"); // 60
}