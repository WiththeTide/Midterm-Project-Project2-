import gifAnimation.*; 
Gif notbullet2;                                      //gif when survive a round
Gif holdmouse;                                       //gif for holding the mouse instruction

boolean start=false;                                 // boolean value for check if it is starting
boolean youdead=false;                               // boolean value for check if you lose
boolean youwin=false;                                // boolean value for check if you win

boolean counting=false;                              // boolean value for check if it should count
int totaltry=0;                                      // number for total try

PImage again;
PImage youaredead;
PImage spintext;
PImage bullet;
PImage Name;
PImage restart;
PImage instruction;
PImage slot1,slot2,slot3,slot4,slot5,slot6;          // the slot for spinng at left corner

int x=50;                                            //for rotation
int y=100;                                           // for rotation

int y2=500;                                          // for rotation
float time=0;

float speed=5;                                       //rotation speed
float Finalslot;                                     //the value for the pc generated random value

int[]slot= new int[5];                               // array

PImage Background; //https://www.google.com/search?q=blood+background&sxsrf=AOaemvIUHGkxZ64RGWhatvenqKat356mjQ:1635089114065&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjyhsfOrePzAhVrl2oFHSpeBfIQ_AUoAXoECAEQAw&biw=1745&bih=852&dpr=1.1#imgrc=Ch8ti105VWEuzM
PFont data;

void setup(){ 

size(1200,900);
 data = createFont("Bobcat",100); 
 instruction=loadImage("instruction.png");
 instruction.resize(600,300);
 
 
 again=loadImage("again.png");
 again.resize(1200,900);
 
 Name=loadImage("Russian Roulette.png");
 Name.resize(700,700);

 restart=loadImage("Restart.png");
 restart.resize(600,400);
 
 notbullet2=new Gif(this,"not0.gif");
 notbullet2.play();
 
 holdmouse=new Gif(this,"hold.gif");
 holdmouse.play();

 youaredead=loadImage("you are dead.jpg"); //https://www.google.ca/search?q=you+are+dead+game+screen&tbm=isch&ved=2ahUKEwiS7Kme3OPzAhXBn3IEHchIAqkQ2-cCegQIABAA&oq=you+are+dead+&gs_lcp=CgNpbWcQARgAMgcIIxDvAxAnMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgQIABBDMgUIABCABDIECAAQQ1DjVljjVmDMXGgAcAB4AIABgwGIAewBkgEDMC4ymAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=vat1YdKZF8G_ytMPyJGJyAo&bih=880&biw=1920#imgrc=6p8MJ5QFjLn_BM
 youaredead.resize(1200,900);

 spintext=loadImage("spinText.png");
 spintext.resize(200,100);
 
 bullet=loadImage("bullet.png");
 bullet.resize(300,300);
 
 slot1=loadImage("slot 1.png");
 slot1.resize(300,300);
 
 slot2=loadImage("slot 2.png");
 slot2.resize(300,300);
 
 slot3=loadImage("slot 3.png");
 slot3.resize(300,300);
 
 slot4=loadImage("slot 4.png");
 slot4.resize(300,300);
 
 slot5=loadImage("slot 5.png");
 slot5.resize(300,300);
 
 slot6=loadImage("slot6.png");
 slot6.resize(300,300);
 
 Background=loadImage("background.png");
 Background.resize(1200,900);
 
 slot[0]= 1;
 slot[1]= 2;
 slot[2]= 3;
 slot[3]= 4;
 slot[4]= 5;
 
 Finalslot=10;                   // the initial slot, slot thats do not exist
 
}

void draw(){

 background(Background);
 Interface();
   textFont(data);
   text("Statistics", 400, 500);
   text("#",425,600);
   text("slot",550,590);
   text(totaltry,450,675);
   text(int(Finalslot),600,675);
   
 spin();
 
    if(totaltry==5){
      image(again,0,0);
      youwin=true;
        }
      }

void mouseClicked(){                 //detect how many you survive
   if (start==true){
     totaltry=totaltry+1;
     }
   if(youwin==true){
     totaltry=0;                    //reset the count
     Finalslot=10;                  //reset the slot value
     youwin=false;
    }

}
