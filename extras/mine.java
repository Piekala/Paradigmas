abstract class bloco {
  int tipo;
  public abstract bloco quebra();
}

class madeira extends bloco {
  public madeira(){
    tipo = 1;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma madeira e recebeu uma madeira\n");
    madeira m = new madeira();
    return m;
  }
}

class terra extends bloco {
  public terra(){
    tipo = 2;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma terra e recebeu uma terra\n");
    terra t = new terra();
    return t;
  }
}

class grama extends bloco{
  public grama(){
    tipo = 3;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma grama e recebeu uma terra\n");
    terra t = new terra();
    return t;
  }
}

class pedregulho extends bloco {
  public pedregulho(){
      tipo = 4;
  }
  public bloco quebra(){
      System.out.println("Você quebrou um pedregulho e recebeu um pedregulho\n");
      pedregulho p = new pedregulho();
      return p;
  }
}

class pedra extends bloco {
  public pedra(){
    tipo = 5;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma pedra e recebeu um pedregulho\n");
    bloco p = new pedregulho();
    return p;
  }
}
