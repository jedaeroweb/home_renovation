class ContactsController < ApplicationController
  load_and_authorize_resource  except: [:complete]

  # GET /contacts/complete
  def complete
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    if current_user.present?
      @contact.user_id=current_user.id
    end

    respond_to do |format|
      if @contact.save
        format.html { redirect_to contact_complete_path, notice: 'question was successfully created.' }
        format.json { render :complete, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private


  # Only allow a list of trusted parameters through.
  def contact_params
    params.require(:contact).permit(:contact_category_id, :title, :phone, :enable, contact_content_attributes: [:content])
  end
end
