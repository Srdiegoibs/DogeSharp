package src;

import java.io.IOException;
import java.io.StringReader;

public class test {
    public static void main(String[] args) throws IOException {
        String expr = "12 if 34variavel12 ";
        AnalisadorLexico lexical = new AnalisadorLexico(new StringReader(expr));
        lexical.yylex();
    }
}
