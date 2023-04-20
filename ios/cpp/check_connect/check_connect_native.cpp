//
// Created by nsubw on 4/7/2023.
//

#include <stdint.h>

#include "check_connect.cpp"
extern "C" __attribute__((visibility("default"))) __attribute__((used))
bool comPortConnect() {
    CheckConnect checkConnect;
    bool connected = checkConnect.isConnected();

    return connected;
}

#include "../slider/slider.cpp"
extern "C" __attribute__((visibility("default"))) __attribute__((used))
int sliderTestValue(int x) {

    //Slider slider = new Slider();
    //int val = slider->sliderValue(x);

    Slider slider;
    int val = slider.sliderValue(x);

    return val;
}