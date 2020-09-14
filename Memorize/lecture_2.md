#  Lecture 2 Notes

## Architecture

* MVVM pattern
    * It's a design paradigm, a 'code organizing' design paradigm.
    * aids in the concept of reactive UI.
    * different from the traditional MVC pattern.
    
There are 3 main components to this architecture
* Model
    * the model is UI independent
    * It's the data + logic
    * the source of 'truth'
* ViewModel
    * Binds View to Model
    * It's the ___Interpreter___
* View
    * Reflects the Model
    * Stateless
    * Declared
    * ___Reactive___

### Read
When the __Model__ changes (i.e. data), The __ViewModel__ publishes an event ("Something Changed"),
this is _subscribed to_ and _captured_ by the __View__. The __View__ automatically will then pull data and rebuild.

### Write
When the __View__ wants to write data to the __Model__, it will call an ___Intent___ function.
The __ViewModel__ will then take care of _modifying the_ __Model__.
    

* Swift types
    * struct
    * class
    * protocol
    * generics
    * enums
    * functions (func)
    

## Important distinctions ( Struct  vs  Class )
* `struct`
    * Value type
    * _Copied_ when passed or assigned
    * __Copy on Write__
    * Functional
    * "Free" `init` initializes all `var`s
    * Mutability must be explicitly stated

* `class`
    * Reference type
    * passed around via _pointers_
    * Automatically reference counted
    * OOP
    * "Free" `init` initializes NO `var`s
    * Always mutable
    * __ViewModel__ in __MVVM__ is always a `class`


## Generics
### Example of a user of generics is `Array`
The declaration for Array looks something like:
```swift
struct Array<Element> {
    ...
    func append(_ element: Element) { ... }
}
```
