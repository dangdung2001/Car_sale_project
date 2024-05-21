package user.authJWT;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

@Service
public class jwtService {
	
	private final static String SERECT_KEY = "C7m/fJ+zScu1Yig0JDBKQeRP18vpmPoTJb1Hh7aUtQY=";

	public String extractUsername(String token) {
		return extratClaim(token, Claims::getSubject);
	}
	
	public String generateToken (UserDetails userDetails) {
		return generateToken(new HashMap<>(), userDetails);
	}
	
	public String generateToken(Map<String, Object> Claims , UserDetails userDetails) {
		
		return Jwts.builder()
				.setClaims(Claims)
				.setSubject(userDetails.getUsername())
				.signWith(getSignInKey(), SignatureAlgorithm.HS256)
				.setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis() + 1000 * 60 * 24))
				.compact();
	}
	
	public <T> T extratClaim (String token, Function<Claims, T> claimsResolver) {
		
		final Claims claims = extractAllClaims(token);
		
		return claimsResolver.apply(claims);
	}
	
	
	private Claims extractAllClaims(String token) {
		
		return Jwts 
				  .parserBuilder()
				  .setSigningKey(getSignInKey())
				  .build()
				  .parseClaimsJws(token)
				  .getBody();
		
	}

	public boolean isTokenValid(String token, UserDetails userdetails) {
		String username = this.extractUsername(token);
		return (username.equals(userdetails.getUsername()) && !isTokenExpired(token));
	}

	private boolean isTokenExpired(String token) {
		return extractExpiration(token).before(new Date());
	}
	
	
	private Date extractExpiration(String token) {
		return extratClaim(token, Claims::getExpiration);
	}

	private Key getSignInKey() {
		
		byte[] keyBytes = Decoders.BASE64.decode(SERECT_KEY);
		return Keys.hmacShaKeyFor(keyBytes);
			
	}
	
}
