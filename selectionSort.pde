void setup(){
  int [] unsorted = {1,3,4,2,5};
  unsorted = selectionSort(unsorted);
  println(unsorted);
}

void draw(){
}

int[] selectionSort(int[] unsorted){
   int temp;
   int smallest = 0;
   for(int i = 0; i < unsorted.length -1; i++){
          smallest = i;
    for(int j = i + 1; j < unsorted.length; j++)
      if(unsorted[smallest] > unsorted[j]){
             //set to smallest
       smallest = j;
      }
      //swap(i, smallest)
      temp = unsorted[smallest];
      unsorted [smallest] = unsorted[i];
      unsorted [i] = temp;
  }
     return unsorted;
}

void swap(int[]unsorted,int a, int b){
  int temp = unsorted[a];
  unsorted[a] = unsorted[b];
  unsorted[b] = temp;
}


