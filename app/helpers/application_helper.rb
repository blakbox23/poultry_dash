
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

    def days_left(trip)
      if !Trip.last 
        return 0
      elsif trip.gross == nil
      days_elapsed = Date.today - trip.s_date
      days_left = 35 - days_elapsed
      return days_left.to_f.to_i
      end

    end
  end