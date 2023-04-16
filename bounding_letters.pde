ArrayList<BL> bls;

void setup()
{
  size(512, 512);
  
  //printArray(PFont.list());
  PFont font = createFont("HiraginoSans-W0", 50);
  textFont(font);
  
  bls = new ArrayList<BL>();
  addLetters("明日は会社", 50, color(255, 0, 0), 0, 50, 1);
  addLetters("休みは終わり", 40, color(255, 0, 255), 30, 150, 2);
  addLetters("だるい", 60, color(200, 200, 0), 50, 300, 1.5);
  addLetters("仕事が始まる", 30, color(200, 30, 200), 30, 350, 3);
}

void addLetters(String letters, float ls, color lc, float x, float y, float vx)
{
  for (int i = 0; i < letters.length(); ++i)
  {
    char l = letters.charAt(i);
    bls.add(new BL(l, ls, lc, x + i * (ls + 10), y, vx, 0));
  }
}

void draw()
{
  background(0);
  
  for (BL bl : bls)
  {
    bl.update();
    bl.display();
  }
}
