class PartnerTranscriptsController < ApplicationController
  before_action :set_partner_transcript, only: [:show, :edit, :update, :destroy]

  # GET /partner_transcripts
  # GET /partner_transcripts.json
  def index
    @partner_transcripts = PartnerTranscript.all
  end

  # GET /partner_transcripts/1
  # GET /partner_transcripts/1.json
  def show
  end

  # GET /partner_transcripts/new
  def new
    @partner_transcript = PartnerTranscript.new
  end

  # GET /partner_transcripts/1/edit
  def edit
  end

  # POST /partner_transcripts
  # POST /partner_transcripts.json
  def create
    @partner_transcript = PartnerTranscript.new(partner_transcript_params)

    respond_to do |format|
      if @partner_transcript.save
        format.html { redirect_to @partner_transcript, notice: 'Partner transcript was successfully created.' }
        format.json { render :show, status: :created, location: @partner_transcript }
      else
        format.html { render :new }
        format.json { render json: @partner_transcript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_transcripts/1
  # PATCH/PUT /partner_transcripts/1.json
  def update
    respond_to do |format|
      if @partner_transcript.update(partner_transcript_params)
        format.html { redirect_to @partner_transcript, notice: 'Partner transcript was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_transcript }
      else
        format.html { render :edit }
        format.json { render json: @partner_transcript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_transcripts/1
  # DELETE /partner_transcripts/1.json
  def destroy
    @partner_transcript.destroy
    respond_to do |format|
      format.html { redirect_to partner_transcripts_url, notice: 'Partner transcript was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_transcript
      @partner_transcript = PartnerTranscript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_transcript_params
      params.require(:partner_transcript).permit(:name, :transaction_type, :description, :credit, :debit, :partner_id)
    end
end
