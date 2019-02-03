package net.coffeecoding.dao;

import net.coffeecoding.entity.Game;

import java.util.List;

public interface GameDao {

    public void saveGame(Game game);

    public List<Game> getGames();

}
