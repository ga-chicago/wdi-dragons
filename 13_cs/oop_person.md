## Let's Define a Person Class!

* It will inherit from the `Mammalia` **Interface**.
* It also implements `Eukaryote`, an **Abstract Class**.

```csharp
using System;
using System.Collections;

public class Person : Mammalia, Eukaryote
{
    //def initialize(*args) ... end
    //c# constructor:
    /// <summary>
    /// Constructor for new Person("James", 42);
    /// var james = new P-erson("James", 31);
    /// </summary>
    /// <param name="userName">String</param>
    /// <param name="userAge">int</param>
	public Person(string userName, int userAge)
	{
        this.Age = userAge;
        this.Name = userName;
	}
    /// <summary>
    /// var james = new Person()
    /// </summary>
    /// <param name="userName"></param>
    /// <param name="age"></param>
    public Person(string userName = "New User", int? age)
    {
        if (userName != "New User")
        {
            this.Name = userName;
        }
    }

    // attributes
    public string Name { get; set; }
    public int Age { get; set; }
    private int Temperature { get; set; }
    public int CellCount { get; set; }

    public void RaiseChildren(Person myChild)
    {
        //nyi
        //myChild.raiseCorrectlySendToGoodSchool();
    }

    public void StartMitonchondria(Person self)
    {
        this.CellCount = 2;
    }

    public void MaintainBodyTemperature()
    {
        this.Temperature = 99;
    }
}
```
