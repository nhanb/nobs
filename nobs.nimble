# Package

version       = "0.1.0"
author        = "nhanb"
description   = "Fighting game stream overlay"
license       = "MIT"
srcDir        = "src"
bin           = @["nobs"]
backend       = "cpp"


# Dependencies

requires "nim >= 0.19.4"
requires "https://github.com/PMunch/wxnim.git"
