## FAQ

### WASM

#### encounter ``RuntimeError: memory access out of bounds``

often it's because the build is not in release mode.

you have to build rust code in release mode:

```shell
cargo  +nightly build --target wasm32-unknown-unknown --release
```

### neon

#### error: ``thread 'main' panicked at 'Couldn't find node_root_dir in node-gyp output.'`` in windows

install windows-build-tools in an admin shell

```shell
npm install -g --production windows-build-tools
```
