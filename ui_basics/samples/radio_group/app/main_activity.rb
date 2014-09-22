class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    layoutParams = Android::Widget::LinearLayout::LayoutParams.new(Android::View::ViewGroup::LayoutParams::MATCH_PARENT, Android::View::ViewGroup::LayoutParams::WRAP_CONTENT )
    
    @radioGroup = Android::Widget::RadioGroup.new(self)
    @radioGroup.Orientation = Android::Widget::LinearLayout::HORIZONTAL
    @radioGroup.OnCheckedChangeListener = self
    
    
    @radioOptionOne = Android::Widget::RadioButton.new(self)
    @radioOptionOne.Text = "Number 1"
    
    
    @radioOptionTwo = Android::Widget::RadioButton.new(self)
    @radioOptionTwo.Text = "Number 2"
    
    @radioGroup.addView(@radioOptionOne, 0, layoutParams)
    @radioGroup.addView(@radioOptionTwo, 1, layoutParams)
    
    @textView = Android::Widget::TextView.new(self)
    @textView.Text = "Selected Option : "
    
    linearLayout = Android::Widget::LinearLayout.new(self)
    
    linearLayout.addView(@textView)
    linearLayout.addView(@radioGroup)
    linearLayout.Orientation = Android::Widget::LinearLayout::VERTICAL
    
    self.contentView = linearLayout
  end

  
  def onCheckedChanged(group, checkedId)
   if(checkedId == 1)
     @textView.Text = "Selected Option : Number 1"
   elsif(checkedId == 2)
     @textView.Text = "Selected Option : Number 2"
   end 
  end
  
end
