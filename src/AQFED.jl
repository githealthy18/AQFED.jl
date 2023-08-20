module AQFED

__precompile__(true)
module Math
include("math/erfc.jl")
include("math/normal.jl")
include("math/as241.jl")
include("math/lambertw.jl")
include("math/delbourgo_gregory.jl")
include("math/transform.jl")
include("math/schaback.jl")
include("math/hypersphere.jl")
include("math/polyroots.jl")
end

__precompile__(true)
module Black
include("black/black.jl")
include("black/iv_solver_common.jl")
include("black/iv_solver_halley.jl")
include("black/iv_solver_householder.jl")
include("black/iv_solver_lisor.jl")
include("black/iv_solver_jaeckel.jl")
impliedVolatility(isCall::Bool, price::T, f::T, strike::T, tte::T,  df::T)  where {T} =  impliedVolatilitySRHalley(isCall, price,f,strike,tte, df, T(0.0), 64, Householder())
export impliedVolatility

include("black/barrier.jl")
end

module Bachelier
include("bachelier/bachelier.jl")
include("bachelier/iv_solver_lfk.jl")
include("bachelier/bachelier_fractal.jl")
end

__precompile__(true)
module Random
include("random/mixmax.jl")
include("random/well1024a.jl")
include("random/mt64.jl")
include("random/blabla.jl")
include("random/philox.jl")
include("random/chacha.jl")
include("random/chacha_simd.jl")
include("random/mrg32k3a.jl")
include("random/mrg63k3a.jl")
include("random/ssobol.jl")
include("random/dsobol.jl")
include("random/rngseq.jl")
end

module TermStructure
include("ts/heston.jl")
include("ts/surface.jl")
include("ts/svi.jl")
include("ts/curve.jl")
include("ts/lv.jl")
include("ts/dividend.jl")
include("ts/fukasawa_interp.jl")
end

module American
include("american/andersenlake.jl")
include("american/andersenlakepp.jl")
include("american/andersenlaken.jl")
include("american/andersenlakejh.jl")
include("american/andersenlakeg.jl")
include("american/ju98.jl")
include("american/rkl.jl")
end

module Basket
include("basket/deelstra.jl")
include("basket/asian.jl")
include("basket/pln.jl")
end

module FDM
include("fdm/payoff.jl")
include("fdm/solver.jl")
include("fdm/peclet.jl")
include("fdm/grid.jl")
include("fdm/trbdf2.jl")
include("fdm/log_trbdf2.jl")
include("fdm/rkl.jl")
end

module PLN
include("pln/etore_gobet.jl")
end


module MonteCarlo
include("mc/bb.jl")
include("mc/bbvector.jl")
include("mc/payoffs.jl")
include("mc/black.jl")
include("mc/heston.jl")
include("mc/lv.jl")
include("mc/roughbergomi.jl")
end

module Collocation
include("collocation/convex.jl") #utilities to ensure convexity of prices, and build X for collocation
include("collocation/poly.jl")
include("collocation/logpoly.jl")
include("collocation/pp_fast.jl")
include("collocation/bspline.jl")
include("collocation/expbspline.jl")
end


module VolatilityModels
include("vol/ssvi_calibration.jl")
include("vol/svi_calibration.jl")
include("vol/fengler.jl")
include("vol/rbf.jl")
include("vol/lnmixture.jl")
end

module PDDE
include("pdde/lvg.jl")
include("pdde/lvg_black.jl")
include("pdde/lvg_quadratic.jl")
include("pdde/lvg_quadratic_cmplx.jl")
include("pdde/ah.jl")
end

end