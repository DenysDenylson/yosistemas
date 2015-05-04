class WelcomeController < ApplicationController
  skip_before_filter :require_log_in
  before_filter :grupos
  def index
  end

  def no_existe
  end

  def grupos
    @grupo = Grupo.buscar(params[:id])
  end
end
