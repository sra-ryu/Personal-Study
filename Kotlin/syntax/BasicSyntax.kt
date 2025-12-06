package syntax

import java.lang.IllegalArgumentException

fun main() {

    /*** Tip: make all variables as val and later if we need, change it to var ***/

    var num1 = 10L
    num1 = 5L // mutable

    val num2 = 10L
    // num2 = 5L immutable

    var num3: Long = 10L
    // the compiler infers type automatically(see num1), but we can specify the type

    /*** use null with '?' ***/
    var num4: Long? = 1_000L
    num4 = null

    /*** safe call ***/
    val str: String? = "ABC"
    // println(str.length) -> error! str could be null
    println(str?.length) // safe call -> str?.(...)

    /*** Elvis operator ***/
    val str2: String? = null
    println(str2?.length ?: 0) // Elvis op. = ?: -> here: print 0

    /*** use Java class in Kotlin ***/
    val person = Person("John", 25) // @Nullable -> name can be null -> Kotlin knows it
    // Platform Type: there's no information about null type -> it might be problem in Kotlin

}

/*** How to deal with null in Kotlin? ***/
fun startsWithA1(str: String?): Boolean {
    if (str == null) {
        throw IllegalArgumentException("non-valid input: null")
    }

    return str.startsWith("A")
}

fun startsWithA2(str: String?): Boolean? {
    if (str == null) {
        return null // return type should be "Boolean?"
    }

    return str.startsWith("A")
}

fun startsWithA3(str: String?): Boolean {
    if (str == null) {
        return false
    }

    return str.startsWith("A")
}

/*** refactor startsWithA functions with safe call and Elvis op. ***/
fun newStartsWithA1(str: String?): Boolean {
    return str?.startsWith("A")
            ?: throw IllegalArgumentException("non-valid input: null")
}

fun newStartsWithA2(str: String?): Boolean? {
    return str?.startsWith("A") // safe call: if the value of variable is null => null
}

fun newStartsWithA3(str: String?): Boolean {
    return str?.startsWith("A") ?: false
}

/*** not-null assertion ***/
fun startsWith(str: String?): Boolean {
    return str!!.startsWith("A") // notice to a compiler: str isn't null
}