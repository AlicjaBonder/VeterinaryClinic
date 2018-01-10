package pl.coderslab.app;

import java.util.Locale;

import javax.persistence.EntityManagerFactory;
import javax.validation.Validator;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleContextResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import pl.coderslab.converter.DateConverter;
import pl.coderslab.converter.DoctorConverter;
import pl.coderslab.converter.PatientConverter;
import pl.coderslab.converter.VisitConverter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "pl.coderslab")
@EnableJpaRepositories(basePackages	=	"pl.coderslab.repositories")
@EnableTransactionManagement
public class AppConfig implements WebMvcConfigurer{
	
	
	@Bean(name="localeResolver")
	public	LocaleContextResolver	getLocaleContextResolver()	{
					SessionLocaleResolver	localeResolver	=	new	SessionLocaleResolver();
					localeResolver.setDefaultLocale(new	Locale("pl","PL"));
					return	localeResolver;	}
	
	@Bean
	public	Validator	validator()	{
					return	new	LocalValidatorFactoryBean();
	}
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Bean
	public LocalEntityManagerFactoryBean entityManagerFactory() {
		LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
		emfb.setPersistenceUnitName("Veterinary_clinic");
		return emfb;
	}

	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
		JpaTransactionManager tm = new JpaTransactionManager(emf);
		return tm;
	}
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/WEB-INF/resources/").setCachePeriod(31556926);
	}
	public void addFormatters(FormatterRegistry registry) {
		registry.addConverter(getPatientConverter());
		registry.addConverter(getVisitConverter());
		registry.addConverter(getDateConverter());
		registry.addConverter(getDoctorConverter());
	}
	@Bean
	public PatientConverter getPatientConverter() {
		return new PatientConverter();
	}
	@Bean
	public DoctorConverter getDoctorConverter() {
		return new DoctorConverter();
	}
	@Bean
	public VisitConverter getVisitConverter() {
		return new VisitConverter();
	}
	@Bean
	public DateConverter getDateConverter() {
		return new DateConverter();
	}
}
