package car4dream.model;

import car4dream.model.enums.Role;
import car4dream.model.enums.StatusUser;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.mapping.Set;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "users")
public class UserEntity implements Serializable {

	@Id
	@NotBlank
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@OneToOne(cascade = CascadeType.REMOVE, orphanRemoval = true)
	@JoinColumn(name = "passport_id")
	private PassportEntity passport;

	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<OrderEntity> orders;

	@NotBlank(message = "FirstName may not be empty")
	@Column(name = "first_name", length = 50, nullable = false, unique = false)
	private String firstName;

	@NotBlank(message = "LastName may not be empty")
	@Column(name = "last_name")
	private String lastName;

	@NotBlank(message = "Email may not be empty")
	@Email
	@Column
	private String email;

	@NotBlank(message = "Password is necessary")
	@Column
	private String password;

	@Column(name = "img_url")
	private String imgURL;

	@NotBlank
	@Column
	@Enumerated(value = EnumType.STRING)
	private Role role;

	@Column
	@Enumerated(value = EnumType.STRING)
	private StatusUser status;

	public UserEntity(String firstName, String lastName, String email, String password, Role role, StatusUser status) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.role = role;
		this.status = status;
	}

	public UserEntity() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public PassportEntity getPassport() {
		return passport;
	}

	public void setPassport(PassportEntity passport) {
		this.passport = passport;
	}

	public List<OrderEntity> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderEntity> orders) {
		this.orders = orders;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public void setImgURL(String img) {
		this.imgURL = img;
	}

	public StatusUser getStatus() {
		return status;
	}

	public void setStatus(StatusUser status) {
		this.status = status;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		UserEntity that = (UserEntity) o;
		return Objects.equals(passport, that.passport) && Objects.equals(orders, that.orders)
				&& firstName.equals(that.firstName) && lastName.equals(that.lastName) && email.equals(that.email)
				&& password.equals(that.password) && role == that.role && Objects.equals(imgURL, that.imgURL)
				&& status == that.status;
	}

	@Override
	public int hashCode() {
		return Objects.hash(passport, orders, firstName, lastName, email, password, role, imgURL, status);
	}

	@Override
	public String toString() {
		return "UserEntity{" +
				"id=" + id +
				", passport=" + passport +
				", orders=" + orders +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", email='" + email + '\'' +
				", password='" + password + '\'' +
				", role=" + role +
				", imgURL='" + imgURL + '\'' +
				", status=" + status +
				'}';
	}
}
