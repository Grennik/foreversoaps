class AdminController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'

  def dash
    @categories = Category.all
  end

  def newsletter
    @newsletters = Newsletter.all
    @categories = Category.all
    @newsmailers = Newsmailer.all
  end

  def newsletterusers
    @newsmailers = Newsmailer.all
    @categories = Category.all
  end

  def newnewsletter
    @newsletter = Newsletter.new
    @categories = Category.all
  end

  def users
    @users = User.all
    @categories = Category.all
  end

  def createnewsletter
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to admin_newsletter_path
    else
      render 'new'
    end
  end

  def destroynewsmailer
    @newsmailer = Newsmailer.find(params[:id])
    @newsmailer.destroy

    redirect_to admin_newsletter_users_path
  end

  def shownewsletter
    @newsletter = Newsletter.find(params[:id])
    @categories = Category.all
  end

  def editnewsletter
    @newsletter = Newsletter.find(params[:id])
    @categories = Category.all
  end

  def updatenewsletter
    @newsletter = Newsletter.find(params[:id])

    if @newsletter.update(newsletter_params)
      redirect_to admin_newsletter_path
    else
      render 'edit'
    end
  end

  def destroynewsletter
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy

    redirect_to admin_newsletter_path
  end

  private
  def newsletter_params
      params.require(:newsletter).permit(:article_title, :article)
  end


end
