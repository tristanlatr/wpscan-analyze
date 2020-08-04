# WPScan-Analyze Dockerfile


FROM rust:latest
WORKDIR /usr/src/wpscan-analyze
COPY * /usr/src/wpscan-analyze
RUN cargo build
RUN chown -R wpscan-analyze /wpscan-analyze
USER wpscan-analyze
ENTRYPOINT ["wpscan-analyze"]