PImage mapaJoinville;

Bairros[] bairros;
String[] lines;

Assassinatos[] assassinatos;
String[] qtdeAssassinatos;

void setup() {
  mapaJoinville = loadImage("mapajoinva.png");
  size(mapaJoinville.width, mapaJoinville.height);
  fill(255);
  noLoop();
  
  lines = loadStrings("bairros.tsv");
  bairros = new Bairros[lines.length];
  
  qtdeAssassinatos = loadStrings("assassinatos.tsv");
  assassinatos = new Assassinatos[qtdeAssassinatos.length];
  
  for (int i = 0; i < lines.length; i++){
    String[] pieces = split(lines[i], ';');
    bairros[i] = new Bairros(pieces);
    // Descomente as linhas abaixo para ver os dados salvos do arquivo bairros.tsv
    //    println("-----------------------");
    //    println(bairros[i].nome);
    //    println(bairros[i].posX);    
    //    println(bairros[i].posY);        
  }

  for (int y = 0; y < qtdeAssassinatos.length; y++){
    String[] pieces = split(qtdeAssassinatos[y], ';');
    assassinatos[y] = new Assassinatos(pieces);
    // Descomente as linhas abaixo para ver os dados salvos do arquivo assasinato.tsv
    //    println("-----------------------");
    //    println(assassinatos[y].data);
    //    println(assassinatos[y].bairro);
  }    
}

void draw() {
  background(255);
  image(mapaJoinville, 0,0); 
  // Desenha uma ellipse em todos os pontos X,Y dos bairros com tamanho(5,5);
  for (int i = 0; i < lines.length; i++){    
      fill(0);
      ellipse(bairros[i].posX, bairros[i].posY, 5, 5);   
  }
}






