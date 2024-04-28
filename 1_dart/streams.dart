// streams can return _multiple_ items in an async way
// sync  | int         | List<int>
// async | Future<int> | Stream<int>

// Example - radio station
// The radio station is always broadcasting (streaming), but only
// when we listen do we "read" the data. Once we stop listening,
// we stop "reading" the data stream.

// Multiple listeners can exist, and begin / stop listening at
// different points

// Example - Reading a file
// File readers read a stream of data in chunks - as long as we
// listen to stream in full we receive the entire file

import 'dart:async';

class NumberGenerator {
  int _counter = 0;

  // controller allows open / close / add to stream
  // broadcast allows for multiple consumers
  StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // send event over the stream every 1 second
      _controller.add(_counter);
      _counter += 1;
    });

    Future.delayed(Duration(seconds: 15), () {
      // close the stream after 15 seconds
      // note - remember to close streams when writing programs
      timer.cancel();
      _controller.close();
    });
  }
}

void main() {
  final numberGenerator = NumberGenerator();

  StreamSubscription sub1 = numberGenerator.getStream.listen((event) {
    print('sub1 received event: $event');
  });

  late StreamSubscription sub2;

  Future.delayed(Duration(seconds: 5), () {
    // note - by default streams can only have one consumer
    sub2 = numberGenerator.getStream.listen((event) {
      print('sub2 received event: $event');
    });
  });

  Future.delayed(Duration(seconds: 10), () {
    sub1.cancel();
    sub2.cancel();
    print('closed both streams');
  });
}
