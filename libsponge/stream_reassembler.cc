#include "stream_reassembler.hh"

// Dummy implementation of a stream reassembler.

// For Lab 1, please replace with a real implementation that passes the
// automated checks run by `make check_lab1`.

// You will need to add private members to the class declaration in `stream_reassembler.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

StreamReassembler::StreamReassembler(const size_t capacity) : _next(0), _output(capacity), _capacity(capacity), _unassembled(map<size_t, char>()), _eof(1e9) {
}

//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string & data, const size_t index, const bool eof) {
    if (space() > 0) {
        for (size_t i = max(_next, index); i < index + data.size(); ++i) {
            //! if no space, do not push it to StreamReassembler
            if (i == end_index()) break;
            //! if the byte has not been recorded, record it.
            _unassembled.insert(make_pair(i, data[i - index]));
        }
        string s = "";
        //! add contiguous bytes
        for (auto it = _unassembled.begin(); it != _unassembled.end();) {
            if (it->first == _next) {
                _next++;
                s += it->second;
                _unassembled.erase(it++);
            }
            else {
                break;
            }
        }
        _output.write(s);
    }
    if (eof) {
        _eof = index + data.size();
    }
    if (_next >= _eof) {
        _output.end_input();
    }
}

size_t StreamReassembler::unassembled_bytes() const {
    return _unassembled.size();
}

bool StreamReassembler::empty() const {
    return _unassembled.empty();
}

size_t StreamReassembler::space() const {
    if (_output.buffer_size() + unassembled_bytes() < _capacity) {
        return _capacity - _output.buffer_size() - unassembled_bytes();
    }
    return 0;
}

size_t StreamReassembler::end_index() const {
    return _output.bytes_read() + _capacity;
}
