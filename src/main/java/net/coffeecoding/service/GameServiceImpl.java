package net.coffeecoding.service;

import net.coffeecoding.dao.GameDao;
import net.coffeecoding.entity.Game;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GameServiceImpl implements GameService {

    @Autowired
    private GameDao gameDao;


    @Override
    @Transactional
    public void saveGame(Game game) {
        gameDao.saveGame(game);

    }

    @Override
    @Transactional
    public List<Game> getGames() {
        return gameDao.getGames();
    }
}
