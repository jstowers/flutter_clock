# Digital Clock

## Thank You

Thank you Google and Lenovo for offering this Clock Design challenge!

You provided a great opportunity for me to sharpen my Dart/Flutter skillset.

Your working codebase, with a pre-built Clock Model and Digital Clock widget, was a perfect springboard to create and explore.

## Introduction & Motivation

My name is Joe Stowers and I am a full-stack mobile developer at [Resideo](https://www.resideo.com/us/en) in Austin, Texas.  

Resideo is building the next-gen whole-home ecosystem of IoT products, including thermostats, water leak detectors, and air quality monitors.

Our team uses Dart and Flutter to create an engaging, delightful mobile app experience.  This Clock Design contest allowed me to sharpen my Dart/Flutter skillset, especially with Provider and Automations, and exercise my design muscles for fun and pleasure!


## Key Learnings

• I initially tried to build the app using the base configuration with the ClockModel passed into the DigitalClock class.  This worked intitially, but as my widget tree grew, it became increasingly more difficult to pass the necessary properties (time, container size, animation values, and styles) through class constructors.

• Facing some difficult animation sequences, I decided to refactor the codebase and use the [`Provider`](https://pub.dev/packages/provider) pattern to manage the time state and screenSettings state.  With no previous experience using this pattern, the refactor was challenging and took a few days.  The online tutorial [Simple App State Management](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple) provided an excellent resource for understanding and implementing the three key classes: [`ChangeNotifier`](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html), [`ChangeNotifierProvider`](https://pub.dev/documentation/provider/latest/provider/ChangeNotifierProvider-class.html), and [`Consumer`](https://pub.dev/documentation/provider/latest/provider/Consumer-class.html).  Thank you!

• After refactoring, the codebase is much cleaner and I am amazed at how little code is needed to manage a Timer using the `ChangeNotifierProvider` versus the internal setState methods of the original DigitalClock class.

• In my time_state model, an error appears within the Provider package when `notifyListeners()` is called after the first few seconds.  The model stabilizes and this errors disappears.  I researched and debugged this issue but could not eliminate this error on app startup.  Importantly, this error does not affect the clock's accuracy.  I have seen other people report issues where `notifyListeners` calls `setState() or markNeedsBuild() during a build`.  Given the complexity of handling frequent state changes with timers, this issue is less severe than the breaking changes I saw when mixing internal Widget state with a ChangeNotifierProvider.


## Next Steps

• Design and create dazzling new animations, including new colors, patterns, and randomization.

• Incorporate a screen to attractively display the location and weather.

• Allow the user to change fonts and color patterns.


## Conclusion

Thank you for your consideration of my Clock Design.  Should you have any questions, please let me know.

Joe Stowers
Monday, January 20, 2020

greenchiletexan@gmail.com

[LinkedIn](https://www.linkedin.com/in/joestowers/)