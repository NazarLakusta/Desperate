package car4dream.model;


import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "passport")
public class PassportEntity implements Serializable{

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne(mappedBy = "passport")
    private UserEntity owner;

    @NotBlank(message = "passportNumber may not be empty")
    @Column(name = "passport_number")
    private String passportNumber;

    @NotBlank(message = "birthDate may not be empty")
    @Column(name = "birth_date")
    private LocalDate birthDate;

    @NotBlank(message = "passportImage may not be empty")
    @Column(name = "img_url")
    private String imgURL;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UserEntity getOwner() {
        return owner;
    }

    public void setOwner(UserEntity owner) {
        this.owner = owner;
    }

    public String getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String passportImage) {
        this.imgURL = passportImage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PassportEntity that = (PassportEntity) o;
        return id.equals(that.id) && owner.equals(that.owner) && passportNumber.equals(that.passportNumber) && birthDate.equals(that.birthDate) && imgURL.equals(that.imgURL);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, owner, passportNumber, birthDate, imgURL);
    }

    @Override
    public String toString() {
        return "PassportEntity{" +
                "id=" + id +
                ", owner=" + owner +
                ", passportNumber='" + passportNumber + '\'' +
                ", birthDate=" + birthDate +
                ", passportImage='" + imgURL + '\'' +
                '}';
    }
}
