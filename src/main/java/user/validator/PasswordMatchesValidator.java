package user.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import user.entity.userEntity;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatches , Object>{
	
	private Pattern pattern;
    private Matcher matcher;
    private static final String PASSWORD_PATTERN = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
	
	@Override
	public boolean isValid(Object userObject, ConstraintValidatorContext context) {
		userEntity user = (userEntity) userObject;
		
		if(user.getPassword().equals(user.getConfirmPassword())) {
		
			if(ispasswordValid(user.getPassword())) {
				return true;
			}
		}
		return false;
	}
	
	private boolean ispasswordValid (String password) {
		
		pattern = Pattern.compile(PASSWORD_PATTERN);
		matcher = pattern.matcher(password);
		return matcher.matches();
	}
	
	
}
