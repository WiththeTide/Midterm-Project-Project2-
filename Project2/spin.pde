//https://www.youtube.com/watch?v=hsAiIytWf-I

void spin(){

 pushMatrix();                                           //rotation
  translate(x+bullet.width/2, y2+bullet.height/2);
  rotate(speed);
  
  translate(-bullet.width/2, -bullet.height/2);
   image(bullet,0,0);
   popMatrix();
   
   
   
   if(youdead!=true){                                    //check if you survive in the game
     if(mouseX>800&&mouseX<1000 && mouseY>700&&mouseY<800){       
        if(mousePressed==true){ 
          start=true;
          notbullet2.jump(1);                              //reset the gif         
         }     
        else{
           start=false;   
         }
       }
      }
   if(start==true){ 
     speed=speed-9;                                   //rotation speed
     Finalslot=int (random(slot.length));             //random pc choose value
    }
   else{
     speed=0;
     
     if(Finalslot==0){
       image(slot1,50,500); 
       youdead=true;
       image(youaredead,0,0);
       image(restart,300,650);
       totaltry=0;
         if (mousePressed==true){
            Finalslot=10;
            youdead=false;
            }
      }
     
     else if(Finalslot==1){
      image(slot2,50,500); 
      image(notbullet2 ,450,200,800,600);   
     }
     
     else if(Finalslot==2){
      image(slot3,50,500); 
      image(notbullet2 ,450,200,800,600);  
     }
     else if(Finalslot==3){
      image(slot4,50,500); 
      image(notbullet2 ,450,200,800,600);     
     }
     else if(Finalslot==4){
      image(slot5,50,500); 
      image(notbullet2 ,450,200,800,600);        
     }
     else if(Finalslot!=10){       
       image(slot6,50,500); 
       image(notbullet2 ,450,200,800,600);
       }
   }

}
