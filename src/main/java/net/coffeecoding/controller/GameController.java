package net.coffeecoding.controller;

import net.coffeecoding.entity.Game;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import net.coffeecoding.service.GameService;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;


@Controller
public class GameController {

    @Autowired
    private GameService gameService;

    @GetMapping("/error")
    public String showErrorPage() {
        return "error-page";
    }

    @GetMapping("/demo")
    public String getDemo() {
        return "game-form";
    }

    @GetMapping("/results")
    public String showGameResults(Model model) {

        List<Game> games = gameService.getGames();
        model.addAttribute("games", games);

        return "game-results-form";
    }

    @PostMapping("/demo")
    public String sendGameResults(@RequestParam("gameUser") String gameUser,
                                  @RequestParam("time") String time,
                                  @RequestParam("movements") String movements) {

        Timestamp date = new Timestamp(new Date().getTime());

        Game game = new Game();
        game.setGameUser(gameUser);
        game.setTime(time);
        game.setMovements(movements);
        game.setDate(date);
        double score = 1000000 / (gameTimeToSecondDouble(time) * Integer.parseInt(movements));
        game.setScore(roundDouble2precision(score, 4));
        gameService.saveGame(game);

        return "redirect:/results";
    }


    private double gameTimeToSecondDouble(String time) {

        double hour = Double.parseDouble(time.substring(0, 2));
        double minute = Double.parseDouble(time.substring(3, 5));
        double second = Double.parseDouble(time.substring(6, 12));
        return hour * 60 * 60 + minute * 60 + second;
    }

    public double roundDouble2precision(double value, int places) {
        if (places < 0)
            throw new IllegalArgumentException();
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

}