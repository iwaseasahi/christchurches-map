# encoding: utf-8

namespace :churches_update do
  desc 'グループIDの入力'
  task group_id: :environment do
    churches = Church.all
    churches.each do |church|
      if Group.exists?(name: church.group)
        group = Group.find_by(name: church.group)
        church.update(group_id: group.id)
      end
    end
  end

  desc 'top_imageのランダム格納'
  task top_image: :environment do
    image_name = %w(church_top_1.jpg church_top_2.jpg church_top_3.jpg)
    churches = Church.all
    churches.each do |church|
      if church.top_image.blank?
        default_name = image_name[rand(3)]
        church.update(top_image: default_name)
      end
    end
  end
end
