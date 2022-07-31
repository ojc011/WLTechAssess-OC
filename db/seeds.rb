# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

Contact.create([
  {
  salutation: 'Mr.', 
  first_name: 'John', 
  middle_name: 'Jacob', 
  last_name: 'Jingleheimer Schmidt', 
  ssn: '453-231-5478',
  dob: "1995-11-03",
  comment: 'I\'m a singer for a band',
  addresses_attributes: [
    {
      street: '444 Test Drive.',
      town: 'Test Town',
      state: 'TX',
      zip: '54423',
      country: 'US'
    },
    {
      street: '12 Lamar Lane',
      town: 'Miami',
      state: 'OH',
      zip: '89457',
      country: 'US'
    }
  ],
  emails_attributes: [
    {
      email_address: 'Test@test.com',
      comment: 'I\'m an example comment on an email'
    },
    {
      email_address: 'fake_email@example.net',
      comment: 'Here comes another example comment!'
    }
  ],
  phone_numbers_attributes: [
    {
      kind: 'Home',
      number: '502-492-1234',
      comment: 'I\'m just commenting on a phone number'
    },
    {
      kind: 'Office',
      number: '405-233-9234',
      comment: 'Don\'t call here after 5pm.'
    }
  ]
  },
  {
    salutation: 'Ms.', 
    first_name: 'Tiffany', 
    middle_name: 'P', 
    last_name: 'Clooney', 
    ssn: '987-65-4321', 
    dob: "1997-08-09", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Hollywood Blvd',
        town: 'Hollywood',
        zip: '90210',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example1@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email1@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '503-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '406-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Hugh', 
    middle_name: 'H', 
    last_name: 'Jackman', 
    dob: "1956-03-09", 
    comment: 'metal dude',
    addresses_attributes: [
      {
        street: '999 Research Blvd',
        town: 'Austin',
        state: 'TX',
        zip: '78777',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example2@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email2@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '507-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '427-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Ms.', 
    first_name: 'Amy', 
    middle_name: 'Schumer', 
    last_name: 'Rogers',  
    dob: "1923-06-24", 
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '100 Test Street',
        town: 'Beachaven',
        state: 'NJ',
        zip: '12345',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example3@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email3@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '549-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '461-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Grant',  
    last_name: 'Williams', 
    ssn: '432-56-7890', 
    dob: "1966-03-23", 
    addresses_attributes: [
      {
        street: '55 Deloitte Lane',
        town: 'Newark',
        zip: '54378',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example4@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email4@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '593-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '411-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mrs.', 
    first_name: 'Whitney', 
    last_name: 'Houston', 
    comment: 'apparently has a really good voice',
    addresses_attributes: [
      {
        street: '44 Singers Lane',
        town: 'Beverly Hills',
        state: 'CA',
        zip: '9010',
        country: 'US'
      },
      {
        street: '44 Simulation Street',
        town: 'San Antonio',
        state: 'TX',
        zip: '44444',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example5@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email5@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '599-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '499-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Michael', 
    middle_name: 'Jeffrey', 
    last_name: 'Jordan', 
    ssn: '456-76-4322', 
    dob: "1963-02-17", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Hall of Fame Drive',
        town: 'Chicago',
        state: 'IL',
        zip: '52348',
        country: 'US'
      },
      {
        street: '1234 Test Drive',
        town: 'Boston',
        state: 'MA',
        zip: '20333',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example6@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email6@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '588-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '488-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Geoffrey',  
    last_name: 'Baratheon', 
    dob: "1900-04-02", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 King\'s Lane',
        town: 'Westeros',
        state: 'OK',
        zip: '54568',
        country: 'US'
      },
      {
        street: '619 Elton Blvd.',
        town: 'Atlanta',
        state: 'GA',
        zip: '20452',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example7@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email7@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '577-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '477-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Incredible',  
    last_name: 'Man', 
    ssn: '000-65-2315', 
    dob: "1991-11-03", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Test Lane',
        town: 'Boise',
        state: 'ID',
        zip: '11224',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example8@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email8@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '566-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '466-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Roger', 
    middle_name: 'J', 
    last_name: 'Goodell', 
    ssn: '845-123-4567', 
    dob: "1956-03-07", 
    addresses_attributes: [
      {
        street: '123 Football St.',
        town: 'Meadowlands',
        state: 'NJ',
        zip: '12347',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example9@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email9@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-466-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-266-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Denzel', 
    last_name: 'Washington',  
    dob: "1956-11-11", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '44 Flight Drive',
        town: 'Cincinatti',
        state: 'OH',
        zip: '87690',
        country: 'US'
      },
      {
        street: '334 Trevor Lane',
        town: 'New York',
        state: 'NY',
        zip: '45321',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email11@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-455-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-255-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  }
])

p "Created #{Contact.count} entries."