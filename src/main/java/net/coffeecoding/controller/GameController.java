package net.coffeecoding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class GameController {

    @GetMapping("/error")
    public String showErrorPage() {
        return "error-page";
    }

    @GetMapping("/demo")
    public String sendFileGET(Model model) {


        return "game-form";
    }

    @PostMapping("/demo")
    public String sendFilePOST(@RequestParam("gameUser") String gameUser,
                               @RequestParam("time") String time,
                               @RequestParam("movements") String movements) {


        System.out.println(gameUser);
        System.out.println(time);
        System.out.println(movements);


        return "game-form";
    }

}