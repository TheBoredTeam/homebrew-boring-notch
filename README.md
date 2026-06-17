# Boring Notch Homebrew Tap

This repository provides the official [Homebrew](https://brew.sh) cask for **Boring Notch**.

## Install

Install Boring Notch with Homebrew:

```bash
brew install --cask theboredteam/boring-notch/boring-notch
```

## Update

Boring Notch includes an in-app updater, which is the recommended way to stay up to date.

If you prefer to update with Homebrew, use:

```bash
brew upgrade --cask boring-notch
```

### Optional: Trust this tap for Homebrew upgrades

With Homebrew 6, `brew upgrade` may skip casks from third-party taps unless the tap is trusted.

Only use this step if you want Homebrew to include this tap during upgrades:

```bash
brew trust theboredteam/boring-notch
```

> [!NOTE]
> Trusting a third-party tap is optional and not recommended for everyone. Only do this if you understand the security trade-off and are using Homebrew to manage updates instead of the recommended in-app updater.

## Uninstall

The best way to completely remove Boring Notch is with:

```bash
brew uninstall --cask boring-notch
```
Ensure that the app is not running before you attempt to uninstall it.
