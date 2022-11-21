//
// Created by 12096 on 2022/11/18.
//

#ifndef SPONGE_TIMER_H
#define SPONGE_TIMER_H

class Timer {
public:
    Timer(const int rto);
    void set_rto(const uint64_t rto);
    void start();
    void stop();
    bool is_running();
    bool expired(const size_t time_passed);

private:
    uint64_t _rto, _remaining;
    bool _running;

};

#endif //SPONGE_TIMER_H
