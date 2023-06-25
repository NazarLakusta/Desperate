package car4dream.controller;

import car4dream.model.OrderEntity;
import car4dream.services.OrderService;
import io.swagger.annotations.Api;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RequestMapping(value = "/order")
@Api(value = "Api to Order", description = "Api user", produces = "application/json")
@RestController
public class OrderController {

    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    public final OrderService orderService;


    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/order/{id}")
    public OrderEntity getOrder(@PathVariable Long id) {
        return orderService.getById(id);
    }

    @GetMapping("/order")
    public List<OrderEntity> getAllOrder() {
        return new ArrayList<OrderEntity>(orderService.getAll());
    }

    @PostMapping("/order")
    public OrderEntity addOrder(@RequestBody OrderEntity order) {
        orderService.saveOrder(order);
        return order;
    }

    @DeleteMapping("/order/{id}")
    public void deleteOrder(@PathVariable("orderid") Long id) {
        orderService.deleteOrder(id);
    }

    @PutMapping("/order")
    private OrderEntity updateOrder(@RequestBody OrderEntity order){

        logger.info("Order to update " + order);
        orderService.updateOrder(order);
        return order;
    }


}