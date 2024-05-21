package user.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import user.Services.UserDetailsservice;
import user.authJWT.AuthenticationJwtFilter;
import user.entity.userEntity;

@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan("user")
public class springSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsservice UserDetailsservice; 
	
	@Autowired
	private AuthenticationJwtFilter authenticationJwtFilter;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable()
		.authorizeRequests()
		.antMatchers("/home" ,"/login","/user/**", "/user/processingRegister", "**/assets/**", "/assets/**", "/api/register/**", "/api/v1/login/auth")
		.permitAll()
		.and()
		.authorizeRequests()
		.antMatchers("/api/v1/admin/**")
		.hasAnyRole("ADMIN")
		.anyRequest()
		.authenticated()
		.and()
		.sessionManagement()
		.sessionCreationPolicy(SessionCreationPolicy.STATELESS)
		.and()
		.addFilterBefore(authenticationJwtFilter, UsernamePasswordAuthenticationFilter.class);
		
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.userDetailsService(UserDetailsservice).passwordEncoder(passwordEncoder());
	}

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public AuthenticationManager authenticationManager (AuthenticationConfiguration configuration) throws Exception {
		return configuration.getAuthenticationManager();
	}
	

}