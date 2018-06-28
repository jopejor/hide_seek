abstract cells

type cell <: cells
    composition :: Vector{Int}
    fitness :: Float64
    function ::Function
end

type Population <: cells
    individuals::Array{cell}
end

