void main(){
  
  
  var fatorial = 8;
  
  if(fatorial==0){
    fatorial=1;
    
  }else{

  for (var index = fatorial-1; index >= 1; index--) {
    fatorial = fatorial * index;
    
    
  }
  
}
  print(fatorial);
}