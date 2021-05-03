package com.trl.play_with_dagger_2.without_dagger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Car {

    private static final Logger LOGGER = LoggerFactory.getLogger(Car.class);

    private Engine engine;
    private Wheels wheels;

    public Car(Engine engine, Wheels wheels) {
        this.engine = engine;
        this.wheels = wheels;
    }

    public void drive() {
        LOGGER.debug("Driving...");
    }
}
