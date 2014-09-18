class MainActivity < Android::App::Activity
  
  
  
  
  def onCreate(savedInstanceState)
    super
    
    layoutParams = Android::Widget::LinearLayout::LayoutParams.new(800, 150)
    #layoutParams.gravity = Android::View::Gravity::CENTER
    
    seekBar = Android::Widget::SeekBar.new(self)
    seekBar.Max = 100
    seekBar.Progress = 50 
    seekBar.LayoutParams = layoutParams
    #seekBar.MinimumHeight = 150
    
    @textView = Android::Widget::TextView.new(self)
    @textView.Text = "Initial text"
                                                   
    
    seekBar.OnSeekBarChangeListener = self

        
    linearLayout = Android::Widget::LinearLayout.new(self)
    
    linearLayout.addView(@textView)
    linearLayout.addView(seekBar)
    
    linearLayout.setPadding(40,40,0,40)
    self.contentView = linearLayout
  end
  
  
  def onProgressChanged(seekBar, progress, fromUser)
     @textView.Text = progress.to_s
  end

  def onStartTrackingTouch(seekBar)

  end

  def onStopTrackingTouch(seekBar)

  end
  
  
  
end


