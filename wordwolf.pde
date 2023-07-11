int pagenumber,n=3,m,mm,themaselecter,nn=3,timer,timeset,time,f=1;
boolean pageselect;
float select,thema2,thema3;
Table tbl;

public String themaselect(int x){
  int nextthema;
  if (x == themaselecter){
    String  getStr =  tbl. getString(int(thema2),int(thema3)) ;
    return getStr;
  }else{
    if(int(thema3)==1){
      nextthema = 0;
    }else{
      nextthema = 1;
    }
   String  getStr =  tbl. getString(int(thema2),nextthema) ;
   return getStr; 
  }
}

public void numberofplayer(int n){
  fill(0);
  textSize(70);
  text( n ,175,250);
}

public int player(int n){
  n = n-1;
  return n;
}

public void playerchange(int s){
  
  if(s%2==0){
    mm =(s/2)-1;
    textSize(50);
    fill(0);
    text("Player"+(n-mm),175,150);
    text("Are you ready?",175,250);
  }else {
    String thema;
    thema = themaselect(n-mm);
    textSize(50);
    fill(0);
    text("Your Theme is",175,200);
    textSize(50);
    
    text("\""+thema+"\"",175,300);
  }
  
}

void setup() {
  size(350, 600);
  frameRate(60);
  textSize(70);
  pagenumber = 1;
  buttontype.start = new button(100, 400, 175, 80);
  buttontype.people_low = new button(20, 200, 60, 80);
  buttontype.people_high = new button(250, 200, 60, 80);
  tbl = loadTable("theme.csv");
  textAlign(CENTER);
  
}

void draw(){
  if(pagenumber ==1){
    background(#f0e68c);
    textSize(50);
    fill(0);
    text("WORD WOLF",175,250);
    page.page1();
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 2;
      pageselect = false;
    }
    
  }else if(pagenumber ==2){
    background(#f0e68c);
    page.page2();
    textSize(50);
    fill(0);
    text("Select Playler",175,100);
    numberofplayer(n);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(6>n){
        n+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(n>3){
      n=n-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 3;
      m=2*n;
      select = random(1,n+1);
      thema2 = random(0,50);
      thema3 = random(0,2);
      pageselect = false;
    }
  }else if(pagenumber ==3){
    
    themaselecter = int(select);
    background(#f0e68c);
    page.page3();
    
    playerchange(m);
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      if(m>1){
        m--;
      }else {
        pagenumber = 4;
      }
      pageselect = false;
    }
    
  }else if(pagenumber ==4){
    background(#f0e68c);
    page.page4();
    textSize(50);
    fill(0);
    text("PLAY TIME",175,100);
    text("minutes",175,350);
    numberofplayer(nn);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(10>nn){
        nn+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(nn>3){
      nn=nn-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 5;
      nn= nn*60;
      timeset = second();
      pageselect = false;
    }
  }else if(pagenumber ==5){
    background(#f0e68c);
    page.page5();
    time = second();
    timer = nn-(time-timeset);
    numberofplayer(timer);
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
        pagenumber = 6;
      pageselect = false;
    }
    if(timer <=0 ){
      pagenumber = 6;
    }
    
  }else if(pagenumber ==6){
    background(#f0e68c);
    page.page6();
    textSize(50);
    fill(0);
    text("Select Playler",175,100);
    numberofplayer(f);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(n>f){
        f+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(f>1){
      f=f-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 7;
      pageselect = false;
    }
  }else if(pagenumber ==7){
    background(#f0e68c);
    page.page7();
    if(f==int(select)){
      fill(0);
      textSize(50);
      text( "CITIZEN WON !!!" ,175,250);
    }else{
      fill(0);
      textSize(50);
      text( "WOLF WON !!!" ,175,250);
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
        pagenumber = 1;
        nn=3;
      pageselect = false;
    }
    
  }
  
}

void mousePressed() {
  Mouse.Pressing();
}

void mouseReleased() {
  Mouse.clickTime = 0;
}

public class button{
  int x,y;
  int sizeX,sizeY,size;
  String text = "";
  
  private boolean isSelected,select;
  
  button(int _x, int _y, int _sizeX, int _sizeY){
    x = _x;
    y = _y;
    sizeX = _sizeX;
    sizeY = _sizeY;
  }
  
  public void Text(String _text,int _size){
    text = _text;
    size = _size;
  }
  
  public boolean GetClicked(){
    return isSelected;
  }
  
  public void Update(){
    
    isSelected = false;
    
    if (mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) {
      
      if (Mouse.clickTime == 1){
        isSelected = true;
      }
    }
  }
  
  public void Draw(){
    if (isSelected){
      fill(35,43,61);
    }else{
      fill(255,144,0);
    }  
    noStroke();
    rect(x, y, sizeX, sizeY);
     fill(255);
     textSize(size);
    text(text,x+(sizeX/2),y+60);
  }
}

static class Mouse{
  static int clickTime;
  static boolean firstClick;
  
  static void Pressing(){
    clickTime++;
    
    if (clickTime == 0){
      firstClick = true;
    }else{
      firstClick = false;
    }
  }
}
static class page {
  static void page1(){
    buttontype.start.Text("start",70);
    buttontype.start.Update();
    buttontype.start.Draw();
  }
  static void page2(){
    buttontype.start.Text("start",70);
    buttontype.start.Update();
    buttontype.start.Draw();
    buttontype.people_low.Text("↓",60);
    buttontype.people_low.Update();
    buttontype.people_low.Draw();
    buttontype.people_high.Text("↑",60);
    buttontype.people_high.Update();
    buttontype.people_high.Draw();
  }
  static void page3(){
    buttontype.start.Text("yes",90);
    buttontype.start.Update();
    buttontype.start.Draw();
  }
  static void page4(){
    buttontype.start.Text("start",70);
    buttontype.start.Update();
    buttontype.start.Draw();
    buttontype.people_low.Text("↓",60);
    buttontype.people_low.Update();
    buttontype.people_low.Draw();
    buttontype.people_high.Text("↑",60);
    buttontype.people_high.Update();
    buttontype.people_high.Draw();
  }
  static void page5(){
    buttontype.start.Text("end",70);
    buttontype.start.Update();
    buttontype.start.Draw();
  }
  static void page6(){
    buttontype.start.Text("start",70);
    buttontype.start.Update();
    buttontype.start.Draw();
    buttontype.people_low.Text("↓",60);
    buttontype.people_low.Update();
    buttontype.people_low.Draw();
    buttontype.people_high.Text("↑",60);
    buttontype.people_high.Update();
    buttontype.people_high.Draw();
  }
  static void page7(){
    buttontype.start.Text("next",70);
    buttontype.start.Update();
    buttontype.start.Draw();
  }
}

static class buttontype{
  static button start;
  static button next_start;
  static button people_low;
  static button people_high;
  
}
