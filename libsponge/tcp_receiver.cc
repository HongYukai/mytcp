#include "tcp_receiver.hh"

// Dummy implementation of a TCP receiver

// For Lab 2, please replace with a real implementation that passes the
// automated checks run by `make check_lab2`.

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

void TCPReceiver::segment_received(const TCPSegment &seg) {
    if (recv_state == LISTEN && seg.header().syn) {
        recv_state = SYN_RECV;
        isn = seg.header().seqno;
    }
    if (recv_state == SYN_RECV) {
        _reassembler.push_substring(seg.payload().copy(), unwrap(seg.header().seqno - !seg.header().syn, isn, _reassembler.get_next()), seg.header().fin);
    }
}

optional<WrappingInt32> TCPReceiver::ackno() const {
    if (recv_state == LISTEN) {
        return nullopt;
    }
    if (_reassembler.stream_out().input_ended()) {
        return {WrappingInt32(isn) + _reassembler.get_next() + 2};
    }
    return {WrappingInt32(isn) + _reassembler.get_next() + 1};
}

size_t TCPReceiver::window_size() const { return _capacity - _reassembler.stream_out().buffer_size(); }
