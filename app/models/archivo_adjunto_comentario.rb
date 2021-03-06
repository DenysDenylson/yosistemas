class ArchivoAdjuntoComentario < ActiveRecord::Base
	belongs_to :comment
	attr_accessor :archivo
	has_attached_file :archivo,
  					:storage => :dropbox,
  					:dropbox_credentials => "#{Rails.root}/config/dropbox_config.yml",
					:dropbox_options => {:path =>proc { |style| "adjuntos_comentarios/#{adjuntos_comentarios_id}/#{id}-#{archivo.original_filename}" } , :unique_filename => true}

end
