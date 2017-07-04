class AdvocatesController < ApplicationController
  before_action :set_advocate, only: [:show, :edit, :update, :destroy]

    def index
      @advocates = Advocate.all
    end

    def new
     @advocate = Advocate.new
    end

    def show
      #
    end

    def edit
      #
    end

    def create
      @advocate = Advocate.new(advocate_params)
      respond_to do |format|
        if @advocate.save
          format.html { redirect_to advocates_path, notice: 'Tag  was successfully created.' }
          format.json { render :show, status: :created, location: @advocate }
        else
          format.html { render :new }
          format.json { render json: @advocate.errors, status: :unprocessable_entity }
        end
      end
    end

    def update

      respond_to do |format|
        if @advocate.update(advocate_params)
          format.html { redirect_to @advocate, notice: 'Tag was successfully updated.' }
          format.json { render :show, status: :ok, location: @bed }
        else
          format.html { render :edit }
          format.json { render json: @advocate.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy

      respond_to do |format|
        format.html { redirect_to advocates_path, notice: 'Tag was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_advocate
        @advocate = Advocate.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def advocate_params
        params.require(:advocate).permit(:name,:age,:phone_number)
      end

end
