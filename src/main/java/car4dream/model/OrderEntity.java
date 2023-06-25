package car4dream.model;

import car4dream.model.enums.OrderStatus;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "orders")
public class OrderEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "car_id")
    private CarEntity car;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity user;

    @NotBlank(message = "startDate may not be empty")
    @Column(name = "start_date")
    private LocalDateTime startDate;

    @NotBlank(message = "endDate may not be empty")
    @Column(name = "end_date")
    private LocalDateTime endDate;

    @NotBlank(message = "creationTime may not be empty")
    @Column(name = "creation_time")
    private LocalDate creationTime;

    @NotBlank(message = "orderStatus may not be empty")
    @Column(name = "order_status")
    private OrderStatus orderStatus;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public CarEntity getCar() {
        return car;
    }

    public void setCar(CarEntity car) {
        this.car = car;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public LocalDate getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(LocalDate creationTime) {
        this.creationTime = creationTime;
    }

    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderEntity that = (OrderEntity) o;
        return id.equals(that.id) && car.equals(that.car) && user.equals(that.user) && startDate.equals(that.startDate) && endDate.equals(that.endDate) && creationTime.equals(that.creationTime) && orderStatus.equals(that.orderStatus);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, car, user, startDate, endDate, creationTime, orderStatus);
    }

    @Override
    public String toString() {
        return "OrderEntity{" +
                "id=" + id +
                ", car=" + car +
                ", user=" + user +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", creationTime=" + creationTime +
                ", orderStatus=" + orderStatus +
                '}';
    }
}
