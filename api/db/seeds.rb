# frozen_string_literal: true

# traits.
traits = [
  {
    description: 'west coast midwesterner'
  },
  {
    description: '90s kid'
  },
  {
    description: 'craft brew taster'
  },
  {
    description: 'passive audiophile'
  },
  {
    description: 'unwilling perfectionist'
  },
  {
    description: 'digital laborer'
  },
  {
    description: 'powered by electronic & hip hop'
  },
  {
    description: 'outgoing introvert'
  },
  {
    description: 'hockey player'
  },
  {
    description: 'apple > microsoft'
  },
  {
    description: 'vimmer'
  },
  {
    description: 'struggling blogger'
  },
  {
    description: 'learning addict'
  },
  {
    description: 'lucky husband'
  },
  {
    description: 'blue-collar programmer'
  },
  {
    description: 'aspiring minimalist'
  },
  {
    description: 'first born'
  },
  {
    description: 'mech keep enthusiast'
  }
]
traits.each do |trait|
  Trait.create_or_find_by!(description: trait[:description])
end

# projects.
projects = [
  {
    name: 'freerware/work',
    description: 'compact library for tracking and committing changes to your entities.'
  },
  {
    name: 'freerware/negotiator',
    description: 'compact library for handling HTTP content negotiation for RESTful APIs.'
  }
]
projects.each do |project|
  Project.create_or_find_by!(
    name: project[:name],
    description: project[:description]
  )
end

# experiences.
experiences = [
  {
    name: 'uber freight',
    description: '',
    roles: [
      {
        name: 'senior software engineer',
        start: DateTime.new(2019, 9, 1).utc,
        end: DateTime.new(2020, 6, 2).utc
      },
      {
        name: 'software engineer ii',
        start: DateTime.new(2017, 6, 19).utc,
        end: DateTime.new(2019, 9, 1).utc
      }
    ],
    accomplishments: [
      {
        name: 'W3C presentation',
        description: 'represented Uber Freight at a W3C conference in Palo Alto by leading a presentation
covering the domain models constructed as a result of our rearchitecture efforts.',
        achieved: DateTime.new(2019, 9, 13).utc
      }
    ],
    start: DateTime.new(2017, 6, 19).utc,
    end: DateTime.new(2020, 6, 2).utc
  },
  {
    name: 'c.h. robinson',
    description: '',
    roles: [
      {
        name: 'software engineer ii',
        start: DateTime.new(2016, 7, 1).utc,
        end: DateTime.new(2017, 5, 31).utc
      },
      {
        name: 'software engineer i',
        start: DateTime.new(2015, 1, 15).utc,
        end: DateTime.new(2016, 6, 1).utc
      }
    ],
    accomplishments: [],
    start: DateTime.new(2015, 1, 15).utc,
    end: DateTime.new(2017, 5, 31).utc
  }
]
experiences.each do |experience|
  roles = []
  experience[:roles] do |role|
    roles << Role.create_or_find_by!(
      name: role[:name], 
      start: role[:start],
      end: role[:end]
    )
  end
  Experience.create_or_find_by!(
    name: experience[:name],
    description: experience[:description],
    start: experience[:start],
    end: experience[:end],
    roles: roles
  )
end

# contact methods.
methods = [
  {
    type: ContactMethod::TYPES.fetch(:phone),
    name: 'mobile phone number',
    reachable_at: '1.614.657.3542'
  },
  {
    type: ContactMethod::TYPES.fetch(:email),
    name: 'personal email',
    reachable_at: 'freerjm@miamioh.edu'
  }
]
methods.each do |method|
  ContactMethod.create_or_find_by!(
    method_type: method[:type],
    name: method[:name],
    reachable_at: method[:reachable_at]
  )
end
