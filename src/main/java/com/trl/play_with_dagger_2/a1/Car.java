package com.trl.play_with_dagger_2.a1;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.inject.Inject;

public class Car {

    private static final Logger LOGGER = LoggerFactory.getLogger(Car.class);

    private Engine engine;
    private Wheels wheels;

    @Inject
    public Car(Engine engine, Wheels wheels) {
        this.engine = engine;
        this.wheels = wheels;
    }

    public void drive() {
        LOGGER.debug("Driving...");
    }
}
