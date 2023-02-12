The bindings generator requires dart and node.

If you haven't installed the required node packages, or they have been updated,
please run:
```
npm install
```

To compile the bindings generator run:
```
dart compile js dart_main.dart -o dart_main.js
```

Finally, run node to build the bindingS:
```
node main.mjs <output directory>
```
