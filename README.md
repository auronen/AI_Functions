# AI_Functions
Proof of concept plugin that implements mechanism to run any function as part of the NPC AI queue. This plugin implements one external function 

``` c++
func void AI_CallFunction(var C_NPC npc, var func f, ...) {};
```

This function is variadic (takes variable number of arguments) and can call Daedalus and external functions.
