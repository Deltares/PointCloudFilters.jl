# [WIP] PointCloudFilters

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://evetion.github.io/PointCloudFilters.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://evetion.github.io/PointCloudFilters.jl/dev)
[![Build Status](https://travis-ci.com/evetion/PointCloudFilters.jl.svg?branch=master)](https://travis-ci.com/evetion/PointCloudFilters.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/evetion/PointCloudFilters.jl?svg=true)](https://ci.appveyor.com/project/evetion/PointCloudFilters-jl)
[![Codecov](https://codecov.io/gh/evetion/PointCloudFilters.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/evetion/PointCloudFilters.jl)
[![Build Status](https://api.cirrus-ci.com/github/evetion/PointCloudFilters.jl.svg)](https://cirrus-ci.com/github/evetion/PointCloudFilters.jl)

A Julia package to filter LiDAR pointclouds.

## Usage
```julia
using LazIO
using PointCloudFilters

pc = LazIO.load(fn)
f = MedianFilter(window=3, iterations=3)

indices = findall(f, pc)
classify!(pc, indices, :ground)
```

## Noise Algorithms
- [WIP] DRAGANN as described by [Neuenschwander and Pitts 2019](https://doi.org/10.1016/j.rse.2018.11.005).
- [WIP] Lasnoise voxel method as described by [Isenburg](http://lastools.org/download/lasnoise_README.txt)
- [WIP] Voxel method as described by [Griffioen](http://resolver.tudelft.nl/uuid:2ffa73f4-34cc-4ea0-82df-11e61cb47bea)

## Ground filtering
- [WIP] Ground filter as described by [Neuenschwander and Pitts 2019](https://icesat-2.gsfc.nasa.gov/sites/default/files/page_files/ICESat2_ATL08_ATBD_r002_v2.pdf)
- ...
