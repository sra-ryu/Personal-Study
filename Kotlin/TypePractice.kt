fun main() {

    /** type inference **/
    val num1 = 3 // Int
    val num2 = 3L // Long

    /** convert type with .to(Type) Methode **/
    val num3 = 3
    val num4: Long = num3.toLong()

    // handle nullable in type converting
    val num5Nullable: Int? = 3
    val num5: Long = num5Nullable?.toLong() ?: 0L

    /** String interpolation **/
    val person = Person("John", 25)
    println("name: ${person.name}, age: ${person.age}")

    /** String indexing **/
    val str = "ABCDEF"
    val ch = str[1]

}

/** type casting **/
// in Java
//public static void printAgeIfPerson(Object obj) {
//    if (obj instanceof Person) {
//        Person person = (Person) obj;
//        System.out.println(person.getAge());
//    }
//}

// in Kotlin
fun printAgeIfPerson(obj: Any) {
    if (obj is Person) {
        val person = obj as Person
        println(person.age)
    }
}

// optimization
fun printAgeIfPersonOpt(obj: Any) {
    if (obj is Person) {
        println(obj.age) // smart cast
    }
}

// handle nullable
fun printAgeIfPersonNull(obj: Any?) {
    val person = obj as? Person
    println(person?.age)
}