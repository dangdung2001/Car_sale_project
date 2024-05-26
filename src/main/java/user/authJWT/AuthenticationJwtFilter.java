package user.authJWT;

import java.io.IOException;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import io.jsonwebtoken.ExpiredJwtException;
import user.Services.UserDetailsservice;

@Component
public class AuthenticationJwtFilter extends OncePerRequestFilter {

	@Autowired
	private jwtService jwtService;

	@Autowired
	private UserDetailsservice userDetailsservice;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		final String authHeader = request.getHeader("Authorization");
		if (authHeader == null || !authHeader.startsWith("Bearer ")) {

			filterChain.doFilter(request, response);
			return;
		}

		try {

			final String jwt = authHeader.substring(7);

			String username = null;

			username = jwtService.extractUsername(jwt);

			if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {

				UserDetails userdetails = this.userDetailsservice.loadUserByUsername(username);

				if (jwtService.isTokenValid(jwt, userdetails)) {

					UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(
							userdetails, null, userdetails.getAuthorities());

					authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

					SecurityContextHolder.getContext().setAuthentication(authenticationToken);
				}
			}
		} catch (ExpiredJwtException e) {
			String isRefreshToken = request.getHeader("isRefreshToken");
			String requestURL = request.getRequestURL().toString();
			// allow for Refresh Token creation if following conditions are true.
			
			if (isRefreshToken != null && isRefreshToken.equals("true") && requestURL.contains("refreshToken")) {
				allowForRefreshToken(e, request);
				filterChain.doFilter(request, response);
				
			} else
				response.setStatus(401);
				request.setAttribute("exception", e);
				response.setHeader("exception", "ExpiredJwtException");
				return;
		} catch (BadCredentialsException e) {
			request.setAttribute("exception", e);

		} catch (Exception e) {
			System.out.println(e);
		}
		filterChain.doFilter(request, response);

	}

	private void allowForRefreshToken(ExpiredJwtException e, HttpServletRequest request) {
		
			// create a UsernamePasswordAuthenticationToken with null values.
			UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(
						null, null, null);
			// After setting the Authentication in the context, we specify
			// that the current user is authenticated. So it passes the
			// Spring Security Configurations successfully.
			SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
			// Set the claims so that in controller we will be using it to create
			// new JWT
			request.setAttribute("claims", e.getClaims());
		
	}

}
