module TimeWarp

using StatsBase
using Parameters

# reexport to let user specify dtw(⋅,⋅,distance)
using Reexport
@reexport using Distances

export Sequence,
       SequenceArray,
       seq_to_array,
       dtw,
       DTWDistance,
       DTWMethod,
       ClassicDTW,
       FastDTW,
       distpath,
       dtw_cost_matrix,
       fastdtw

include("utils.jl")
include("sequence.jl")
include("distance_interface.jl")
include("dtw.jl")
include("windowed_matrix.jl")
include("fastdtw.jl")

end # module
