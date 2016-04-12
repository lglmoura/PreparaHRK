class Categoria < ActiveRecord::Base
	has_many :filhos, class_name: "Categoria", foreign_key: "pai_id"
	belongs_to :pai, class_name: "Categoria"
end
