package car4dream.model;


import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name="car")
public class CarEntity {

    @Id
    @NotBlank
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @NotBlank
    @Column(name =  "car_brand")
    private String carBrand;


    @NotBlank
    @Column(name =  "car_model")
    private String carModel;

    @NotBlank
    @Column(name =  "car_number")
    private String carNumber;

    @NotBlank
    @Column(name =  "car_type")
    private String carType;

    @NotBlank
    @Column(name =  "engyne_type")
    private String engineType;

    @NotBlank
    @Column(name =  "fuel_type")
    private String fuelBrand;

    @NotBlank
    @Column(name =  "transmission")
    private String transmission;

    @NotBlank
    @Column(name =  "car_image")
    private String imgURL;

    @NotBlank
    @Column(name = "price")
    private BigDecimal price;

    @NotBlank
    @Column(name = "description_car")
    private String description;

    @NotBlank
    @Column(name = "mileage")
    private int mileageCar;

    @NotBlank
    @Column(name="year_car")
    private int year;

    public CarEntity(Long id, String carBrand, String carModel, String carNumber, String carType, String engineType, String fuelBrand, String transmission, String imgURL, BigDecimal price, String description, int mileageCar, int year) {
        this.id = id;
        this.carBrand = carBrand;
        this.carModel = carModel;
        this.carNumber = carNumber;
        this.carType = carType;
        this.engineType = engineType;
        this.fuelBrand = fuelBrand;
        this.transmission = transmission;
        this.imgURL = imgURL;
        this.price = price;
        this.description = description;
        this.mileageCar = mileageCar;
        this.year = year;
    }



    public CarEntity() {}

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMileageCar() {
        return mileageCar;
    }

    public void setMileageCar(int mileageCar) {
        this.mileageCar = mileageCar;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public String getFuelBrand() {
        return fuelBrand;
    }

    public void setFuelBrand(String fuelBrand) {
        this.fuelBrand = fuelBrand;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CarEntity carEntity = (CarEntity) o;
        return id.equals(carEntity.id) && carBrand.equals(carEntity.carBrand) && carModel.equals(carEntity.carModel) && carNumber.equals(carEntity.carNumber) && carType.equals(carEntity.carType) && engineType.equals(carEntity.engineType) && fuelBrand.equals(carEntity.fuelBrand) && transmission.equals(carEntity.transmission) && imgURL.equals(carEntity.imgURL) && price.equals(carEntity.price);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, carBrand, carModel, carNumber, carType, engineType, fuelBrand, transmission, imgURL, price);
    }
}
