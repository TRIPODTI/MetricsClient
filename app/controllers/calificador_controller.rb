class CalificadorController < ApplicationController

  require 'net/https'
  require 'open-uri'
  def create
    @device= params[:device]
  end
  def calificar
    if params[:excelente]
      url = URI.parse('http://ec2-54-243-207-219.compute-1.amazonaws.com/create?rate[device_id]=AAA001&rate[in_date]=02/10/2012%2011:19:20&rate[selected_option]=E')
      result = Net::HTTP.get(url)
      redirect_to contacto_path
    end

    if params[:bueno]
      url = URI.parse('http://ec2-54-243-207-219.compute-1.amazonaws.com/create?rate[device_id]=AAA001&rate[in_date]=02/10/2012%2011:19:20&rate[selected_option]=B')
      result = Net::HTTP.get(url)
      redirect_to contacto_path
    end
    if params[:regular]
      url = URI.parse('http://ec2-54-243-207-219.compute-1.amazonaws.com/create?rate[device_id]=AAA001&rate[in_date]=02/10/2012%2011:19:20&rate[selected_option]=R')
      result = Net::HTTP.get(url)
      redirect_to contacto_path
    end
    if params[:malo]
      url = URI.parse('http://ec2-54-243-207-219.compute-1.amazonaws.com/create?rate[device_id]=AAA001&rate[in_date]=02/10/2012%2011:19:20&rate[selected_option]=M')
      result = Net::HTTP.get(url)
      redirect_to contacto_path
    end
  end

  def editar
  end

  def contacto
  end
end
