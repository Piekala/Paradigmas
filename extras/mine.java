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
abstract class bloco {
  protected int tipo;
  public abstract bloco quebra();
}

class madeira extends bloco {
  public madeira(){
    tipo = 1;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma madeira e recebeu uma madeira\n");
    return new madeira();
  }
}

class terra extends bloco {
  public terra(){
    tipo = 2;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma terra e recebeu uma terra\n");
    return new terra();
  }
}

class grama extends bloco{
  public grama(){
    tipo = 3;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma grama e recebeu uma terra\n");
    return new terra();
  }
}

class pedregulho extends bloco {
  public pedregulho(){
      tipo = 4;
  }
  public bloco quebra(){
      System.out.println("Você quebrou um pedregulho e recebeu um pedregulho\n");
      return new pedregulho();
  }
}

class pedra extends bloco {
  public pedra(){
    tipo = 5;
  }
  public bloco quebra(){
    System.out.println("Você quebrou uma pedra e recebeu um pedregulho\n");
    return new pedregulho();
  }
}
