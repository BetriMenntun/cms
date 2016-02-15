class LectureCommentsController < ApplicationController
  before_action :set_lecture_comment, only: [:show, :edit, :update, :destroy]

  # GET /lecture_comments
  # GET /lecture_comments.json
  def index
    @lecture_comments = LectureComment.all
  end

  # GET /lecture_comments/1
  # GET /lecture_comments/1.json
  def show
  end

  # GET /lecture_comments/new
  def new
    @lecture_comment = LectureComment.new
  end

  # GET /lecture_comments/1/edit
  def edit
  end

  # POST /lecture_comments
  # POST /lecture_comments.json
  def create
    @lecture_comment = LectureComment.new(lecture_comment_params)

    respond_to do |format|
      if @lecture_comment.save
        format.html { redirect_to @lecture_comment, notice: 'Lecture comment was successfully created.' }
        format.json { render :show, status: :created, location: @lecture_comment }
      else
        format.html { render :new }
        format.json { render json: @lecture_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecture_comments/1
  # PATCH/PUT /lecture_comments/1.json
  def update
    respond_to do |format|
      if @lecture_comment.update(lecture_comment_params)
        format.html { redirect_to @lecture_comment, notice: 'Lecture comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecture_comment }
      else
        format.html { render :edit }
        format.json { render json: @lecture_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecture_comments/1
  # DELETE /lecture_comments/1.json
  def destroy
    @lecture_comment.destroy
    respond_to do |format|
      format.html { redirect_to lecture_comments_url, notice: 'Lecture comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture_comment
      @lecture_comment = LectureComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecture_comment_params
      params.require(:lecture_comment).permit(:body, :lecture_id, :user_id)
    end
end
