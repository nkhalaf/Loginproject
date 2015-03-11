package com.asal.training.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class filter01
 */
@WebFilter("/filter01")

public class filter01 implements Filter {
	HttpSession session ;
    /**
     * Default constructor. 
     */
    public filter01() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
        HttpSession session = ((HttpServletRequest)request).getSession(false);
        if(session==null){
	    	 ((HttpServletRequest)request).getRequestDispatcher("Login/Login.jsp").forward(request, response);
       return ;
        }
        
	     if(session.getAttribute("Username") ==null ){
	    	 ((HttpServletRequest)request).getRequestDispatcher("Login/Login.jsp").forward(request, response);
	     }
	     else{

			chain.doFilter(request, response);
	     }
		
	
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
