class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    alertsList = Android::Widget::ListView.new(self)
    alertsList.adapter = adapter
    alertsList.onItemClickListener = self
    self.contentView = alertsList
  end
  
  def adapter
    Android::Widget::ArrayAdapter.new(self, Android::R::Layout::Simple_list_item_1, Alerts.all)
  end

  def onItemClick(parent, view, position, id)
    dialog = DialogFactory.getDialog(position, self)
    if dialog.respond_to?('setMessage')
      dialog.setMessage("This is a message to see if the dialog is working")
    end
    if dialog.respond_to?('setTitle')
      dialog.setTitle("Testing Title")
    end
    
    
    dialog.show()
  end
end
