# Test Thing

### Linux

Compile and run with:

```sh
./run
```

### Web

Compile with:

```sh
./run_web_build_script
```

Run with:

```sh
emrun index.html
```

### Notes

* I need to add `-sEXPORTED_RUNTIME_METHODS=HEAPF32` when using the latest emscripten I think now.
* Mouse is broken with latest emscripten. Can fix it by using an older version, but then you can't use opend I think :)
