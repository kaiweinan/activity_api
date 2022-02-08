# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


   Childenroll.destroy_all
   Activity.destroy_all


girl = Childenroll.new(name: "lyvia")
boy = Childenroll.new(name: "leon")

Activity.create([
        {title: "Piano"},
        {title: "Violin"},
        {title: "Ukulele"},
        {title: "Tennis"},
        {title: "Jujutsu"},
        {title: "Iceskating"},
        {title: "Swimming"},
        {title: "Gymnastic"},
        {title: "Chess"},
        {title: "Dungeons & Dragons"},
        {title: "Young Architects"},
        {title: "Imagine Arts Studio"},
        {title: "GaGa"},
        {title: "Soccer"},
        {title: "Spanish"},
        {title: "Mandarin"},
        {title: "Musical Theater"},
        {title: "KiwiCo® Gizmos"},
        {title: "Mad Science"},
        {title: "Code Academy & Robotics"},
        {title: "Debate & Public Speaking"},
        {title: "Baseball w/ Sluggers"},
        {title: "Lego® Brain Teasers"},
        {title: "Newspaper Club"},
        {title: "Mixed Martial Arts"},
        {title: "Taekwondo"}
 
])
girl.activity = Activity.find_by(title: "Piano")
girl.save

boy.activity = Activity.find_by(title: "Piano")
boy.save