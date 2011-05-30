require File.dirname(__FILE__) + '/test_helper.rb'



class TestScbiMath < Test::Unit::TestCase

  def setup
  end
  
  def test_scbi_narray_class
    
    na=ScbiNArray.to_na([2,3,4])
    assert_equal('ScbiNArray',na.class.to_s)
    



    # istat=JSON.parse(File.read('initial_stats.json'))
    # 
    # x=[]
    # istat['qv'].each do |qv|
    #   x<< qv['tot'].to_i
    #   
    # end
    # # Usage:
    # 
    # s=ScbiStats.new(x)
    # 
    # puts s.fat_mode
  end
  
  def test_fat_mode
    
    na=ScbiNArray.to_na((1..40).collect.to_a)

    na[10]=1000
    
    assert_equal([10,21],na.mad_median)
    assert_equal([47.525,45.225],na.mad_mean)
    
    
    assert_equal([20,1430], na.fat_mode)
    
    
  end
end
