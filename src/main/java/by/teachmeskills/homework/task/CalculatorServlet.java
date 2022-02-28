package by.teachmeskills.homework.task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.io.IOException;

@WebServlet("/evaluate")
public class CalculatorServlet extends HttpServlet {
    private static final ScriptEngine scriptEngine =
            new ScriptEngineManager().getEngineByName("JavaScript");

    @Override
    @SneakyThrows({IOException.class, ServletException.class})
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String expression = req.getParameter("expression");
        String eval = null;
        try {
            eval = scriptEngine.eval(expression).toString();
        } catch (ScriptException e) {
            e.printStackTrace();
        }
        req.setAttribute("expression-result", eval);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}