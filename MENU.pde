import processing.sound.*;
SoundFile mario;
SoundFile sonic;
import processing.video.*;
Movie filme1;
Movie filme2;
Movie filme3;
int[] button = new int[12];
int[] back = new int[12];
int var;
int xB1=15, yB1=15;
int men;
PImage mapa;
PImage logo;
PImage meu;
color backgr1 = 0;
color backgr2 = #F0F0F0;
color oli = #B4CA02;
color azul = #0D27FF;
color fon = #1B1B1B;
color cam = #222F4C;
color black = #1A1A1A;
String ply = "Vídeo Promocional";
String bck = "< VOLTAR";
String open = "Abre:";
String close = "Fecha:";
String local = "Local:";
String sob = "Selecione o Bloco";
String menu = "MENU";
String b1a = "Bloco 1 - Amarelo"; //[Nº1]
String b2a = "Bloco 2 - Azul"; //[Nº2]
String b3v = "Bloco 3 - Verde"; //[Nº3]
String b4l = "Bloco 4 - Laranja"; //[Nº4]
String b5v = "Bloco 5 - Vermelho"; //[Nº5]
String b6v = "Bloco 6 - Vermelho"; //[Nº6]
String bm = "Bloco Mecânica"; //[Nº7]
String t = "TECPUC"; //[Nº8]
String l = "LABCOM"; //[Nº9]
String g = "Ginásio"; //[Nº10]
String fda = "FTD Digital Arena"; //[Nº11]
String of = "Oliveira's Food"; //1
String yc = "Yama Café"; //2
String tbss = "Tropical Banana Sucos e Sanduiches"; //3
String ap = "Augusta Pizzaria"; //4
String ghp = "Guana Hari Pastéis"; //5
String yjc = "Yokohama Japanese Cusine"; //6
String fbg = "Fren's Buerguer e Grill"; //7
String pt = "Pappone Trattoria"; //8
String ab = "Angra Bistrô"; //9
String bc = "Belavi Café"; //10
String tc = "Today Café"; //11
String hcl = "Haluche Café e Lanches"; //12
String ec = "Exprex Café"; //13
String ghc = "Gluck Haus Café"; //14

void setup() {
  //basico
  size(500, 900);
  background(backgr1);
  
  mapa = loadImage("mapa_PUC.png");
  meu = loadImage("menulogo.png");
  logo = loadImage("puclogo.png");
  
  mario = new SoundFile(this, "mario_music.mp3");
  mario.loop();
  
  sonic = new SoundFile(this, "sonic_musica.mp3");
  
  filme1 = new Movie(this, "oliveiras_video.mp4");
  filme1.loop();
   
  filme2 = new Movie(this, "gluckhaus_video.mp4");
  filme2.loop(); 
  
  filme3 = new Movie(this, "exprex_video.mp4");
  filme3.loop(); 
  filme3.volume(0);
   
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //menu
  image(meu, 50, 80);
  image(logo, 355, 78);
  //selecionar
  fill(0);
  textSize(18);
  text(sob, 174,195);
  
  //Bloco 1 - Amarelo [Nº1]
  fill(backgr2);
  rect(50,210,400,50);
  fill(0);
  textSize(20);
  text(b1a, 165, 241);
  
  //Bloco 2 - Azul [Nº2]
  fill(backgr2);
  rect(50,270,400,50);
  fill(0);
  textSize(20);
  text(b2a, 181, 301);
  
  //Bloco 3 - Verde [Nº3]
  fill(backgr2);
  rect(50,330,400,50);
  fill(0);
  textSize(20);
  text(b3v, 175, 361);
  
  //Bloco 4 - Laranja [Nº4]
  fill(backgr2);
  rect(50,390,400,50);
  fill(0);
  textSize(20);
  text(b4l, 167, 420);
  
  //Bloco 5 - Vermelhor [Nº5]
  fill(backgr2);
  rect(50,450,400,50);
  fill(0);
  textSize(20);
  text(b5v, 156, 480);

  //Bloco 6 - Vermelho [Nº6]
  fill(backgr2);
  rect(50,510,400,50);
  fill(0);
  textSize(20);
  text(b6v, 156, 540);
  
  //Bloco Mecânica [Nº7]
  fill(backgr2);
  rect(50,570,400,50);
  fill(0);
  textSize(20);
  text(bm, 176, 605);

  //TECPUC [Nº8]
  fill(backgr2);
  rect(50,630,400,50);
  fill(0);
  textSize(20);
  text(t, 211, 665);

  //LABCOM [Nº9]
  fill(backgr2);
  rect(50,690,400,50);
  fill(0);
  textSize(20);
  text(l, 209, 725);
 
  //Ginásio [Nº10]
  fill(backgr2);
  rect(50,750,400,50);
  fill(0);
  textSize(20);
  text(g, 214, 785);

  //FTD Digital Arena [Nº11]
  fill(backgr2);
  rect(50,810,400,50);
  fill(0);
  textSize(20);
  text(fda, 163.5, 845);
}

void movieEvent(Movie m) {m.read();}

void mousePressed(){  
  //Bloco 1 - Amarelo
  if((mouseY<(210+50))&&(mouseY>210)){if((mouseX<(50+400))&&(mouseX>50)){button[1]=1;}}
  //Bloco 2 - Azul [Nº2]
  if((mouseY<(270+50))&&(mouseY>270)){if((mouseX<(50+400))&&(mouseX>50)){button[2]=1;}}
  //Bloco 3 - Verde [Nº3]
  if((mouseY<(330+50))&&(mouseY>330)){if((mouseX<(50+400))&&(mouseX>50)){button[3]=1;}}
  //Bloco 4 - Laranja [Nº4]
  if((mouseY<(390+50))&&(mouseY>390)){if((mouseX<(50+400))&&(mouseX>50)){button[4]=1;}}
  //[Nº5]
  if((mouseY<(450+50))&&(mouseY>450)){if((mouseX<(50+400))&&(mouseX>50)){button[5]=1;}}
  //[Nº6]
  if((mouseY<(510+50))&&(mouseY>510)){if((mouseX<(50+400))&&(mouseX>50)){button[6]=1;}}
  //[Nº7]
  if((mouseY<(570+50))&&(mouseY>570)){if((mouseX<(50+400))&&(mouseX>50)){button[7]=1;}}
  //[Nº8]
  if((mouseY<(630+50))&&(mouseY>630)){if((mouseX<(50+400))&&(mouseX>50)){button[8]=1;}}
  //[Nº9]
  if((mouseY<(690+50))&&(mouseY>690)){if((mouseX<(50+400))&&(mouseX>50)){button[9]=1;}}
  //[Nº10]
  if((mouseY<(750+50))&&(mouseY>750)){if((mouseX<(50+400))&&(mouseX>50)){button[10]=1;}}
  //[Nº11]
  if((mouseY<(810+50))&&(mouseY>810)){if((mouseX<(50+400))&&(mouseX>50)){button[11]=1;}}
  
  //back
  if((mouseY<(65+22.5))&&(mouseY>65)){if((mouseX<(29+80))&&(mouseX>29)){button[0]=2;sonic.play();}
 }
  
  //Bloco 1 - Amarelo [Nº1]
  if(button[1]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b1a
  fill(0);
  textSize(25);
  text(b1a, 140.5, 110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //1
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(of, 179, 200);
  //2
  fill(backgr2);
  rect(50,230,400,50);
  fill(0);
  textSize(20);
  text(yc, 198, 260);
  image(mapa, 50.5, 590);
  }
  
  //Bloco 2 - Azul [Nº2]
  if(button[2]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b2a
  fill(0);
  textSize(25);
  text(b2a, 164,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //3
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(tbss, 75.5, 200);
  //4
  fill(backgr2);
  rect(50,230,400,50);;
  fill(0);
  textSize(20);
  text(ap, 169.5, 260);
  //5
  fill(backgr2);
  rect(50,290,400,50);;
  fill(0);
  textSize(20);
  text(ghp, 160, 320);
  //6
  fill(backgr2);
  rect(50,350,400,50);;
  fill(0);
  textSize(20);
  text(yjc, 117, 380);
  //7
  fill(backgr2);
  rect(50,410,400,50);;
  fill(0);
  textSize(20);
  text(fbg, 142, 440);
  //8
  fill(backgr2);
  rect(50,470,400,50);;
  fill(0);
  textSize(20);
  text(pt, 163, 500);
  //9
  fill(backgr2);
  rect(50,530,400,50);;
  fill(0);
  textSize(20);
  text(ab, 191, 560);
  image(mapa, 50.5, 590);
  }
  
  //Bloco 3 - Verde [Nº3]
  if(button[3]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b3v
  fill(0);
  textSize(25);
  text(b3v, 156,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //10
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(bc, 197.5, 200);
  //14
  fill(backgr2);
  rect(50,230,400,50);;
  fill(0);
  textSize(20);
  text(ghc, 170, 260);
  image(mapa, 50.5, 590);
  }
  
  //Bloco 4 - Laranja [Nº4]
  if(button[4]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b4l
  fill(0);
  textSize(25);
  text(b4l, 147,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //2
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(yc, 198, 200);
  image(mapa, 50.5, 590);
  }
  
  //Bloco 5 - Vermelho [Nº5]
  if(button[5]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b5v
  fill(0);
  textSize(25);
  text(b5v, 133,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //11
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(tc, 195.5, 200);
  //14
  fill(backgr2);
  rect(50,230,400,50);;
  fill(0);
  textSize(20);
  text(ghc, 170, 260);
  image(mapa, 50.5, 590);
  }

  //Bloco 6 - Vermelho [Nº6]
  if (button[6]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //b6v
  fill(0);
  textSize(25);
  text(b6v, 133,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //1
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(of, 179, 200);
  image(mapa, 50.5, 590);
  }
  
  //Bloco Mecânica [Nº7]
  if(button[7]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //bm
  fill(0);
  textSize(25);
  text(bm, 157.5,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //yc
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(yc, 198, 200);
  image(mapa, 50.5, 590);
  }
  
  //TECPUC [Nº8]
  if(button[8]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //t
  fill(0);
  textSize(25);
  text(t, 202.5,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //ghc
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(ghc, 170, 200);
  image(mapa, 50.5, 590);
  }
  
  //LABCOM [Nº9]
  if(button[9]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //l
  fill(0);
  textSize(25);
  text(l, 199.5,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //of
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(of, 179, 200);
  image(mapa, 50.5, 590);
  }
 
  //Ginásio [Nº10]
  if(button[10]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //g
  fill(0);
  textSize(25);
  text(g, 205,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //hcl
  fill(backgr2);
  rect(50,170,400,50);;
  fill(0);
  textSize(20);
  text(hcl, 136, 200);
  image(mapa, 50.5, 590);
  }
  
  //FTD Digital Arena [Nº11]
  if(button[11]==1){
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //fda
  fill(0);
  textSize(25);
  text(fda, 143.5,110); 
  //back
  fill(backgr2);
  rect(29, 65, 80, 22.5, 7);
  fill(0);
  textSize(15);
  text(bck, 30, 80);
  //ec
  fill(backgr2);
  rect(50,170,400,50);
  fill(0);
  textSize(20);
  text(ec, 192, 200);
  image(mapa, 50.5, 590);
  }} 


void draw() {

  //videp Oliveiras
  if(button[1]==1){image(filme1,50.5,300,400,250);filme1.play();}
  
  //Video Gluck Haus
  if(button[3]==1){image(filme2,50.5,300,400,250);filme2.play();}
  
  //Video Gluck Haus 
  if(button[5]==1){image(filme2,50.5,300,400,250);filme2.play();}
  
  //Video Oliveiras
  if(button[6]==1){image(filme1,50.5,300,400,250);filme1.play();}
  
  //Video Exprex
  if(button[11]==1){image(filme3,50.5,300,400,250);filme3.play();}

  //voltar
  if(button[0]==2){filme1.pause();filme2.pause();filme3.pause();mario.pause();
  //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //menu
  image(meu, 50, 80);
  image(logo, 355, 78);
  //selecionar
  fill(0);
  textSize(18);
  text(sob, 174,195);
  
    //fundo
  fill(backgr2);
  rect(15, 15, 470, 870, 35);
  //note
  fill(backgr1);
  rect(100, 0, 300, 57, 0, 0, 35, 35);
  fill(fon);
  rect(207.5,27,85,10,35);
  circle(315,33,23);
  fill(cam);
  circle(315,33,13);
  //menu
  image(meu, 50, 80);
  image(logo, 355, 78);
  //selecionar
  fill(0);
  textSize(18);
  text(sob, 174,195);
  
  //Bloco 1 - Amarelo [Nº1]
  fill(backgr2);
  rect(50,210,400,50);
  fill(0);
  textSize(20);
  text(b1a, 165, 241);
  
  //Bloco 2 - Azul [Nº2]
  fill(backgr2);
  rect(50,270,400,50);
  fill(0);
  textSize(20);
  text(b2a, 181, 301);
  
  //Bloco 3 - Verde [Nº3]
  fill(backgr2);
  rect(50,330,400,50);
  fill(0);
  textSize(20);
  text(b3v, 175, 361);
  
  //Bloco 4 - Laranja [Nº4]
  fill(backgr2);
  rect(50,390,400,50);
  fill(0);
  textSize(20);
  text(b4l, 167, 420);
  
  //Bloco 5 - Vermelhor [Nº5]
  fill(backgr2);
  rect(50,450,400,50);
  fill(0);
  textSize(20);
  text(b5v, 156, 480);

  //Bloco 6 - Vermelho [Nº6]
  fill(backgr2);
  rect(50,510,400,50);
  fill(0);
  textSize(20);
  text(b6v, 156, 540);
  
  //Bloco Mecânica [Nº7]
  fill(backgr2);
  rect(50,570,400,50);
  fill(0);
  textSize(20);
  text(bm, 176, 605);

  //TECPUC [Nº8]
  fill(backgr2);
  rect(50,630,400,50);
  fill(0);
  textSize(20);
  text(t, 211, 665);

  //LABCOM [Nº9]
  fill(backgr2);
  rect(50,690,400,50);
  fill(0);
  textSize(20);
  text(l, 209, 725);
 
  //Ginásio [Nº10]
  fill(backgr2);
  rect(50,750,400,50);
  fill(0);
  textSize(20);
  text(g, 214, 785);

  //FTD Digital Arena [Nº11]
  fill(backgr2);
  rect(50,810,400,50);
  fill(0);
  textSize(20);
  text(fda, 163.5, 845);
}
}  
