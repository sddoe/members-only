class MembersController < ApplicationController
  def index
    @member = Member.all
  end
  def new 
    @member = Member.new
  end
  def create 
    # @member = Member.find(params[:id])
    # 
    if @member.save
      @member = Member.new(params[:id]) if params[:id]
      redirect_to members_path, notice: "members list"
    else
      render :new
    end
  end
end
