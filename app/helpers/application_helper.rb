
module ApplicationHelper
    def check_nav_pic(current_user)
    
        image_tag('/assets/profiles/user.png')
     
    end
  
    def flash_class(level)
      bootstrap_alert_class = {
        'success' => 'alert-success',
        'notice' => 'alert-info',
        'alert' => 'alert-danger'
      }
      bootstrap_alert_class[level]
    end
  end