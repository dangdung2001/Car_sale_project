package user.controller.API;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import user.DTO.districtsDTO;
import user.DTO.userDTO;
import user.DTO.wardDTO;
import user.Services.registerService;

@RestController
public class addressAPI {

	@Autowired
	private registerService registerService;
	
	/**
	 *  user select city in box address of create account
	 * 	then this api will call to fetch all district when had code city 
	 * */
	@PostMapping(value = "/api/address/districts/{idCity}")
	public ResponseEntity<List<districtsDTO>> listDistrictsBy_IDcity (@PathVariable("idCity") String IDcity ) {   
		
		List<districtsDTO> districtsDTO = this.registerService.getDistrictsBy_IDcity(IDcity);
		
		return new ResponseEntity<List<districtsDTO>>(districtsDTO,HttpStatus.OK);
	}
	

	/**
	 *  user select district in box address of create account
	 * 	then this api will call to fetch all wards when had code district
	 * */
	@PostMapping(value = "/api/address/wards/{iddistrict}")
	public ResponseEntity<List<wardDTO>> listWardsBy_IDdistrict (@PathVariable("iddistrict") String idDictrict) {   
		
		List<wardDTO> wardsDTO = this.registerService.getWardBy_IDdictrict(idDictrict);
		
		return new ResponseEntity<List<wardDTO>>(wardsDTO,HttpStatus.OK);
	}
}
