require 'test_helper'

class RiverHeightRecordsControllerTest < ActionController::TestCase
  setup do
    @river_height_record = river_height_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:river_height_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create river_height_record" do
    assert_difference('RiverHeightRecord.count') do
      post :create, river_height_record: { city_id: @river_height_record.city_id, description: @river_height_record.description, feet_above: @river_height_record.feet_above, prediction: @river_height_record.prediction, record_time: @river_height_record.record_time, river_id: @river_height_record.river_id }
    end

    assert_redirected_to river_height_record_path(assigns(:river_height_record))
  end

  test "should show river_height_record" do
    get :show, id: @river_height_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @river_height_record
    assert_response :success
  end

  test "should update river_height_record" do
    patch :update, id: @river_height_record, river_height_record: { city_id: @river_height_record.city_id, description: @river_height_record.description, feet_above: @river_height_record.feet_above, prediction: @river_height_record.prediction, record_time: @river_height_record.record_time, river_id: @river_height_record.river_id }
    assert_redirected_to river_height_record_path(assigns(:river_height_record))
  end

  test "should destroy river_height_record" do
    assert_difference('RiverHeightRecord.count', -1) do
      delete :destroy, id: @river_height_record
    end

    assert_redirected_to river_height_records_path
  end
end
