# I give up.

Can't even make it build on windows:

- gcc typo in wxCompile.nim (fixable, see [fork][3])
- wxWidgets compiled asset filename mismatch: has `lib` prefix while
  wxCompile.nim assume they don't. Fixable.
- Missing file: wxCompile.nim assumes `wxmsw30u_qa.lib` exists, which
  was nowhere to be found (tried both 3.0.2 and 3.0.4, same issue).
  This is where I give up.

While these certainly can be fixed, 3 strikes before I can even get a Hello
World working is just a tad too bleeding edge. Throw Windows into the mix
and... yeah, nope.

Maybe I'll just do wxPython + pynsist. At least there's still declarative GUI
there. XML, but hey, declarative is declarative.

# Nim OBS stream overlay

My attempt to rewrite [ORTS][1] in Nim & wxWidgets, because
[the DSL is too cool][2].

# Dev

Needs [choosenim](https://github.com/dom96/choosenim) first.

```sh
choosenim 0.19.4
nimble install
make
```

# License

NOBS source code is MIT licensed:

```
MIT License

Copyright (c) 2019 Bùi Thành Nhân

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

3rd party libraries' licenses are included in DEPS-LICENSES.txt

[1]: https://github.com/nhanb/orts
[2]: https://peterme.net/cross-platform-guis-and-nim-macros.html
[3]: https://github.com/nhanb/wxnim/commit/a4017f5d8438be627d931a8e2c75d77e454cfd45
