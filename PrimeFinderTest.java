/*
 * Author: Amittai Aviram - aviram@bc.edu
 */

public class PrimeFinderTest {

  public static void main(String[] args) {
    int sieveSize = 1 << 8;
    if (args.length > 0) {
      sieveSize = Integer.parseInt(args[0]);
    }
    PrimeFinder finder = new PrimeFinder(sieveSize);
    while (finder.hasNext()) {
      System.out.print(finder.next() + " ");
    }
    System.out.println("");
  }
}
