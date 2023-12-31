using Revise
using CondensateDynamics
using HDF5, JLD2
using FFTW, CUDA, OrdinaryDiffEq
using Interpolations
using OrderedCollections
using LoopVectorization, LinearAlgebra

# ENV["PYTHON"]="usr/bin/python"
# using PyPlot
using LaTeXStrings
using Plots
import Makie, GLMakie
using ProgressBars, Colors

pyplot()
using PyCall
const plt = pyimport("matplotlib.pyplot")

# # Set other parameters as needed
# plt.rcParams["figure.figsize"] = [8, 6]
# plt.rcParams["font.size"] = 12
# plt.rcParams["lines.linewidth"] = 2
# Set other parameters as needed

includet("init/_plot_settings.jl")
# pyplot(size=(350, 220))
# if ENV["USER"] == "ubuntu"
#   plotly()
# else
#   pyplot()
# end

includet("plotting/plot_axial_evolution.jl")
includet("plotting/plot_isosurfaces.jl")
includet("utils/visual_utils.jl")
includet("init/init.jl")
includet("utils/sim_utils.jl")

includet("scripts/solitons.jl")

includet("scripts/lines.jl")


includet("scripts/tiles.jl")
includet("scripts/chempot.jl")
includet("auxiliary_scripts/aux_collapse.jl")
includet("auxiliary_scripts/aux_gs.jl")
includet("auxiliary_scripts/aux_collision.jl")
includet("auxiliary_scripts/aux_sigma2.jl")