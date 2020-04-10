INSERT INTO TA_allocation.role VALUES (1,'Manager');
INSERT INTO TA_allocation.role VALUES (2,'Candidates');
INSERT INTO TA_allocation.role VALUES (3,'Professors');


INSERT INTO `domain_registration` VALUES ('1',1,'peter0502tw@gmail.com','1','1','$2a$10$thR0rg/t8iyZgrxNmuYCa.UNcZy44NduGCKcini/iVOoUNCC.ZUAG','Computer Science',1),('11',1,'ylh9@student.le.ac.uk','07597026434','Manager','$2a$10$ojFKXV9nZriW.MlYjvyQPOwJcXsJ/1dHhuOLhxxpyBpFDKAlCr8Ia','Manager',7),('2',1,'ylh9@student.le.ac.uk','2','2','$2a$10$DKYDh.CNbPbPf8GukdKOseenwDnneHXaJ5r9eKYKc.f9omFIJlyJi','Computer Science',6),('3',1,'peter0502tw@gmail.com','120','3','$2a$10$4SDc9d3niBr8cZ4y5sugpuPq.c3kLA53kWShlYzwN.7agS6lu/dee','Computer Science',5),('4',1,'peter0502tw@gmail.com','12324','4','$2a$10$GNDkBU8b9YtU/t0mATg3/es4w.gHEMwGihiOKKdlJYtr0BfibQif6','Computer Science',4),('5',1,'peter0502tw@gmail.com','43534','5','$2a$10$GTXl2a0fd2XxZY5syxhfuup5CsRYiCAXGnEujwk7UM3HW7mEEXUvO','Computer Science',5);


INSERT INTO `TA_allocation`.`user_role`
(`user_id`,
`role_id`)
VALUES
('11', '1'),(
'2', '3'),(
'1', '2');


INSERT INTO TA_allocation.domain_subject (subject)VALUES('Maketing'),("Computer Science"),,("Finance");




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
				
				
				
				
		http.authorizeRequests()
				.antMatchers("/TA/login").permitAll()
				.antMatchers("/TA/registration").permitAll()
				.antMatchers("/TA/professor").hasAuthority("Professors")
				.antMatchers("/TA/createvacancy").access("hasAuthority('Professors') or hasAuthority('Manager')")
				.antMatchers("/TA/endorsement/**").access("hasAuthority('Professors') or hasAuthority('Manager')")
				.antMatchers("/TA/endorsement").access("hasAuthority('Professors') or hasAuthority('Manager')")
				.antMatchers("/TA/edit/personal").access("hasAuthority('Professors') or hasAuthority('Candidates') or hasAuthority('Manager')")
				.antMatchers("/TA/edit?").access("hasAuthority('Manager') or hasAuthority('Professors')")
				.antMatchers("/TA/manager/**").hasAuthority("Manager")
				.antMatchers("/TA/Allocation").access("hasAuthority('Professors') or hasAuthority('Manager')")
				.antMatchers("/TA/candidates").hasAuthority("Candidates")
				
				.anyRequest().authenticated().and().csrf().disable().formLogin()
				.loginPage("/TA/login").defaultSuccessUrl("/TA/default").usernameParameter("id")
				.passwordParameter("password").failureUrl("/TA/login?error=true").and().logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/TA/logout"))
				.logoutSuccessUrl("/TA/login").and().exceptionHandling()
				.accessDeniedPage("/TA/access/denied");