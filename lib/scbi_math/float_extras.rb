# extend classes with extra methods
class Float
  def round_to(d = 2)

    res = (self*10.0*d).round/(10.0*d)
    return res
  end
end

