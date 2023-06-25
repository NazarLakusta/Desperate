package car4dream.dto.user;

import io.swagger.annotations.ApiModelProperty;

import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

public class UserRequestDTO {

    @ApiModelProperty
    @NotBlank(message = "FirstName should not be empty")
    private String firstName;

    @ApiModelProperty
    @NotBlank(message = "LastName should not be empty")
    private String lastName;

    @ApiModelProperty
    @NotBlank(message = "Email should not be empty")
    @Email(message = "Email should be valid")
    private String email;

    @ApiModelProperty
    @NotBlank(message = "Password should not be empty")
    @Min(value = 8, message = "Password must not be less than 8 characters")
    private String password;

    @ApiModelProperty
    private String imgURL;

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

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    @Override
    public String toString() {
        return "UserRequestDTO{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", imgURL='" + imgURL + '\'' +
                '}';
    }
}

