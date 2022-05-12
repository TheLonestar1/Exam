class Iv871Controller < ApplicationController
  def index
    @student = Student.all
  end

  def new; end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(stud_param)
      redirect_to 'http://127.0.0.1:3000/iv871/'
    else
      render 'edit'
    end
  end
  include ActionView::RecordIdentifier

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
      format.turbo_stream {}
    end
  end

  def create
    @student = Student.new(stud_param)
    if @student.save
      redirect_to 'http://127.0.0.1:3000/iv871/'
    else
      render 'new'
    end
  end
  private def stud_param
    params.require(:student).permit(:tittle, :grady)
  end
end
