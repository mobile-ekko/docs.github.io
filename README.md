# Note dev

Link [Link]

  [Link]: https://v99.com

## Installation test local

1. pip
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
```
2. get pip
```
python3 get-pip.py
```
3. mkdocs
```
pip install mkdocs
```
4. cd Project
5. mkdocs material
```
pip install mkdocs-material
```
6. install plugin
```
pip install -r requirements.txt
```


## Run test

```sh
make serve
```

## Build test

``` sh
make build
```

## Auto deploy when push code to brach main. Change congig in [Link](./.github/workflows/pages.yml)

### Tab in table <small>required</small> { #Tab in table data-toc-label="Tab in table" }
tạo sh với 2 option
=== "Latest"

    ``` sh
    brew install node
    ```

=== "16.x"

    ``` sh
    brew install node@16.x # (1)!
    ```

    1.  2 sh + note

Note


``` sh
brew install node@16.x # (1)!
```

1.  Sh + note

---

__In Dam__:

??? question "How to add plugins to the Docker image?"
    content

    
!!! note "hight light 1 note"



struct project and no copy
``` { .sh .no-copy }
.
├─ docs/
│  └─ index.md
└─ mkdocs.yml
```




