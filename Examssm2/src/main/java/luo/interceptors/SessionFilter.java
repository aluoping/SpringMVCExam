package luo.interceptors;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

public class SessionFilter extends OncePerRequestFilter {
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		System.out.println(uri);
		String obj = (String) request.getSession().getAttribute("user");
		System.out.println(obj);
		if (obj != null) {
			System.out.println();
			filterChain.doFilter(request, response);
		} else if (obj == null && (uri.equals("/login.jsp") || uri.equals("/login.do")||uri.equals("/image/pt1.jpg"))) {
			filterChain.doFilter(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);

		}

	}
}
