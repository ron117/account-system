require 'test_helper'

class PartnerTranscriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partner_transcript = partner_transcripts(:one)
  end

  test "should get index" do
    get partner_transcripts_url
    assert_response :success
  end

  test "should get new" do
    get new_partner_transcript_url
    assert_response :success
  end

  test "should create partner_transcript" do
    assert_difference('PartnerTranscript.count') do
      post partner_transcripts_url, params: { partner_transcript: { credit: @partner_transcript.credit, debit: @partner_transcript.debit, description: @partner_transcript.description, name: @partner_transcript.name, transaction_type: @partner_transcript.transaction_type } }
    end

    assert_redirected_to partner_transcript_url(PartnerTranscript.last)
  end

  test "should show partner_transcript" do
    get partner_transcript_url(@partner_transcript)
    assert_response :success
  end

  test "should get edit" do
    get edit_partner_transcript_url(@partner_transcript)
    assert_response :success
  end

  test "should update partner_transcript" do
    patch partner_transcript_url(@partner_transcript), params: { partner_transcript: { credit: @partner_transcript.credit, debit: @partner_transcript.debit, description: @partner_transcript.description, name: @partner_transcript.name, transaction_type: @partner_transcript.transaction_type } }
    assert_redirected_to partner_transcript_url(@partner_transcript)
  end

  test "should destroy partner_transcript" do
    assert_difference('PartnerTranscript.count', -1) do
      delete partner_transcript_url(@partner_transcript)
    end

    assert_redirected_to partner_transcripts_url
  end
end
