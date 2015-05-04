require 'spec_helper'

describe UsuariosController do
  before(:each) do
      controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller
  end

  #ATENCION: El uso de factory girl ayuda a hacer los specs m'as simples. Sin embargo, tambi'en m'as lentos ya 
  # que acceden a la BD en lugar de mocks o stubs
  describe 'GET #Show' do
    it "obtiene todos los eventos de grupo publico" do  
      grupo = FactoryGirl.create(:grupo_publico)
      user = FactoryGirl.create(:usuario)
      user.save
      get :show, :id => user.id
      expect(response).to render_template :show
    end
  end

end