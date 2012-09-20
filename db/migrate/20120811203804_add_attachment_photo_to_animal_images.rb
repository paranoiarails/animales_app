class AddAttachmentPhotoToAnimalImages < ActiveRecord::Migration
  def self.up
    change_table :animal_images do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :animal_images, :photo
  end
end
