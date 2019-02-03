package net.coffeecoding.service;

import net.coffeecoding.entity.Game;

import java.util.List;

public interface GameService {

    public void saveGame(Game game);
    public List<Game> getGames();
}
