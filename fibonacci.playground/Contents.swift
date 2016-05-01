// einzelne n-te fibonacci zahl
func fibonacci (n:Int) -> (Int) {
    if (n<3) {return 1}
    else {
        var a=1, b=1, z:Int
        for _ in 3...n {
            z = a+b
            a = b
            b = z
        }
        return b
    }
}

// alle fibonacci zahlen bis zur n-ten
func fib_up_to (n:Int) -> [Int] {
    var fibs = [Int]()
    for i in 1...n {
        fibs.append(fibonacci(i))
    }
    return fibs
}

print(fib_up_to(90))

// Fehler für n>92...?