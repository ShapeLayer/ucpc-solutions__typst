# ucpc-solutions

[ucpc-solutions](https://github.com/ShapeLayer/ucpc-solutions__typst) is the port of the LaTeX theme [ucpcc/2020-solutions-theme](https://github.com/ucpcc/2020-solutions-theme) and is used widely for writing and publishing problem solutions for algorithm contests at [Baekjoon Online Judge](https://acmicpc.net).

## Getting Started

```typst
#import "/lib/lib.typ" as ucpc
#show: ucpc.ucpc.with(
  title: "Code Race \nArena #3",
  authors: ("Code Race Arena #3 TF", ),
)
```

## Examples

See [`/examples`](/examples/).

## For Contributing

Requirements: [just](https://github.com/casey/just), [typst-test](https://github.com/tingerrr/typst-test)

**Recompile Refs for Testing**
```sh
just update-test
```

**Run Test**
```sh
just test
```

---

* Special Thanks: [@kiwiyou](https://github.com/kiwiyou) - about technical issue 

* Since this ported version has been re-implemented only for appearance, this repository does not include the source code of any distribution or variant of ucpc-solutions.
