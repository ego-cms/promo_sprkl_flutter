import 'dart:math';

import 'package:thesprkl_template/services/models/even_args.dart';

class EventService {
  EventService._privateConstructor();

  static final EventService _instance = EventService._privateConstructor();

  factory EventService() {
    return _instance;
  }

  Map<Type, List<Map<String, Function>>> events = {};

  String subscribe<T extends EventArgs>(void Function(T) callback) {
    if (T == Null) {
      return '';
    }

    if (!events.containsKey(T)) {
      events[T] = [];
    }

    for (var element in events[T]!) {
      if (element.containsValue(callback)) {
        return '';
      }
    }

    final key = (Random().nextDouble() * 256).toString();
    events[T]?.add({key: callback});
    return key;
  }

  void send<T extends EventArgs>(T data) {
    events[T]?.forEach(
      (map) {
        for (var action in map.values) {
          action(data);
        }
      },
    );
  }

  void unsubscribe<T extends EventArgs>(String key) {
    if (events.containsKey(T)) {
      var actions = List<Map<String, Function>>.from(events[T]!);
      for (var action in actions) {
        if (action.containsKey(key)) {
          events[T]!.remove(action);
        }
      }
    }
  }
}
