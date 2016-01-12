// public: accessible to the rest of my application
// static: immutable method
// void: is the return type (void == no return type neede)
// arguments: require type + variable name
public class HelloWorld {
  public static void main(String[] args) {
    // Console.log() for Java
    System.out.println("Hello, friends.");
    // loop through our arguments
    // we must declare an incrementor
    // as an integer (int)
    for (int i = 0; i < args.length; i++) {
      System.out.println(args[i]);
    }
    System.out.println("All arguments should have been listed by now.");
    System.out.println("Have a great day! :)");
  }
}
