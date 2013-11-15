require 'test_helper'

class VaccinationsControllerTest < ActionController::TestCase
  setup do
    @vaccination = vaccinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaccinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaccination" do
    assert_difference('Vaccination.count') do
      post :create, vaccination: { check: @vaccination.check, cost: @vaccination.cost, date_vacc: @vaccination.date_vacc, id: @vaccination.id, id_animal: @vaccination.id_animal, id_type: @vaccination.id_type, notes: @vaccination.notes }
    end

    assert_redirected_to vaccination_path(assigns(:vaccination))
  end

  test "should show vaccination" do
    get :show, id: @vaccination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaccination
    assert_response :success
  end

  test "should update vaccination" do
    put :update, id: @vaccination, vaccination: { check: @vaccination.check, cost: @vaccination.cost, date_vacc: @vaccination.date_vacc, id: @vaccination.id, id_animal: @vaccination.id_animal, id_type: @vaccination.id_type, notes: @vaccination.notes }
    assert_redirected_to vaccination_path(assigns(:vaccination))
  end

  test "should destroy vaccination" do
    assert_difference('Vaccination.count', -1) do
      delete :destroy, id: @vaccination
    end

    assert_redirected_to vaccinations_path
  end
end
