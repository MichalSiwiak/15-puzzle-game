package net.coffeecoding.entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "game")
public class Game {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String gameUser;
    private String time;
    private String movements;
    private double score;
    private Timestamp date;

    @Override
    public String toString() {
        return "Game{" +
                "id=" + id +
                ", gameUser='" + gameUser + '\'' +
                ", time='" + time + '\'' +
                ", movements='" + movements + '\'' +
                ", score=" + score +
                ", date=" + date +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGameUser() {
        return gameUser;
    }

    public void setGameUser(String gameUser) {
        this.gameUser = gameUser;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMovements() {
        return movements;
    }

    public void setMovements(String movements) {
        this.movements = movements;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
}
