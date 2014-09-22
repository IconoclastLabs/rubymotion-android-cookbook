class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    ayoutParams = Android::Widget::LinearLayout::LayoutParams.new(Android::View::ViewGroup::LayoutParams::MATCH_PARENT, Android::View::ViewGroup::LayoutParams::WRAP_CONTENT )
    
        toggleButton = Android::Widget::ToggleButton.new(self)
        toggleButton.OnCheckedChangeListener = self
        toggleButton.TextOn = "Im On"
        toggleButton.TextOff = "Im Off"
    
        @textView = Android::Widget::TextView.new(self)
        @textView.Text = "The Button Is : "
    
        linearLayout = Android::Widget::LinearLayout.new(self)
    
        linearLayout.addView(@textView)
        linearLayout.addView(toggleButton)
        linearLayout.Orientation = Android::Widget::LinearLayout::VERTICAL
    
        self.contentView = linearLayout
  end
  
  def onCheckedChanged(button, isChecked)
    if(isChecked)
      @textView.Text = "The Button Is : Checked!"
    else
      @textView.Text = "The Button Is : Un-Checked!"
    end
  end
  
end
