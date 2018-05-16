class coordenadas {
  protected int x;
  protected int y;
  protected int z;
  public coordenadas(int x, int y, int z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
}

abstract class bloco {
  protected String nome;
  protected coordenadas cord;
  protected int tam;
  public abstract void quebra();
  public abstract void dropa();
}

class madeira extends bloco {

}

class terra extends bloco {

}

class grama extends bloco{

}

class pedregulho extends bloco {

}

class pedra extends bloco {

}
