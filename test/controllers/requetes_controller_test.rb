require 'test_helper'

class RequetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requete = requetes(:one)
  end

  test "should get index" do
    get requetes_url
    assert_response :success
  end

  test "should get new" do
    get new_requete_url
    assert_response :success
  end

  test "should create requete" do
    assert_difference('Requete.count') do
      post requetes_url, params: { requete: { nom: @requete.nom } }
    end

    assert_redirected_to requete_url(Requete.last)
  end

  test "should show requete" do
    get requete_url(@requete)
    assert_response :success
  end

  test "should get edit" do
    get edit_requete_url(@requete)
    assert_response :success
  end

  test "should update requete" do
    patch requete_url(@requete), params: { requete: { nom: @requete.nom } }
    assert_redirected_to requete_url(@requete)
  end

  test "should destroy requete" do
    assert_difference('Requete.count', -1) do
      delete requete_url(@requete)
    end

    assert_redirected_to requetes_url
  end
end
