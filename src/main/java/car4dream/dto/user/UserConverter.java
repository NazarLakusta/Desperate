package car4dream.dto.user;

import car4dream.dto.ResponsePage;
import car4dream.model.UserEntity;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public class UserConverter {
	public UserResponseDTO toUserResponse(UserEntity entity, Optional<String> expand) {
		UserResponseDTO convertedUser = new UserResponseDTO();
		convertedUser.setId(entity.getId());
		convertedUser.setFullName(entity.getFirstName() + " " + entity.getLastName());
		convertedUser.setRole(entity.getRole());
		convertedUser.setStatusUser(entity.getStatus());
		if (expand.get().equals("profile")) {
			convertedUser.setEmail(entity.getEmail());
			convertedUser.setImgURL(entity.getImgURL());
		}

		return convertedUser;
	}

	public UserEntity toUserEntity(UserRequestDTO request) {
		UserEntity userEntity = new UserEntity();
		userEntity.setFirstName(request.getFirstName());
		userEntity.setLastName(request.getLastName());
		userEntity.setEmail(request.getEmail());
		userEntity.setPassword(request.getPassword());
		userEntity.setImgURL(request.getImgURL());
		return userEntity;
	}

	public ResponsePage<UserResponseDTO> createUserResponsePage(List<UserEntity> userEntities, Integer pageCount,
			Optional<String> expand) {
		ResponsePage<UserResponseDTO> userResponsePage = new ResponsePage<>();
		for (UserEntity userEntity : userEntities) {
			userResponsePage.setResponse(toUserResponse(userEntity, expand));
		}
		userResponsePage.setMaxPage(pageCount);
		return userResponsePage;
	}

}
