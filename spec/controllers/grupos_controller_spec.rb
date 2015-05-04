require 'spec_helper'

describe GruposController do
  before(:each) do
    controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller

  end

  describe 'GET #index' do

    it "muestra la vista index" do
      grupo = FactoryGirl.create(:grupo_publico)
      get :index
      
      expect(response).to render_template :index
    end

  end

  describe 'GET #new' do
    
    it "se crea un nuevo grupo tomando en cuenta que el usuario es administrador" do
      grupo_publico = FactoryGirl.create(:grupo_publico)
      get :new
      
      Grupo.new.should be_an_instance_of(Grupo)
    end

  end

  # describe 'GET #buscar' do
  #   it "obtiene grupo que coincide con el nombre" do  
  #     grupo1 = FactoryGirl.create(:grupo, nombre: 'grupo 1')
  #     grupo2 = FactoryGirl.create(:grupo, nombre: 'grupo 2')
      
  #     get :buscar, {:grupo=>"1", :nombre=>"1"}
      
  #     expect(assigns(:grupos)).to match_array([grupo1])
  #   end

  #   it "renderiza a la vista index" do
  #     get :buscar, {:grupo=>"1"}
      
  #     expect(response).to render_template :index
  #   end

  # end

end
