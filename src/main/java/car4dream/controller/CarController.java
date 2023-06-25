package car4dream.controller;


import car4dream.model.CarEntity;
import car4dream.repository.CarRepository;
import car4dream.services.CarService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Api(value = "Api to Car", description = "Api car", produces = "application/json")
@Controller
public class CarController {

    @Autowired
    private CarService carService;

    private final CarRepository carRepository;

    @Autowired
    public CarController(CarService carService, CarRepository carRepository) {
        this.carService = carService;
        this.carRepository = carRepository;
    }




    @GetMapping("/car/{id}")
    private String getById(@PathVariable("id") Long id, Model model)
    {
        model.addAttribute("cars",carService.getById(id));
        return "/carspack/carByID_page";
    }


    @GetMapping("/carBuyInfo/{id}")
    private String getByIdForBuy(@PathVariable("id") Long id, Model model)
    {
        model.addAttribute("cars",carService.getById(id));
        return "/carspack/infoAboutBuy";
    }
    @DeleteMapping("/car/{id}")
    private void delete(@PathVariable("id") Long id)
    {
        carService.deleteCar(carService.getById(id));
    }

    @PutMapping("/car")
    private CarEntity update(@Valid @RequestBody CarEntity car)
    {
        carService.updateCar(car, car.getId());
        return car;
    }


    @GetMapping("/cars")
    public String getCarsPage(Model model){
        List<CarEntity> cars = carService.getAllCar();
        model.addAttribute("cars",cars);
        return "main_page";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String filter, Model model){
        List<CarEntity> cars;
        if(filter !=null && filter.isEmpty()){
            cars = carRepository.findAll();

        } else {
            cars = carRepository.findByCarBrand(filter);
        }
        model.addAttribute("cars",cars);
        return "main_page";
    }


    @PostMapping("/addCar")
    private String save(@ModelAttribute("car") @Valid @RequestBody CarEntity car)
    {
        carService.saveCar(car);
        return "redirect:/cars";
    }

    //  @PreAuthorize("hasAuthority('users:write')")
    @GetMapping("/addCar")
    public  String addCarPage(){
        return "adminCar_page";
    }



}