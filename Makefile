.DEFAULT_GOAL := run

.PHONY: build run test fmt clippy clean release install uninstall

build:
	cargo build

run:
	cargo run

test:
	cargo test

fmt:
	cargo fmt

clippy:
	cargo clippy --all-targets --all-features -- -D warnings

clean:
	cargo clean

release:
	cargo build --release

install: release
	sudo install -Dm755 target/release/guessgame /usr/local/bin/guessgame

uninstall:
	sudo rm -f /usr/local/bin/guessgame
