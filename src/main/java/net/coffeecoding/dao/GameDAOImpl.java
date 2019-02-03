package net.coffeecoding.dao;

import net.coffeecoding.entity.Game;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class GameDAOImpl implements GameDao {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveGame(Game game) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(game);

    }

    @Override
    public List<Game> getGames() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Game> theQuery =
                currentSession.createQuery("SELECT g from Game g",
                        Game.class);

        // execute query and get result list
        List<Game> games = theQuery.getResultList();

        // return the results
        return games;
    }
}
