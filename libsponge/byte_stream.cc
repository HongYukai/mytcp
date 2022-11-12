#include "byte_stream.hh"

// Dummy implementation of a flow-controlled in-memory byte stream.

// For Lab 0, please replace with a real implementation that passes the
// automated checks run by `make check_lab0`.

// You will need to add private members to the class declaration in `byte_stream.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

ByteStream::ByteStream(const size_t capacity) : buffer_(vector<char>()), capacity_(capacity), total_write_(0), total_read_(0) {  }

size_t ByteStream::write(const string &data) {
    if (input_ended() || data.empty()) return 0;
    size_t sz = data.size();
    size_t remain_sz = remaining_capacity();
    if (sz <= remain_sz) {
        copy(data.begin(), data.end(), back_inserter(buffer_));
    }
    else {
        copy(data.begin(), data.begin() + remain_sz, back_inserter(buffer_));
    }
    auto n = min(sz, remain_sz);
    total_write_ += n;
    return n;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
    if (len > buffer_size()) {
        return string{buffer_.begin(), buffer_.end()};
    }
    else {
        return string{buffer_.begin(), buffer_.begin() + len};
    }
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
    if (len == 0) return;
    if (len >= buffer_size()) {
        total_read_ += buffer_size();
        buffer_.erase(buffer_.begin(), buffer_.end());
    }
    else {
        total_read_ += len;
        buffer_.erase(buffer_.begin(), buffer_.begin() + len);
    }
}

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
    string res = peek_output(len);
    pop_output(len);
    return res;
}

void ByteStream::end_input() {
    end_input_ = true;
}

bool ByteStream::input_ended() const { return end_input_; }

size_t ByteStream::buffer_size() const { return buffer_.size(); }

bool ByteStream::buffer_empty() const { return buffer_.empty(); }

bool ByteStream::eof() const { return end_input_ && buffer_empty(); }

size_t ByteStream::bytes_written() const { return total_write_; }

size_t ByteStream::bytes_read() const { return total_read_; }

size_t ByteStream::remaining_capacity() const { return capacity_ - buffer_size(); }
