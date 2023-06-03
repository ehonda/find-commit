# 🎰 git roulette

## 🎡 Overview

`git roulette` is a command line tool that helps you to find a commit with a short SHA matching a given pattern.

## 👩‍💻 Installation

Put the `git-roulette` script somewhere in your `$PATH` and make it executable. For example:

```bash
cp git-roulette.sh /usr/local/bin/git-roulette
chmod +x /usr/local/bin/git-roulette
```

## 🎲 Usage

Usage is straightforward:

```bash
git-roulette <regex-or-predefined-pattern>
```

__ℹ A list of predefined patterns will be amended soon.__

Some exmaples:

```bash
git-roulette "^[a-f]$"
git-roulette "natural number (optional e notation)"
git-roulette "nat e"
git-roulette "0e0"
git-roulette "0"
```
