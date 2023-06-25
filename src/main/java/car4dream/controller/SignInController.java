package car4dream.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignInController {

    @GetMapping("/signIn")
    public String getSignInPage(){
        return "signIn_page";
    }

    @RequestMapping("/success")
    public String getSuccessPage() {
        return "/cars";
    }

}
