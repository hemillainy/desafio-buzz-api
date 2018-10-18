require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting = settings(:one)
  end

  test "should get index" do
    get settings_url, as: :json
    assert_response :success
  end

  test "should create setting" do
    assert_difference('Setting.count') do
      post settings_url, params: { setting: { analytics_limit: @setting.analytics_limit, analytics_limited: @setting.analytics_limited, analytics_pro: @setting.analytics_pro, brands_limit: @setting.brands_limit, brands_limited: @setting.brands_limited, collected_limit: @setting.collected_limit, collected_limited: @setting.collected_limited, crm_limit: @setting.crm_limit, crm_limited: @setting.crm_limited, dashboards: @setting.dashboards, historial_search: @setting.historial_search, user_id: @setting.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show setting" do
    get setting_url(@setting), as: :json
    assert_response :success
  end

  test "should update setting" do
    patch setting_url(@setting), params: { setting: { analytics_limit: @setting.analytics_limit, analytics_limited: @setting.analytics_limited, analytics_pro: @setting.analytics_pro, brands_limit: @setting.brands_limit, brands_limited: @setting.brands_limited, collected_limit: @setting.collected_limit, collected_limited: @setting.collected_limited, crm_limit: @setting.crm_limit, crm_limited: @setting.crm_limited, dashboards: @setting.dashboards, historial_search: @setting.historial_search, user_id: @setting.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy setting" do
    assert_difference('Setting.count', -1) do
      delete setting_url(@setting), as: :json
    end

    assert_response 204
  end
end
