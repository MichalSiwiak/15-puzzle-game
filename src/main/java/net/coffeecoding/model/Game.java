package net.coffeecoding.model;

public class Game {

    private String gameUser;
    private String time;
    private String movements;

    @Override
    public String toString() {
        return "Game{" +
                "gameUser='" + gameUser + '\'' +
                ", time='" + time + '\'' +
                ", movements='" + movements + '\'' +
                '}';
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
}
