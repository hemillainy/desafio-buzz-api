# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add 5 users
# 5.times do |i|
#     User.create(email: Faker::Internet.email, total_quota: 250)
# end

# add setting
# Setting.create(brands_limit: 0, brands_limited: false, collected_limit: 0, collected_limited: false, analytics_limit: 0, analytics_limited: false, crm_limit: 0, crm_limited: false, user_id: 1, analytics_pro: true, dashboards: true, historial_search: true)

# add 4 settings
5.times do |i|
    id = i + 1
    Setting.create(brands_limit: 0, brands_limited: false, collected_limit: 0, collected_limited: false, analytics_limit: 0, analytics_limited: false, crm_limit: 0, crm_limited: false, user_id: id, analytics_pro: true, dashboards: true, historial_search: true)
end

# # add 4 projects
# Project.create(name: "Asus", quota_used: 0, user_id: 1)
# Project.create(name: "Apple", quota_used: 0, user_id: 1)
# Project.create(name: "Samsung", quota_used: 0, user_id: 1)
# Project.create(name: "Lenovo", quota_used: 0, user_id: 1)