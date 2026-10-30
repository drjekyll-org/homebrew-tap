# drjekyll.org Homebrew Tap

Homebrew formulae for tools published by [drjekyll.org](https://github.com/drjekyll-org).

## Available formulae

| Formula   | Description                       | Project                                                |
|-----------|-----------------------------------|--------------------------------------------------------|
| `adocfmt` | An opinionated AsciiDoc formatter | [dheid/adocfmt](https://github.com/dheid/adocfmt)      |

## Installation

Install a formula directly. Homebrew adds the tap for you:

```bash
brew install drjekyll-org/tap/adocfmt
```

Or add the tap first, then install by name:

```bash
brew tap drjekyll-org/tap
brew install adocfmt
```

`adocfmt` runs on Java 17. Homebrew installs `openjdk@17` as a dependency, so you don't need a Java installation of your own.

## Upgrading

```bash
brew update
brew upgrade adocfmt
```

## Uninstalling

```bash
brew uninstall adocfmt
brew untap drjekyll-org/tap
```

## Maintenance

You don't need to edit `Formula/adocfmt.rb` by hand. The
[release workflow](https://github.com/dheid/adocfmt/blob/main/.github/workflows/release.yml)
in `dheid/adocfmt` creates it again for each tagged release and pushes it here. To change the formula, edit the template
in that workflow. Changes you make in this repository are overwritten by the next release.

## Issues

Report problems with a tool to its own project. Report problems with the tap itself, such as a broken install or a
wrong checksum, in [drjekyll-org/homebrew-tap](https://github.com/drjekyll-org/homebrew-tap/issues).
