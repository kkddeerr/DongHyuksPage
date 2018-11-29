package com.donghyuks.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
    @Autowired
    private DataSource dataSource;

    @Value("${spring.queries.user-query}")
    private String usersQuery;

    @Value("${spring.queries.role-query}")
    private String rolesQuery;
	
	@Override public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**"); 
	}

	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/admin/**").hasAuthority("ROLE_ADMIN")// admin이하는 ROLE_ADMIN에 설정된 사용자로 로그인한 경우만 액세스 가능
				.antMatchers("/**").permitAll()
				//.antMatchers(HttpMethod.PUT, "/employees/**").hasRole("ADMIN")
				.and()
			.formLogin()
				.loginPage("/login")
				.usernameParameter("id") //rest로 요청시 id parameter name
				.passwordParameter("pwd") //rest로 요청시 pwd parameter name
				.loginProcessingUrl("/processLogin") //로그인 처리를 실행하는 URL
				.defaultSuccessUrl("/admin")
				.failureUrl("/")
				.and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/")
				.and()
	         .exceptionHandling()
                .accessDeniedPage("/accessDenied")
                .and()
			.csrf()
				.disable();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery(usersQuery)
			.authoritiesByUsernameQuery(rolesQuery);
			
	}
}
