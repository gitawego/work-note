## FAQ

### encounter ``RuntimeError: memory access out of bounds``

often it's because the build is not in release mode.

you have to build rust code in release mode:

```shell
cargo  +nightly build --target wasm32-unknown-unknown --release
```
