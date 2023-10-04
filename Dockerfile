FROM rust:bullseye
WORKDIR /app
COPY cherrybomb-repo /app
RUN cargo build

FROM debian:bullseye-slim
WORKDIR /app
COPY --from=0 /app/target/debug/cherrybomb /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/cherrybomb"]
