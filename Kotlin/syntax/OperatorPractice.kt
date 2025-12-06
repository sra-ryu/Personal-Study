package syntax

fun main() {

    /** compare Object in Kotlin **/
    val money1 = JavaMoney(2000L)
    val money2 = JavaMoney(1000L)

    if (money1 > money2) {
        println("money1 is greater than money2")
    }

    /** Identity and Equality in Kotlin **/
    val money3 = money1
    val money4 = JavaMoney(1000L)

    // compare memory address: Identity(===)
    println(money1 === money4) // false

    // compare value: Equality(==)
    println(money2 == money4) // true

    /** override operator **/
    val money5 = Money(1000L)
    val money6 = Money(6000L)
    println(money5 + money6) // Kotlin override plus methode as '+'

}