require 'spec_helper'

describe TareasController do
  before(:each) do
    controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller
  end

  # ATENCION: El uso de factory girl ayuda a hacer los specs m'as simples. Sin embargo, tambi'en m'as lentos ya 
  # que acceden a la BD en lugar de mocks o stubs
  describe 'GET #index' do

    # it "obtiene todas las tareas de grupo un grupo en un arreglo" do  
    #   usuario = FactoryGirl.create(:usuario)
    #   ingresar_sistema(usuario)
    #   publico = FactoryGirl.create(:grupo)
    #   grupo = FactoryGirl.create(:grupo, nombre: 'Prueba', usuario_id: usuario.id)
    
    #   tarea1 = FactoryGirl.create(:tarea, titulo: 'Tarea 1', grupo_id: grupo.id, fecha_entrega: "2013-10-13", hora_entrega: "00:00 AM")
    #   tarea2 = FactoryGirl.create(:tarea, titulo: 'Tarea 2', grupo_id: grupo.id, fecha_entrega: "2013-10-13", hora_entrega: "00:00 AM")
       
    #   get :index, {:grupo=>"2"}
        
    #   expect(assigns(:tareas)).to match_array([tarea1, tarea2])
    # end

    it "muestra la vista index para el grupo creado, este grupo es diferente de un grupo publico" do

      grupo_publico = FactoryGirl.create(:grupo_publico)
      grupo = FactoryGirl.create(:grupo)
      grupo_publico.save
      grupo.save
      get :index, :grupo => grupo.id
      expect(response).to render_template :index

    end

    # it "recibe un grupo publico para luego mostrar la vista index de temas" do

    #   grupo = FactoryGirl.create(:grupo_publico)
    #   tema1 = FactoryGirl.create(:tema, titulo: 'Tema 1')
    #   tema2 = FactoryGirl.create(:tema, titulo: 'Tema 2')

    #   grupo.temas << tema1
    #   tema1.grupos_pertenece << grupo
    #   grupo.temas << tema2
    #   tema2.grupos_pertenece << grupo
    #   grupo.save

    #   get :index, :grupo => '1'
      
    #   expect(assigns(:temas)).to start_with(tema2)
    #   expect(assigns(:temas)).to end_with(tema1)
    #   expect(assigns(:grupo)).to eq(grupo)

    # end
  end

  # describe "GET 'new'" do
  #   it "returns http success" do

  #   end
  # end

  # describe 'GET #eliminar' do
  # 	it "elimina tarea" do
  #     grupo = FactoryGirl.create(:grupo, nombre: 'Prueba')
  #         tarea = FactoryGirl.create(:tarea, titulo: 'Tarea 1', grupo_id: "1", fecha_entrega: "2013-10-13", hora_entrega: "00:00 AM")
        
  # 		expect{ 
  # 			tarea.destroy
  # 		}.to change(Tarea,:count).by(-1)
  # 	end
  # end

end
