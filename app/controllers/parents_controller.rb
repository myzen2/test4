class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

#  def age
#    now = Time.now.utc.to_date
#    now.year - date_de_naissance.year - (date_de_naissance.to_date.change(:year => now.year) > now ? 1 : 0)
#  end

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.all
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
  end

  # GET /parents/new @enfant = current_user.enfants.build
  def new
    @parent = current_user.parents.build(date_de_naissance: Time.zone.parse("01-01-1960").to_date)

  end

  # GET /parents/1/edit
  def edit
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = current_user.parents.build(parent_params)

    respond_to do |format|
      if @parent.save
        format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        format.json { render :show, status: :created, location: @parent }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_params
      params.require(:parent).permit(:nom, :prenom, :adresse, :telephone, :date_de_naissance)
    end
end
