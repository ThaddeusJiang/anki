<h1 align="center">Welcome to anki 👋</h1>
<p>
  <a href="#" target="_blank">
    <img alt="Version" src="https://img.shields.io/badge/elixir-1.8-green">
  </a>
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/ThaddeusJiang" target="_blank">
    <img alt="Twitter: ThaddeusJiang" src="https://img.shields.io/twitter/follow/ThaddeusJiang.svg?style=social" />
  </a>
</p>

> Importing the highlights of book from kindle into Anki

## Getting Started

```sh
mix deps.get

mix escript.build
```

## Usage

1. Exporting highlzight from kindle?

   1. open kindle app(if you didn't install it, install it)
   2. open a book which you want to export
   3. open your word book, and share to your email.
      then you get a html file.

   <img alt="kindle export" src="./docs/kindle-export.png" width="50%"/>

2. run `anki`, generate `out.txt`

```sh
$ ./anki file.html
// out.txt
```

3. Importing into anki
   1. open Anki for Mac
   2. open File > Import, and chose `out.txt`
   3. chose your deck and import

![anki import](./docs/anki-import.png)

## Author

👤 **Jifa Jiang**

- Twitter: [@ThaddeusJiang](https://twitter.com/ThaddeusJiang)
- Github: [@ThaddeusJiang](https://github.com/ThaddeusJiang)

## Show your support

Give a ⭐️ if this project helped you!

---

_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
