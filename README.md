# Nostr – Swift Package

## ⚠️ Deprecated ⚠️

Use https://github.com/rust-nostr/nostr-sdk-swift instead.

## 📄 Usage

Check https://rust-nostr.org

## Information for Maintainers and Contributors

This repository is used to publish a Swift package providing Swift bindings to the Nostr's [underlying Rust implementation](https://github.com/rust-nostr/nostr). The Swift bindings are generated using [UniFFi](https://github.com/mozilla/uniffi-rs).

Any changes to the Nostr SDK, the Swift bindings, and the configuration of this Swift package must be made via the [nostr](https://github.com/rust-nostr/nostr) repo.

To release a new version of this package, go to the Actions tab of this GitHub repository. Then select the *Publish Swift Package* workflow and run it on the `master` branch. It will ask for a version as input. This allows you to specify the version (e.g., *0.0.1*) of the [nostr](https://github.com/rust-nostr/nostr) repository that should be released as a Swift package.
