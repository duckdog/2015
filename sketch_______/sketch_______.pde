
int _width  = 500;
int _height = 500; 

float [] x = new float[10];
float [] y = new float[10];
int sizexy = 40;
int bool = 1;
void setup(){
  
 size(_width,_height);
 for(int i = 0;i < 10; i++){
   x[i] = 0;
   y[i] = 0;
 }
}




void draw(){

  background(0);
  PImage test = loadImage("test.png"); 
  
  for(int i = 0; i < 10; i++){
    image(test,x[i] + i *(sizexy),y[i],sizexy,sizexy);
    
    if(bool == 1) x[i] += 1.0f;
    else          x[i] -= 1.0f;
  }
 if((x[9] + 10 * sizexy) > _width){
     bool = 0;
     for(int i = 0;i < 10; i++)
        y[i] += 30;      
  }
 if(x[0] < 0){
     bool = 1;
     for(int i = 0;i < 10; i++)
        y[i] += 30;
  }
   if(y[0] > height - sizexy){
       for(int i = 0;i < 10; i++)
        y[i] = 0;
   }
}




