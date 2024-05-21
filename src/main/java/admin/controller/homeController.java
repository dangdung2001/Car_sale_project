package admin.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/admin")
public class homeController {

	@PostMapping("/home")
	public ResponseEntity<String> home (){
		return ResponseEntity.ok("this is home of admin");
	}
}
