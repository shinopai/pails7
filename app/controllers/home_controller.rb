class HomeController < ApplicationController
  before_action :get_all
  before_action :get_latest

  def index
  end

  def timelines
  end

  def policies
  end

  def get_involved
    render 'get-involved'
  end

  # private
  def get_all
    @topics = Topic.all.order(created_at: :desc).limit(10)
  end

  def get_latest
    @latest_topics = Topic.all.order(created_at: :desc).limit(3)
  end
end
