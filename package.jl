using Pkg
Pkg.Registry.add(RegistrySpec(url = "https://github.com/JuliaRegistries/General"))
Pkg.update()
Pkg.add(Pkg.PackageSpec(;name="Merly", version="1.0.2"))
using Merly
