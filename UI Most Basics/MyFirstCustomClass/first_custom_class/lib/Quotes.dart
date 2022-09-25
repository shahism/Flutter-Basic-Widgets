class Quotes{

  String quote = "";
  String author = ""; 

// Quotes({required String quotes, required String author}){

//     this.quotes = quotes;
//     this.author = author;

//   }


Quotes({required this.author,required this.quote}){
  // instead of above code this can be used to form a class object.
  // it will automatically assigns the values.
}

}

// Quotes q1 = new Quotes("Data Structures and Algorithm are must for placement", "Sir Ahmad");

// Quotes q2 = new Quotes(author: "Wasif Ba safaa",quotes: "talab saadiq uski houti hai jiise nawazma ho!");
// required keyword k saath yun bhi use krsktay hain.


