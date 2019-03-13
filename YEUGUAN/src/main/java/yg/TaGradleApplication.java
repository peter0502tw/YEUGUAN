package yg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class TaGradleApplication extends org.springframework.boot.web.servlet.support.SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	       return application.sources(yg.TaGradleApplication.class);
	   }
	
	
	public static void main(String[] args) {
		SpringApplication.run(yg.TaGradleApplication.class, args);

	}
}
