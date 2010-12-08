class Bairros{
  String nome;
  int posX;
  int posY;
  
  public Bairros(String[] pieces){
    nome = pieces[0].toUpperCase();
    posX = int(pieces[1]);
    posY = int(pieces[2]);
  }
}
