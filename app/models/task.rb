class Task < ApplicationRecord
  def index
    @tasks = Tasks.all
  end
end
