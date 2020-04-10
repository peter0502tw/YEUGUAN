package yg.configuration;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@SuppressWarnings("deprecation")
@Configuration
@EnableWebMvc
@ComponentScan("yg")

public class configuration extends WebMvcConfigurerAdapter {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(org.springframework.web.servlet.view.JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		//resolver.setSuffix(".jsp");
		return resolver;
	}
	
//	 @Bean
//	  public ViewResolver viewResolver1() {
//	    ClassLoaderTemplateResolver templateResolver = new ClassLoaderTemplateResolver();
//	    templateResolver.setTemplateMode("XHTML");
//	    templateResolver.setPrefix("views/");
//	    templateResolver.setSuffix(".html");
//
//	    SpringTemplateEngine engine = new SpringTemplateEngine();
//	    engine.setTemplateResolver(templateResolver);
//
//	    ThymeleafViewResolver viewResolver = new ThymeleafViewResolver();
//	    viewResolver.setTemplateEngine(engine);
//	    return viewResolver;
//	  }
//	
	

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
          .addResourceHandler("/resources/**")
          .addResourceLocations("/resources/"); 
    }

}
