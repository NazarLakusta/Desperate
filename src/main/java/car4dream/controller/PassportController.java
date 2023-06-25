package car4dream.controller;

import car4dream.model.PassportEntity;
import car4dream.services.PassportService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@Api(value = "Api to Passport", description = "Api user", produces = "application/json")
@RestController
public class PassportController {

    private final PassportService passportService;

    @Autowired
    public PassportController(PassportService passportService) {
        this.passportService = passportService;
    }
    @GetMapping("/passport/{id}")
    private PassportEntity getById(@PathVariable("id") Long id)
    {
        return passportService.getPassportById(id);
    }

    @PostMapping("/passport")
    private Long save(@Valid @RequestBody PassportEntity passport)
    {
        passportService.savePassport(passport);
        return passport.getId();
    }

    @DeleteMapping("/passport/{id}")
    private void delete(@PathVariable("id") Long id)
    {
        passportService.deletePassport(passportService.getPassportById(id));
    }

    @PutMapping("/passport")
    private PassportEntity update(@Valid @RequestBody PassportEntity passport)
    {
        passportService.updatePassport(passport, passport.getId());
        return passport;
    }

}
