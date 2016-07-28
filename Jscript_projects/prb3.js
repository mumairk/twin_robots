/*Largest prime factor
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?*/

var Num =  13195;

var PrimeArray = [];

for (var i = 0; i < Num; i++) {
  if (Num % i === 0){
    Num = Num/i;
    PrimeArray.push[n];
  }
}
    console.log(PrimeArray);
    console.log(PrimeArray)

    var Num =  600851475143;
var PrimeArray = [];


for (var i = 0; i < Num; i++) {
  if (Num % i === 0){
    Num = Num/i;
    PrimeArray.push(Num);
  }
}



console.log(PrimeArray);
  console.log(PrimeArray[PrimeArray.length - 1]);
