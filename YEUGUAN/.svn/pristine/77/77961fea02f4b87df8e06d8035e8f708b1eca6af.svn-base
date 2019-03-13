package ta.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class Security extends WebSecurityConfigurerAdapter {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private DataSource dataSource;

	@Value("${spring.queries.users-query}")
	private String usersQuery;

	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().usersByUsernameQuery(usersQuery).authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource).passwordEncoder(bCryptPasswordEncoder);
	}


	@Override
	protected void configure(HttpSecurity http) throws Exception {

		
		
		http.authorizeRequests()
		.antMatchers("/TA_Gradle/TA/login").permitAll()
		.antMatchers("/TA_Gradle/TA/registration").permitAll()
		.antMatchers("/TA_Gradle/TA/professor").hasAuthority("Professors")
		.antMatchers("/TA_Gradle/TA/createvacancy").access("hasAuthority('Professors') or hasAuthority('Manager')")
		.antMatchers("/TA_Gradle/TA/endorsement/**").access("hasAuthority('Professors') or hasAuthority('Manager')")
		.antMatchers("/TA_Gradle/TA/endorsement").access("hasAuthority('Professors') or hasAuthority('Manager')")
		.antMatchers("/TA_Gradle/TA/edit/personal").access("hasAuthority('Professors') or hasAuthority('Candidates') or hasAuthority('Manager')")
		.antMatchers("/TA_Gradle/TA/edit?").access("hasAuthority('Manager') or hasAuthority('Professors')")
		.antMatchers("/TA_Gradle/TA/manager/**").hasAuthority("Manager")
		.antMatchers("/TA_Gradle/TA/Allocation").access("hasAuthority('Professors') or hasAuthority('Manager')")
		.antMatchers("/TA_Gradle/TA/candidates").hasAuthority("Candidates")
		
		.anyRequest().authenticated().and().csrf().disable().formLogin()
		.loginPage("/TA_Gradle/TA/login").defaultSuccessUrl("/TA_Gradle/TA/default").usernameParameter("id")
		.passwordParameter("password").failureUrl("/TA_Gradle/TA/login?error=true").and().logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/TA_Gradle/TA/logout"))
		.logoutSuccessUrl("/TA_Gradle/TA/login").and().exceptionHandling()
		.accessDeniedPage("/TA_Gradle/TA/access/denied");
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
	}

}