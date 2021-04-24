import UIKit
//: # Home Work 4

/*:
 ## Задание 1
 Пользователь открывает вклад (deposit) в банке на 5 лет (period) на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия вклада и вывести результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...> рублей".  Для решения данной задачи используйет цикл for-in.
 
 > Cумма вклада увеличивается с каждым годом и процент нужно считать уже от увелеченной суммы.
  */
//Вариант решения 1
//var deposit = 500000.00
//let period = 5
//let rate = 0.11
//var totalProfit = 0.0
//var annualProfit: Double
//
//for _ in 1...period {
//    annualProfit = deposit * rate
//    totalProfit += annualProfit
//    deposit += annualProfit
//}
//
//let depositRounded = String(format: "%.2f", deposit)
//let profitRounded = String(format: "%.2f", totalProfit)
//
//print("Сумма вклада через \(period) лет увеличится на \(profitRounded) и составит \(depositRounded) рублей")


//Вариант решения 2 думаю больше подходит
var deposit = 500000.00
let period = 5
let rate = 0.11
let profit: Double

var annualDeposit = deposit

for _ in 1...period {
    annualDeposit += annualDeposit * rate
}

profit = annualDeposit - deposit

let depositRounded = String(format: "%.2f", annualDeposit)
let profitRounded = String(format: "%.2f", profit)

//я могла сразу в print использовать округление, но это будет не так читабельно, правильно?
print("Сумма вклада через \(period) лет увеличится на \(profitRounded) и составит \(depositRounded) рублей")
/*:
 ## Задание 2
 2.1 Создайте целочисленный массив данных с любым набором чисел.
*/
let arrayInteger = [3, 8, 9, 6, 3, 12]
//: 2.2 Выведите на консоль все четные числа из массива
print("Четные числа:")
for number in arrayInteger {
    if number % 2 == 0 {
        print(number)
    }
}
/*: 2.3* В циклах для перехода к следующей итерации без выполнения последующего кода можно использовать опретор `Continue`. В этом случае весь последующий код игорируется.
 
 Используя оператор `Continue` выведите на консоль все нечетные числа из массива. Для этого нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.
*/
print("Нечетные числа:")
for number in arrayInteger {
    if number % 2 == 0 {
       continue
    }
    print(number)
}
/*: ## Задание 3
Создайте цикл с интервалом от 1 до 10 в котором случайным образом вычисляеться число в пределах от 1 до 10. Если выпадет число 5, выведите на коносль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...> итераций".

Для остановки цикла используйте оператор breack. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
 
 Для определения случайного числа используйте функцию random: `Int.random(1...10)`
*/

for counter in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    
    if randomNumber == 5 {
        print("Что бы выпало число 5 понадобилось \(counter) итераций")
        break
    }
}
/*:
 ## Задание 4
  На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на один. Определите при помощи цикла, через сколько дней она заберетсья на столб. Подумайте над тем, какой цикл использовать в этой ситуации.
 */
let distance = 10
let dayDistance = 2
let nightDistance = -1
var traveledDistance = 0
var days = 0

while traveledDistance < distance {
    days += 1
    traveledDistance += dayDistance
    if traveledDistance >= distance {
        print("Пройдено за \(days) дней")
        break
    }
    traveledDistance += nightDistance
}
