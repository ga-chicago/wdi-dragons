## Abstract Classes in a Nutshell

* Our **Ancestor** exists! They were a mighty warrior!
* Notice the use of an **abstract** class...
* This means that not all methods must be implemented!
* We can define that a method should exist. If so, any class that inherits from this one should implement it instead!

```csharp
using System;

/// <summary>
/// Summary description for Class1
/// </summary>
public abstract class Ancestor
{
    public void CreateLegacy()
    {
        Console.WriteLine("THE LEGACY OF OUR FAMILY IS TO RULE ALL");
    }

    // define abstract method... maybe someone will inherit this?
    public abstract void ForgeLegacy();
    public String WeaponOfChoice { get; set; }

}
```

* My **GreatGrandfather** inherited abilities from him!

```csharp
using System;

/// <summary>
/// Summary description for Class1
/// </summary>
public class GreatGrandfather : Ancestor
{
	public GreatGrandfather()
	{
        this.WeaponOfChoice = "His intellect";
	}

    public void ForgeLegacy()
    {
        //this.DefineRocketSchematic();
    }
}
```
