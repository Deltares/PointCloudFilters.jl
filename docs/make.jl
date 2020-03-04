using Documenter, PointCloudFilters

makedocs(;
    modules=[PointCloudFilters],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/evetion/PointCloudFilters.jl/blob/{commit}{path}#L{line}",
    sitename="PointCloudFilters.jl",
    authors="Maarten Pronk, Deltares",
    assets=String[],
)

deploydocs(;
    repo="github.com/evetion/PointCloudFilters.jl",
)
