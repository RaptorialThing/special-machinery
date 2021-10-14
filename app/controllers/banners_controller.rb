class BannersController < ApplicationController
  def index
    @banners = Banner.all
  end

  def show
    @banner = Banner.find(params[:id])
  end  

  def edit
    @banner = Banner.find(params[:id])
  end  

  def update
    @banner = Banner.find(params[:id])

    if @banner.update(banner_params)
      redirect_to @banner
    else 
      render :edit 
    end     
  end

  def new
    @banner = Banner.new
  end

  def create

    if Advertiser.exists? then
    @first_advertiser = Advertiser.first
    else   
    @first_advertiser = Advertiser.new(name: "First", contact: "+8 800", about: "тестовый рекламодатель")
    @first_advertiser.save
    @first_advertiser = Advertiser.first
    end

    @banner = @first_advertiser.banners.new(banner_params)
    
    if @banner.save
      redirect_to @banner
    else
      render :new
    end  
  end

  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy

    redirect_to @banner
  end  

  private
    def banner_params
      params.require(:banner).permit(:title,:body)
    end  
end
