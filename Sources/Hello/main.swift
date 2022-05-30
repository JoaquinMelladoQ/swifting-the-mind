print("Hello, world!")
let a: Set = [1, 2, 3]

let b: Set = [3, 5, 2]

if !a.isSubset(of: b) {
    let c: Set = a.intersection(b)
    print(c)
} 

var test = [1:"A", 2:"B", 3:"C"]
test[3] = nil
print(test.count)

/*var airports = ["TOR": "Toronto", "NY": "New York"]*/
/*for (airportCode, airportName) in airports {*/
   /*print("\(airportCode): \(airportName)")*/
/*}*/

var airports = ["TOR": "Toronto", "NY": "New York"]
for airportCode in airports.keys {
   print("Airport code: \(airportCode)")
}
 
for airportName in airports.values {
   print("Airport name: \(airportName)")
}

var result = 0;
for i in 0...4 {
  if i == 3 { 
     result += 10;
   } else {
     result += i;
   }
}
print(result)

func sayHello(personName: String) -> String {
   let greeting = "Hello, " + personName + "!"
   return greeting
}
print(sayHello(personName: "James"))

func rangeLength(start: Int, end: Int) -> Int {
   return end - start
}
print(rangeLength(start: 2, end: 7))

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

func minMax(array: [Int]) -> (min: Int, max: Int) {
   var currMin = array[0]
   var currMax = array[0]
   for value in array[1..<array.count] {
      if value < currMin {
        currMin = value
      } else if value > currMax {
         currMax = value
      }
   }
  return (currMin, currMax)
}

let bounds = minMax(array: [4, -4, 1, 88, 7, 42])
print("min is \(bounds.min) and max is \(bounds.max)")


func test(n1: Int, n2:Int) -> (a: Int, b: Int) {
   return ((n1-n2), (n1+n2))
}
let tmp = test(n1: 8, n2: 3)
print(tmp.b)
