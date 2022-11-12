#include "wrapping_integers.hh"

// Dummy implementation of a 32-bit wrapping integer

// For Lab 2, please replace with a real implementation that passes the
// automated checks run by `make check_lab2`.

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

//! Transform an "absolute" 64-bit sequence number (zero-indexed) into a WrappingInt32
//! \param n The input absolute 64-bit sequence number
//! \param isn The initial sequence number
WrappingInt32 wrap(uint64_t n, WrappingInt32 isn) {
    uint64_t a = 1l << 32;
    uint32_t t = n % a;
    uint64_t b = isn.raw_value() + t;
    uint32_t c = b % a;
    return WrappingInt32{c};
}

//! Transform a WrappingInt32 into an "absolute" 64-bit sequence number (zero-indexed)
//! \param n The relative sequence number
//! \param isn The initial sequence number
//! \param checkpoint A recent absolute 64-bit sequence number
//! \returns the 64-bit sequence number that wraps to `n` and is closest to `checkpoint`
//!
//! \note Each of the two streams of the TCP connection has its own ISN. One stream
//! runs from the local TCPSender to the remote TCPReceiver and has one ISN,
//! and the other stream runs from the remote TCPSender to the local TCPReceiver and
//! has a different ISN.
uint64_t unwrap(WrappingInt32 n, WrappingInt32 isn, uint64_t checkpoint) {
    uint64_t a = 1l << 32;
    //! if overflow, the value will change to another size, and uint32_t is important to save space
    uint32_t b = n - isn;
//    uint64_t b;
//    if (n.raw_value() < isn.raw_value()) {
//        b = a + n.raw_value() - isn.raw_value();
//    }
//    else {
//        b = n.raw_value() - isn.raw_value();
//    }
    if (checkpoint > b) {
        uint64_t real_checkpoint = (checkpoint - b) + (a >> 1);
        return (real_checkpoint / a) * a + b;
    }
    return b;
}
