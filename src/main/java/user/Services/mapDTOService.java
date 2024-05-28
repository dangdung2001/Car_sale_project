package user.Services;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.DTO.addressDTO;
import user.DTO.userDTO;
import user.entity.addressEntity;
import user.entity.userEntity;

@Service
public class mapDTOService {

	@Autowired
	private ModelMapper mapper;
	
	public userDTO MapUserDTO (userEntity user) {
		
		return this.mapper.map(user, userDTO.class);
	}
	
public addressDTO  MapAddressDTO(addressEntity address) {
		
		return this.mapper.map(address, addressDTO.class);
	}
}
