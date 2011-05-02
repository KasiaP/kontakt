class AddressbooksController < ApplicationController
 respond_to :html, :xml, :atom, :js
  # GET /addressbooks
  # GET /addressbooks.xml
  def index
  # @addressbooks = Addressbook.all   
 @addressbooks = Addressbook.search(params[:search]).order(:nazwisko).page(params[:page]).per(4)
  respond_with(@addressbooks)
 # @addressbooks = Addressbook.order(:nazwisko).page(params[:page]).per(5)
  #  respond_with(@addressbooks)
  
end

  # GET /addressbooks/1
  # GET /addressbooks/1.xml
  def show
    @addressbook = Addressbook.find(params[:id])
    respond_with(@addressbook)
  end

  # GET /addressbooks/new
  # GET /addressbooks/new.xml
  def new
    @addressbook = Addressbook.new
    respond_with(@addressbook)
  end

  # GET /addressbooks/1/edit
  def edit
    @addressbook = Addressbook.find(params[:id])
  end

  # POST /addressbooks
  # POST /addressbooks.xml
  def create
    @addressbook = Addressbook.new(params[:addressbook])
    flash[:notice] = 'Addressbook was successfully created.' if @addressbook.save
    respond_with(@addressbook)
  end

  # PUT /addressbooks/1
  # PUT /addressbooks/1.xml
  def update
    @addressbook = Addressbook.find(params[:id])
    flash[:notice] = 'Addressbook was successfully updated.' if @addressbook.update_attributes(params[:addressbook])
    respond_with(@addressbook)
  end

  # DELETE /addressbooks/1
  # DELETE /addressbooks/1.xml
  def destroy
    @addressbook = Addressbook.find(params[:id])
    @addressbook.destroy
    respond_with(@addressbook)
  end
end
