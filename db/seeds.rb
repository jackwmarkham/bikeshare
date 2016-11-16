ActsAsVotable::Vote.create!([
  {votable_id: 2, votable_type: "Booking", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 5, review: nil},
  {votable_id: 3, votable_type: "Booking", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 4, review: nil}
])
User.create!([
  {email: "jack@jack.com", encrypted_password: "$2a$11$SRUc39.edRLMe2DfVLbJGuIY5wji0b.wIf9fPMRv6ejqqrAtExz2q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-11-14 05:00:55", last_sign_in_at: "2016-11-14 05:00:55", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "notjack@notjack.com", encrypted_password: "$2a$11$RoTK4O49I0N3fSj.EitcLeTHr7/069hHubbgH8TI.il4AnfMKF9pO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-11-14 05:12:54", last_sign_in_at: "2016-11-14 05:12:54", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Bike.create!([
  {profile_id: 1, description: "This is a bike that I am listing on a website.", gears: nil, pictures: ["s-l500.jpg", "s-l1600.jpg", "s-l16020.jpg", "s-l50220.jpg"], location: nil, title: "Black Fixie (Jack)", price_hr: nil, price_day: 15.0, price_week: nil, delivery: nil, listed: nil, street: "37 Elizabeth Ave", suburb: "Dulwich Hill", state: "NSW", postcode: 2230, country: "Australia", latitude: -33.9032676, longitude: 151.1329173},
  {profile_id: 1, description: "A bike that I stole from a child.", gears: nil, pictures: ["s-l1600.jpg", "s-l16200.jpg", "s-l160230.jpg"], location: nil, title: "Kid's Bike (Jack)", price_hr: nil, price_day: 10.0, price_week: nil, delivery: nil, listed: nil, street: "300 King St", suburb: "Newtown", state: "NSW", postcode: 2042, country: "Australia", latitude: -33.8966279, longitude: 151.1797223},
  {profile_id: 2, description: "This is a super comfy bike and this text is inconsequential.", gears: nil, pictures: ["2123.jpg", "s-l16asd00.jpg", "s-l1600.jpg"], location: nil, title: "Cruiser Bike (NotJack)", price_hr: nil, price_day: 30.0, price_week: nil, delivery: nil, listed: nil, street: "74 Roberts St", suburb: "Camperdown", state: "NSW", postcode: 2050, country: "Australia", latitude: -33.893047, longitude: 151.1789009},
  {profile_id: 2, description: "This is the kind of bike that you resent when sitting in traffic.", gears: nil, pictures: ["s-l1600.jpg", "s-l16200.jpg", "s-l162300.jpg"], location: nil, title: "Racing Bike (NotJack)", price_hr: nil, price_day: 40.0, price_week: nil, delivery: nil, listed: nil, street: "7 Kelly St", suburb: "Ultimo", state: "NSW", postcode: 2007, country: "Australia", latitude: -33.8817297, longitude: 151.1955653}
])
Booking.create!([
  {user_id: 2, bike_id: 2, begin: "2016-11-07 00:00:00", end: "2016-11-13 00:00:00", message: "I want to rent this bike, but you will not confirm the booking.", confirmation: false, price: 60.0},
  {user_id: 2, bike_id: 1, begin: "2016-11-10 00:00:00", end: "2016-11-13 00:00:00", message: "I want to rent this bike and you will confirm it.", confirmation: true, price: 45.0},
  {user_id: 1, bike_id: 3, begin: "2016-11-06 00:00:00", end: "2016-11-13 00:00:00", message: "Another booking for a bike.", confirmation: true, price: 210.0}
])
Conversation.create!([
  {sender_id: 1, recipient_id: 1},
  {sender_id: 2, recipient_id: 1}
])
Message.create!([
  {body: "We are sending messsages", conversation_id: 1, user_id: 1, read: false},
  {body: "Yes. Yes we are.", conversation_id: 2, user_id: 2, read: false},
  {body: "We sure are", conversation_id: 1, user_id: 1, read: false},
  {body: "asd", conversation_id: 2, user_id: 1, read: false}
])
Profile.create!([
  {user_id: 1, first_name: "Jack", last_name: "Markham", bio: "For some reason I want to both list and rent bikes, rather than just use the bikes I clearly already own.", avatar: "image/upload/v1479099711/sbcdhbnyhz3uqb4euqm1.png"},
  {user_id: 2, first_name: "NotJack", last_name: "NotMarkham", bio: "I am not Jack Markham", avatar: "image/upload/v1479100432/txn4ueanktacpgqums8w.png"}
])
Vote.create!([
  {votable_id: 2, votable_type: "Booking", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 5, review: nil},
  {votable_id: 3, votable_type: "Booking", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 4, review: nil}
])
