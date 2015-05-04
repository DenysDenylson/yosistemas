require 'spec_helper'

describe TemasYTareasController do
  before(:each) do
    controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller

  end

  #ATENCION: El uso de factory girl ayuda a hacer los specs m'as simples. Sin embargo, tambi'en m'as lentos ya 
  # que acceden a la BD en lugar de mocks o stubs
  # describe 'GET # ordenar' do
  #   it "ordena temas y tareas de un grupo privado" do
  #     grupo_publico = FactoryGirl.create(:grupo_publico)
  #     grupo = FactoryGirl.create(:grupo, nombre: 'grupo privado')
    
  #     tarea1 = FactoryGirl.create(:tarea, titulo: 'tercera tarea 1')
  #     tarea2 = FactoryGirl.create(:tarea, titulo: 'segunda tarea 2')
  #     tarea3 = FactoryGirl.create(:tarea, titulo: 'primera tarea 3')
  #     tema1 = FactoryGirl.create(:tema, titulo: 'tercer Tema 1')
  #     tema2 = FactoryGirl.create(:tema, titulo: 'segundo Tema 2')
  #     tema3 = FactoryGirl.create(:tema, titulo: 'primer Tema 3')

  #     tarea1.admitido = true
  #     grupo.tareas << tarea1
  #     tarea2.admitido = true
  #     grupo.tareas << tarea2
  #     tarea3.admitido = true
  #     grupo.tareas << tarea3
  #     #tarea1.save

  #     grupo.temas << tema1
  #     tema1.grupos_pertenece << grupo
  #     grupo.temas << tema2
  #     tema1.grupos_pertenece << grupo
  #     grupo.temas << tema3
  #     tema1.grupos_pertenece << grupo

  #     grupo.save
       
  #     get :ordenar, {:id=>grupo.id, :opcion=>'alfabeticamente'}
        
  #     expect(assigns(:temas)).to start_with(tema3)
  #     expect(assigns(:temas)).to end_with(tema1)
  #     expect(assigns(:tareas)).to start_with(tarea3)
  #     expect(assigns(:tareas)).to end_with(tarea1)
  #     expect(assigns(:grupo)).to eq(grupo)
  #   end
  # end
end