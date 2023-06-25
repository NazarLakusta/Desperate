package car4dream.dto.user;

import car4dream.model.enums.Role;
import car4dream.model.enums.StatusUser;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

public class UserResponseDTO {

	@ApiModelProperty
	private Long id;

	@ApiModelProperty
	private String fullName;

	@ApiModelProperty
	private String email;

	@ApiModelProperty
	@Enumerated(EnumType.STRING)
	private Role role;

	@ApiModelProperty
	private String imgURL;

	@ApiModelProperty
	private StatusUser statusUser;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}

	public StatusUser getStatusUser() {
		return statusUser;
	}

	public void setStatusUser(StatusUser statusUser) {
		this.statusUser = statusUser;
	}
}