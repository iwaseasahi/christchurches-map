***REMOVED*** encoding: utf-8

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
end
