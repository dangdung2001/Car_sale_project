package user.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import user.entity.addressEntity;
import user.entity.districtEntity;
import user.entity.roleEntity;
import user.entity.wardEntity;
import user.entity.userEntity;

@Configuration
@ComponentScan("user")
@EnableWebMvc
@EnableTransactionManagement
public class springconfig extends WebMvcConfigurerAdapter {

	/*
	 * @Bean public InternalResourceViewResolver viewresolver() {
	 * 
	 * InternalResourceViewResolver view_resolver = new
	 * InternalResourceViewResolver();
	 * 
	 * view_resolver.setPrefix("/WEB-INF/view/"); view_resolver.setSuffix(".jsp");
	 * view_resolver.setContentType("text/html; charset=UTF-8");
	 * 
	 * return view_resolver; }
	 */
	@Bean
	public ViewResolver tilesViewResolver() {
		TilesViewResolver resolver = new TilesViewResolver();
		return resolver;
	}

	@Bean
	public HibernateTransactionManager transactionManager() {
		LocalSessionFactoryBean factoryBean = sessionFactory();
		SessionFactory sessionFactory = (SessionFactory) factoryBean.getObject();
		return new HibernateTransactionManager(sessionFactory);
	}

	@Bean
	public DriverManagerDataSource datasource() {

		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		datasource.setUrl("jdbc:sqlserver://localhost:1433;databaseName=springMVC_shop");
		datasource.setUsername("sa");
		datasource.setPassword("dung11b4");
		return datasource;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactory() {

		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(datasource());

//		properties of Hibernate
		Properties hibernateproperties = new Properties();
		hibernateproperties.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServer2012Dialect");
		hibernateproperties.setProperty("hibernate.hbm2ddl.auto", "none");
		hibernateproperties.setProperty("hibernate.show_sql", "true");
		hibernateproperties.setProperty("hibernate.format_sql", "true");
		hibernateproperties.setProperty("hibernate.connection.CharSet", "utf-8");
		hibernateproperties.setProperty("hibernate.connection.characterEncoding", "utf-8");
		hibernateproperties.setProperty("hibernate.connection.useUnicode", "true");
		sessionFactory.setHibernateProperties(hibernateproperties);

//		annotated classes 
		sessionFactory.setAnnotatedClasses(userEntity.class, districtEntity.class, wardEntity.class, roleEntity.class, addressEntity.class);

		return sessionFactory;
	}

	@Bean
	public HibernateTemplate hibernateTemp() {

		HibernateTemplate hibernateTemp = new HibernateTemplate();
		LocalSessionFactoryBean factoryBean = sessionFactory();
		SessionFactory sessionFactory = (SessionFactory) factoryBean.getObject();
		hibernateTemp.setSessionFactory(sessionFactory);

		return hibernateTemp;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/user/");
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {

		CommonsMultipartResolver MultipartResolver = new CommonsMultipartResolver();
		MultipartResolver.setMaxInMemorySize(100000);
		return new CommonsMultipartResolver();
	}

	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer TilesConfigurer = new TilesConfigurer();
		TilesConfigurer.setDefinitions(new String[] { "/WEB-INF/tiles.xml" });
		TilesConfigurer.setCheckRefresh(true);
		return TilesConfigurer;
	}
	
	@Bean
	public ModelMapper modelMapper () {
		return new ModelMapper();
	}

}
