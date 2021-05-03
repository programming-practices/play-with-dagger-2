package com.trl.play_with_dagger_2.without_dagger;

public class Main {
    public static void main(String[] args) {
        Car car = new Car(new Engine(), new Wheels());
        car.drive();
    }
}
