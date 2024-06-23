# Third Party Libraries

## bgfx

- Source: https://github.com/bkaradzic/bgfx
- Version: Pulled at change d95a6436

Stripped out examples, build scripts, github files, also all the third party libs required for shaderc, since we don't need that for now

## bimg

- Source: https://github.com/bkaradzic/bimg
- Version: Pulled at change 8355d36b

Stripped out build scripts and github files

## bx

- Source: https://github.com/bkaradzic/bx
- Version: Pulled at change 51f25ba6

Stripped out tests and catch dependency, all build scripts and github files leaving just the code required to run and the license

## ImGui

- Source: https://github.com/ocornut/imgui
- Version: 1.89.9

Removed backends we don't need, added the bgfx backent and then removed the examples folder, but otherwise same as upstream
