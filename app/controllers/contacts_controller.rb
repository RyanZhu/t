class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def index
    @contacts = Contact.all
  end
  def show
    @contact = Contact.find(params[:id])
  end
  def create
    @contact = Contact.new(params[:contact])
    @contact.save
    redirect_to :action => :show, :id => @contact.id
  end
  def edit
    @contact = Contact.find params[:id]
  end
  def update
    @contact = Contact.find params[:id]
    if @contact.update_attributes(params[:contact])
      redirect_to :action => :show, :id => @contact.id
    else
      render :action => 'edit'
    end
  end
end
