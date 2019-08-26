import processing.serial.*;

Serial port;

Serial[] ports;


void setup(){
  ports = new Serial[Serial.list().length-2];
  
  //ports[0] = new Serial(this, "/dev/itsy0", 9600);
  
  for (int i = 0; i < ports.length; i++){
    ports[i] = new Serial(this, Serial.list()[i+1], 9600);
  }
  printArray(Serial.list());
  
    //printArray(ports);
  print(ports[0]);
  //port = new Serial(this, Serial.list()[0], 9600);
  //println(ports[0]);
    //ports[0].write('a');

}


void draw(){
  
  //for (int i = 0; i < ports.length; i++){
  //  ports[i].write('a');
    
  //}
  //print();
  
}

int count = 0;

void serialEvent(Serial p){
  int received = p.read();
  //if (received > 0 && received != 'a'){
    //println(p);
  
  //p.write('a');
   
//}

if (received == '1'){
  print(count++);
}

}
  
