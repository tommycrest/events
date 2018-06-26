require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { datefrom: @event.datefrom, dateto: @event.dateto, description_en: @event.description_en, description_ru: @event.description_ru, description_ukr: @event.description_ukr, eventname_en: @event.eventname_en, eventname_ru: @event.eventname_ru, eventname_ua: @event.eventname_ua, hourfrom: @event.hourfrom, hourto: @event.hourto, image: @event.image, location: @event.location } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { datefrom: @event.datefrom, dateto: @event.dateto, description_en: @event.description_en, description_ru: @event.description_ru, description_ukr: @event.description_ukr, eventname_en: @event.eventname_en, eventname_ru: @event.eventname_ru, eventname_ua: @event.eventname_ua, hourfrom: @event.hourfrom, hourto: @event.hourto, image: @event.image, location: @event.location } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end
