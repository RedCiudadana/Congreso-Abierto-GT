class Diputado < ActiveRecord::Base
  has_many :asig_comissions
  has_many :comissions, :through => :asig_comissions
  
  has_many :asig_bill_diputados
  has_many :bill, :through => :asig_bill_diputados
  
  has_many :voto_diputados
  has_many :bill, :through => :voto_diputados
  
  attr_accessible :photo
  
  FOTOS = File.join Rails.root, 'public', 'photo_store'
  after_save :guardar_foto
  
  def photo=(file_data)
    unless file_data.blank?
      @file_data = file_data
      self.url_foto = file_data.original_filename.split('.').last.downcase
    end
  end
  
  def photo_filename
    File.join FOTOS, "#{id}.#{url_foto}"
  end
  
  def photo_path
    "/photo_store/#{id}.#{url_foto}"
  end
  
  def has_photo?
    File.exists? photo_filename
  end
  private 
  
  def guardar_foto
    if @file_data 
      FileUtils.mkdir_p FOTOS
      File.open(photo_filename, 'wb') do |f|
        f.write(@file_data.read)
      end
      @file_data = nil
    end
  end
  
end
