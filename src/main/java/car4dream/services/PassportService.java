package car4dream.services;

import car4dream.model.PassportEntity;
import car4dream.repository.PassportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassportService {

    private final PassportRepository passportRepository;

    @Autowired
    public PassportService(PassportRepository passportRepository) {
        this.passportRepository = passportRepository;
    }

    /**
     * The method used for getting passport by id
     *
     * @param id Identity passport id
     * @return Passport entity
     * @throws IllegalArgumentException if user id <=0
     */
    public PassportEntity getPassportById(Long id) {
        if (id <= 0){
            throw new IllegalArgumentException("Id cannot be lesser or equal zero!");
        }
        return passportRepository.getById(id);
    }

    /**
     * The method used for saving passport in database
     *
     * @param passport new passport
     * @return Passport entity
     */
    public PassportEntity savePassport(PassportEntity passport) {
        return passportRepository.save(passport);
    }

    /**
     * The method used for updating user in database
     *
     * @param passport updated passport
     * @param passportId updated passportId
     * @return User entity
     */
    public PassportEntity updatePassport(PassportEntity passport, Long passportId) {
        passport.setId(passportId);
        return passportRepository.save(passport);
    }

    /**
     * Method deletes an existing passport from repository
     *
     * @param passport entity to be deleted
     */
    public void deletePassport(PassportEntity passport) {
        passportRepository.delete(passport);
    }
}
