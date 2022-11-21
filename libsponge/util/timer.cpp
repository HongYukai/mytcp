//
// Created by 12096 on 2022/11/18.
//

#include "timer.h"

Timer::Timer(const int rto) : _rto(rto), _remaining(rto), _running(false) {}

void Timer::start() {
    _running = true;
    _remaining = _rto;
}

bool Timer::expired(const size_t time_passed) {
    if (_remaining <= time_passed) {
        _running = false;
        return true;
    }
    _remaining -= time_passed;
    return false;
}

void Timer::stop() {
    _running = false;
}

void Timer::set_rto(const int rto) {
    _rto = rto;
}

bool Timer::is_running() {
    return _running;
}



