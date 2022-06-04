/*print("Hello, world!")*/
/*let a: Set = [1, 2, 3]*/

/*let b: Set = [3, 5, 2]*/

/*if !a.isSubset(of: b) {*/
    /*let c: Set = a.intersection(b)*/
    /*print(c)*/
/*} */

/*var test = [1:"A", 2:"B", 3:"C"]*/
/*test[3] = nil*/
/*print(test.count)*/

/*var airports = ["TOR": "Toronto", "NY": "New York"]*/
/*for (airportCode, airportName) in airports {*/
   /*print("\(airportCode): \(airportName)")*/
/*}*/

/*var airports = ["TOR": "Toronto", "NY": "New York"]*/
/*for airportCode in airports.keys {*/
   /*print("Airport code: \(airportCode)")*/
/*}*/
 
/*for airportName in airports.values {*/
   /*print("Airport name: \(airportName)")*/
/*}*/

/*var result = 0;*/
/*for i in 0...4 {*/
  /*if i == 3 { */
     /*result += 10;*/
   /*} else {*/
     /*result += i;*/
   /*}*/
/*}*/
/*print(result)*/

/*func sayHello(personName: String) -> String {*/
   /*let greeting = "Hello, " + personName + "!"*/
   /*return greeting*/
/*}*/
/*print(sayHello(personName: "James"))*/

/*func rangeLength(start: Int, end: Int) -> Int {*/
   /*return end - start*/
/*}*/
/*print(rangeLength(start: 2, end: 7))*/

/*func minMax(array: [Int]) -> (min: Int, max: Int) {*/
   /*var currMin = array[0]*/
   /*var currMax = array[0]*/
   /*for value in array[1..<array.count] {*/
      /*if value < currMin {*/
        /*currMin = value*/
      /*} else if value > currMax {*/
         /*currMax = value*/
      /*}*/
   /*}*/
  /*return (currMin, currMax)*/
/*}*/
/*print(minMax(array: [1, 2, 3, 4, -6, 11]))*/

/*func minMax(array: [Int]) -> (min: Int, max: Int) {*/
   /*var currMin = array[0]*/
   /*var currMax = array[0]*/
   /*for value in array[1..<array.count] {*/
      /*if value < currMin {*/
        /*currMin = value*/
      /*} else if value > currMax {*/
         /*currMax = value*/
      /*}*/
   /*}*/
  /*return (currMin, currMax)*/
/*}*/

/*let bounds = minMax(array: [4, -4, 1, 88, 7, 42])*/
/*print("min is \(bounds.min) and max is \(bounds.max)")*/


/*func test(n1: Int, n2:Int) -> (a: Int, b: Int) {*/
   /*return ((n1-n2), (n1+n2))*/
/*}*/
/*let tmp = test(n1: 8, n2: 3)*/
/*print(tmp.b)*/

/* Variadic parameter */
func arithmeticMean(numbers: Double...) -> Double {
   var total: Double = 0
   for number in numbers {
     total += number
   }
   return (total / Double(numbers.count))
}
print(arithmeticMean(numbers: 3.3, 4.4, 6.6))

/* Inout parameter */
func swapInts(a: inout Int, b: inout Int) {
   let tempA = a
   a = b
   b = tempA
}
var a = 5
var b = 6
print("Before swap: a is \(a) and b is \(b)")
swapInts(a: &a, b: &b)
print("After swap: a is \(a) and b is \(b)")

/* Function Types as Parameter Types */
func addInts(a: Int, b: Int) -> Int {
   return a + b
}

func printResult(mathFunc: (Int, Int) -> Int, a: Int, b: Int) {
   print("Result: \(mathFunc(a, b))")
}
printResult(mathFunc: addInts, a: 3, b: 5) 

/*Nested Functions*/
func chooseFunc(flag: Bool) -> (Int) -> Int {
   func plus(input: Int) -> Int { return input + 1 }
   func minus(input: Int) -> Int { return input - 1 }
   if(flag) {
     return plus
   }
   else {
     return minus
   }
}
print(chooseFunc(flag: true)(42))

/* Recursion */
func factorial(n: Int) -> Int {
  return n == 0 ? 1 : n * factorial(n: n-1)
}
print(factorial(n: 5))

func fib(n: Int) -> Int {
  return n < 2 ? n : (fib(n: n-1) + fib(n: n-2))
}
print(fib(n: 3))

/* Sorted function */
func backwards(s1: String, s2: String) -> Bool {
   return s1 > s2
}
let names_letters = ["Cc", "Aa", "Ee", "Bb", "Dd"]
print(names_letters)
var reversed_a = names_letters.sorted(by: backwards)
print(reversed_a)

/* Sorted function using closure expression syntax */
var reversed = names_letters.sorted(by: { (s1: String, s2: String) -> Bool in
   return s1 > s2
})
print(reversed)

/* Sorted function inferred types */
var reversed_b = names_letters.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversed_b)


/* Inferring type from contetx */
func order(arr: [Int]) -> [Int] { 
    arr.sorted(by: { n1, n2 in n1 > n2 })
}
let number = [1, 5, 6]
let result = order(arr: number)
print(result)

/* Shorter way */
let names = ["c", "a", "e", "b"]
let res = names.sorted(by: <)
print(res[0])

