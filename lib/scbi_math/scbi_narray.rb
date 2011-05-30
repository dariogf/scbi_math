require 'narray'

class ScbiNArray < NArray

  # mean absolute deviation
  def mad_mean
    me = self.mean
    mad = ((self - me ).abs).mean

    return [mad,me]

  end

  # meadian absolute deviation
  def mad_median
    me = self.median
    mad = ((self - me).abs).median

    return [mad,me]
  end

  # returns stddev for length=1
  def stddev

    if self.length<=1
      stddev=0
    else
      stddev=super()
    end

    return stddev
  end
  
  
  # coefficient of variance
  def variance_coefficient
     return ((stddev/mean)*100)
  end


  # fat mode calculates mode based on accumulated frequency with a window_size
  def fat_mode(window_size=10)

    fat_modes=[]
    max_fat=0

    self.length.times do |i|
      fat=get_window_value(i)

      fat_modes << fat

      if fat_modes[max_fat] < fat
        max_fat=i
      end

    end
    # puts "algo",max_fat
    return [max_fat,fat_modes[max_fat]]
  end


  # =======================================
  private

    def get_window_value(i,window_size=10)
      start_pos=[0,i-window_size].max

      end_pos=[self.length-1,i+window_size].min

      return self[start_pos..end_pos].sum
    end

end
