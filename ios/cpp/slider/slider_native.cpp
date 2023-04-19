//
// Created by nsubw on 4/18/2023.
//

#include <stdint.h>
#include "slider.cpp"

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int sliderTestValue(int x) {

    //Slider slider = new Slider();
    //int val = slider->sliderValue(x);

    Slider slider;
    int val = slider.sliderValue(x);

    return val;
}