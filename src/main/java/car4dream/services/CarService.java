package car4dream.services;

import car4dream.model.CarEntity;
import car4dream.repository.CarRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarService {

    private final CarRepository carRepository;


    @Autowired
    public CarService(CarRepository carRepository) {
        this.carRepository = carRepository;

    }

    public CarEntity getById(Long id){
        return carRepository.getById(id);
    }

    public CarEntity saveCar(CarEntity car) {

        return carRepository.save(car);
    }


 /*   public UserEntity saveUser(UserEntity user) {

        UserEntity user_tmp = new UserEntity(user.getFirstName(), user.getLastName(),user.getEmail(), encoder.encode(user.getPassword()), Role.USER, StatusUser.ACTIVE);


        return userRepository.save(user_tmp);
    }
*/

    public void deleteCar(CarEntity car) {

        carRepository.delete(car);
    }

    public CarEntity updateCar(CarEntity car, Long id) {
        car.setId(id);
        return carRepository.save(car);
    }

    public List<CarEntity> getAllCar(){
        return carRepository.findAll();
    }

    /**
     * Method return sorted cars by page from repository by filtering parameters in carRequest
     * and sort parameters by sortParam and sortDirection.
     *
     * @param carEntity filtering parameters
     * @param sortParam the db field parameter by which sorting is performed
     * @param sortDirection parameter by which sorting is performed ACS or DESC
     * @param pageNumber number of page
     * @param pageSize size of page
     */
}
