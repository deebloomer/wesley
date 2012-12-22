# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
Product.create(title: 'CoffeeScriptGOOD MORNING PAUL 13.12.12',
               description:
                   %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
               image_url:   'cs.jpg',
               price: 36.00)
# . . .
Product.create(title: 'Programming Ruby 1.9',
               description:
                   %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
               image_url: 'ruby.jpg',
               price: 49.95)
# . . .

Product.create(title: 'Rails Test Prescriptions',
               description:
                   %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
               image_url: 'rtp.jpg',
               price: 34.95)

Route.destroy_all
Route.create({outbound_code: "DubWex", inbound_code: "WexDub", return_route: true, start: "Dublin Airport", finish: "Wexford", price: 15})
Route.create({outbound_code: "DubCork", inbound_code: "CorkDub", return_route: true, start: "Dublin Airport", finish: "Cork", price: 15})
Route.create({outbound_code: "DubLim", inbound_code: "LimDub", return_route: true, start: "Dublin Airport", finish: "Shannon Airport", price: 15})
Route.create({outbound_code: "DubGal", inbound_code: "GalDub", return_route: true, start: "Dublin Airport", finish: "Galway", price: 15})
Route.create({outbound_code: "DubDgl", inbound_code: "DglDub", return_route: true, start: "Georges Quay", finish: "Annagry", price: 15})
Route.create({outbound_code: "DubDun", inbound_code: "DunDub", return_route: true, start: "Amien Street", finish: "Dundalk", price: 15})

RouteDetail.destroy_all
RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 1, stop_name: "Dublin Airport", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 2, stop_name: "Georges Quay", minutes_from_start: 15, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 3, stop_name: "Kilmacanogue", minutes_from_start: 30, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 4, stop_name: "Arklow", minutes_from_start: 45, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 5, stop_name: "Gorey", minutes_from_start: 60, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 6, stop_name: "Ferns", minutes_from_start: 75, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 7, stop_name: "Enniscorthy", minutes_from_start: 90, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 8, stop_name: "Oilgate", minutes_from_start: 105, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubWex").id, stop_id: 9, stop_name: "Wexford", minutes_from_start: 120, zone_no: 3})

###ADD TO SEED ### #cork
RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 1, stop_name: "Dublin Airport", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 2, stop_name: "Georges Quay", minutes_from_start: 20, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 3, stop_name: "Kildare Village", minutes_from_start: 40, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 4, stop_name: "Portlaoise", minutes_from_start: 60, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 5, stop_name: "Cashel", minutes_from_start: 80, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 6, stop_name: "Cahir", minutes_from_start: 100, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 7, stop_name: "Mitchelstown", minutes_from_start: 120, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 8, stop_name: "Fermoy", minutes_from_start: 140, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubCork").id, stop_id: 9, stop_name: "Cork", minutes_from_start: 160, zone_no: 3})

#limerick

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 1, stop_name: "Dublin Airport", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 2, stop_name: "Georges Quay", minutes_from_start: 15, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 3, stop_name: "Kildare Village", minutes_from_start: 30, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 4, stop_name: "Portlaoise", minutes_from_start: 45, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 5, stop_name: "Roscrea", minutes_from_start: 60, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 6, stop_name: "Nenagh", minutes_from_start: 75, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 7, stop_name: "Birdhill", minutes_from_start: 90, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 8, stop_name: "Limerick", minutes_from_start: 105, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubLim").id, stop_id: 9, stop_name: "Shannon Airport", minutes_from_start: 120, zone_no: 3})

#galway
RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 1, stop_name: "Dublin Airport", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 2, stop_name: "Georges Quay", minutes_from_start: 20, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 3, stop_name: "West Dublin", minutes_from_start: 40, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 4, stop_name: "Kinnegad", minutes_from_start: 60, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 5, stop_name: "Kilbeggan", minutes_from_start: 80, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 6, stop_name: "Athlone", minutes_from_start: 100, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 7, stop_name: "Ballinasloe", minutes_from_start: 120, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 8, stop_name: "Athenry", minutes_from_start: 140, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubGal").id, stop_id: 9, stop_name: "Galway", minutes_from_start: 160, zone_no: 3})


#donegal

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 1, stop_name: "Georges Quay", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 2, stop_name: "Dublin Airport", minutes_from_start: 15, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 3, stop_name: "Ardee", minutes_from_start: 75, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 4, stop_name: "Monaghan", minutes_from_start: 125, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 5, stop_name: "Lifford", minutes_from_start: 205, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 6, stop_name: "Letterkenny", minutes_from_start: 225, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 7, stop_name: "Creeslough", minutes_from_start: 240, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 8, stop_name: "Bunbeg", minutes_from_start: 255, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDgl").id, stop_id: 9, stop_name: "Anngry", minutes_from_start: 270, zone_no: 3})

#dundalk

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 1, stop_name: "Amiens Street", minutes_from_start: 0, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 2, stop_name: "IFSC Dublin 1", minutes_from_start: 10, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 3, stop_name: "Jurys Inn Dubin 1", minutes_from_start: 15, zone_no: 1})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 4, stop_name: "O2 Northwall Quay", minutes_from_start: 20, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 5, stop_name: "O2 Eastwall Quay", minutes_from_start: 25, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 6, stop_name: "Dublin Airport", minutes_from_start: 40, zone_no: 2})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 7, stop_name: "Drogheda", minutes_from_start: 60, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 8, stop_name: "Monasterboice", minutes_from_start: 70, zone_no: 3})

RouteDetail.create({route_id: Route.find_by_outbound_code("DubDun").id, stop_id: 9, stop_name: "Dundalk", minutes_from_start: 80, zone_no: 3})


RouteSchedule.destroy_all
RouteSchedule.create({departure_time: "06:00",  stop_id: 1, outbound: false, inbound: true, capacity: 55 })
# This is the Monday 06:00 services from wex to all stops .
RouteSchedule.create({departure_time: "07:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "08:00",  stop_id: 1, outbound: false, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "09:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "10:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "11:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "13:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "15:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55})

RouteSchedule.create({departure_time: "16:00",  stop_id: 1, outbound: true, inbound: false, capacity: 55})

RouteSchedule.create({departure_time: "17:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55 })

RouteSchedule.create({departure_time: "18:00",  stop_id: 1, outbound: true, inbound: false, capacity: 55})

RouteSchedule.create({departure_time: "19:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55 })

RouteSchedule.create({departure_time: "21:00",  stop_id: 1, outbound: true, inbound: true, capacity: 55 })

TicketPrice.destroy_all
TicketPrice.create({no_of_zones: 1, price: 6})

TicketPrice.create({no_of_zones: 2, price: 12})

TicketPrice.create({no_of_zones: 3, price: 15})

puts "everything grand"