package syntax;

import org.jetbrains.annotations.NotNull;

public class JavaMoney implements Comparable<JavaMoney> {

    private final long amount;

    public JavaMoney(long amount) {
        this.amount = amount;
    }

    @Override
    public int compareTo(@NotNull JavaMoney obj) {
        return Long.compare(this.amount, obj.amount);
    }
}
