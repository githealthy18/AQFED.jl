using AQFED.Math, AQFED.Black
using Images

function bachelierVolatilityFunctionC3(v; forward=1.0, moneyness=exp(-1.0), targetPrice=0.12693673750664397)
    fmk = forward - forward / moneyness
    h = fmk / v
    cEstimate = fmk * normcdf(h) + v * normpdf(h)
    vega = normpdf(h)
    volga = vega * h^2 / v
    c3 = vega * (-3 * h^2 / v^2 + h^4 / v^2)
    return cEstimate - targetPrice, vega, volga, c3
end

# *(x::HSV{T}, f::T) where {T} = HSV(x.h * f, x.s * f, x.v * f)
# *(f::T, x::HSV{T}) where {T} = x * f
# +(x::HSV{T}, y::HSV{T}) where {T} = HSV(x.h + y.h, x.s + y.s, x.v + y.v)
#usage:
# factor = 2.5; w = 1024; h = 1024;
# img = AQFED.Fractal.makeFractal(w,h,-factor,factor,-factor,factor);
#using FileIO
# save(File{format"PNG"}("test.png"),img)
