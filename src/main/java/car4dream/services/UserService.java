package car4dream.services;

import car4dream.model.UserEntity;
import car4dream.model.enums.Role;
import car4dream.model.enums.StatusUser;
import car4dream.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
	private final UserRepository userRepository;

	@Autowired
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;

	}

	public List<UserEntity> getAllUsers() {
		return userRepository.findAll();
	}

	public UserEntity getById(Long id) {
		return userRepository.getOne(id);
	}

	public UserEntity saveUser(UserEntity user) {

		UserEntity user_tmp = new UserEntity(user.getFirstName(), user.getLastName(), user.getEmail(),
				encoder.encode(user.getPassword()), Role.USER, StatusUser.ACTIVE);

		return userRepository.save(user_tmp);
	}

	public void deleteUser(UserEntity user) {
		userRepository.delete(user);
	}

	public UserEntity updateUser(UserEntity user) {
		UserEntity user_tmp = new UserEntity(user.getFirstName(), user.getLastName(), user.getEmail(),
				encoder.encode(user.getPassword()), user.getRole(), user.getStatus());
		return userRepository.save(user_tmp);
	}

}
