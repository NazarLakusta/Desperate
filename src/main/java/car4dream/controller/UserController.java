package car4dream.controller;

import car4dream.model.UserEntity;
import car4dream.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/users/{id}")
	private String getById(@PathVariable("id") Long id, Model model) {
		model.addAttribute("users", userService.getById(id));
		return "/userspack/userByID_page";
	}

	@GetMapping("/users")
	public String getUsersPage(Model model) {
		List<UserEntity> users = userService.getAllUsers();
		model.addAttribute("users", users);
		return "/userspack/users_page";
	}

	/*
	 * @PostMapping("/updateUser")
	 * private String updateUser(@ModelAttribute("user") @Valid @RequestBody
	 * UserEntity user)
	 * {
	 * userService.updateUser(user);
	 * return "redirect:/users/" + user.getId();
	 * }
	 * 
	 * @GetMapping ("/update/{id}")
	 * private String update(@PathVariable("id") Long id, Model model)
	 * {
	 * model.addAttribute("user",userService.getById(id));
	 * 
	 * return "editUser";
	 * }
	 */

	@GetMapping("/deleteUser/{id}")
	private String delete(@PathVariable("id") Long id, Model model) {
		userService.deleteUser(userService.getById(id));
		return "redirect:/users";
	}
}
