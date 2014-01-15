class MembersController < ApplicationController


    def new
      @member = Member.new
    end
    def create
    @member = Member.new(member_params)

      if @member.save
        MemberMailer.welcome_email(@member).deliver
        redirect_to @member
      else
         render  'new'
      end
  end

  def show
      @member = Member.find(params[:id])
  end

  private

  def member_params
      params.require(:member).permit(:myname, :email, :login)
    end


end
