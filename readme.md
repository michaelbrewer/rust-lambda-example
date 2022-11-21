# Building a rust lambda on mac m1

Building and deploying a Rust lambda on Apple Silicon

```bash
# Install cargo lambda locally
brew tap cargo-lambda/cargo-lambda
brew install cargo-lambda
# Build docker image to compile project
docker build -t rust .
# Build as arm64
docker run -it -v $(pwd):/project -w /project rust cargo lambda build --release
# Deploy
cargo lambda deploy
```
