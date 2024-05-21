package user.authJWT;

import java.io.IOException;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import user.Services.UserDetailsservice;

@Component
public class AuthenticationJwtFilter extends OncePerRequestFilter{

	@Autowired
	private jwtService jwtService;
	
	@Autowired
	private UserDetailsservice userDetailsservice;
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		
		System.out.println("this is filter authentication jwt filter");
		final String authHeader = request.getHeader("Authorization");
		System.out.println(authHeader);
		if(authHeader == null || !authHeader.startsWith("Bearer ")) {
			
			filterChain.doFilter(request, response);
			return;
		}
		
		final String jwt = authHeader.substring(7);
		
		System.out.println( "JWT : " + jwt);
		String username = jwtService.extractUsername(jwt);
		System.out.println("username : " + username);
		if(username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
			UserDetails userdetails = this.userDetailsservice.loadUserByUsername(username);
			System.out.println("abc");
			if(jwtService.isTokenValid(jwt,userdetails)) {
				
			
			UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userdetails, null,
					userdetails.getAuthorities()
					);
			
			authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
			SecurityContextHolder.getContext().setAuthentication(authenticationToken);
			}
		}
		
		filterChain.doFilter(request, response);
		
	}

	
}
