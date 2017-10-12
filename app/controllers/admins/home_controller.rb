class Admins::HomeController < AdminController
  def index
    @day_count = User.day_count.count
    @month_count = User.month_count.count
    @year_count = User.year_count.count
    @all_count = User.all.count
  end

end