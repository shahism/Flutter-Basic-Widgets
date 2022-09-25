# Why Navigation and Routing?
- To simply move from one screen to another
- To move data from one screen to another

# Navigation
- Simple way
- Recommended for very small Apps (so not a Professional Practice as usually min 40+ Screens are there)
 
- Moving from one Screen to another
- It Uses stack (Last in ->> First out)
- Different Methods to:
- Push 
- Pop
``` dart
onTap : (){
    Navigator.pop(context)
}
```
```dart
onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ScreenThree()));
              },
```

## What if Data is to be moved?
- The data required for Screen two will be taken in the Constructor of that screen and it will be provided in the call.


# Routing

- The Navigation is done on the basis of some Unique Id for each Screen.
- It is the recommended way
- Professional Practice++
- One dart file for `RouteNames`
- One Dart file for `Generating Routes`
- The info about the routes will be given in the first calling MaterialApp's properties such as
1) initialRoute
2) onGenerateRoute

- We will create named Routes for managing big Applications
- In this case we will `Navigator.pushNamed()`


## What if Data is to be moved?
- The class from which you have to move data will take an extra 
argument namely `argument` in `Navigator.pushNamed()`
- The data can be passed in it as MAP (Key-Value pairs)
- In the class in which you have to


