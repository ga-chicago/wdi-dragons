## An Interface

* An **interface** is designed to spec out functionality.
* It **does not** implement them.
* Classes that **inherit** from **interfaces** *must* implement an interface's methods.
* You can check to see if `if (Person is Mammalia) ...` thanks to inheritance!

```csharp
using System;

public interface Mammalia
{
    public void RaiseChildren(object creature);
    public void MaintainBodyTemperature(object creature);
}
```
