package info.veva.util;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

@Configuration
public class WebApplicationUtil implements WebApplicationInitializer {


	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
		AnnotationConfigWebApplicationContext container = new AnnotationConfigWebApplicationContext();
		container.register(EnableAnnotation.class);
		DispatcherServlet dispatcherServlet = new DispatcherServlet(container);
		Dynamic dynamic = servletContext.addServlet("dispatcherServlet", dispatcherServlet);
		dynamic.addMapping("/");
		dynamic.setLoadOnStartup(1);
		
	}

}
