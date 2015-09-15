class HomeController < ApplicationController

  def index

    @data = {
      skills: skills,
      projects: projects,
      contact: Contact.new(iamabot: nil)
    }
  end

  private

  def skills
    {
        Ruby: ['fa-heart', ['Ruby on Rails', 'Sinatra', 'Rack']],
        CSS: ['fa-css3',['CSS(3)', 'SASS', 'Bootsrap Framework',
                  'Zurb Foundation', 'SMACSS',
                  'Responsiveness, degrade gracefully, progresive enhacement.'
                ]],
        JS: ['fa-code',['Backbone.js', 'jQuery', 'CoffeeScript']],
        DB: ['fa-database',['MySql', 'PostgreSql', 'MongoDB', 'sql scripting']],
        Other: ['fa-wrench',['Git', 'APIS and Monolith architectures', 'Agile methodologies',
              'Bash', 'SEO strategies', 'HTML preprocesors HAML, Slim', 'Spree']],
        DevOps: ['fa-rocket',['Heroku', 'AWS', 'Deployment automation', 'Provisioning (Chef, Ansible)',
               'Server Monitoring', 'Architecture orcherstration']]
    }
  end

  def projects
    {
      ModCloth: ["E-commerce Store","My first job while working with MagmaLabs (formely CrowdInt), I got
        involved in the company's most important project 'Modcloth'. Here I
        learned how to mess up with Ruby, manage a huge code base, and implement
        awesome client requirements."],
      MusicPage: ["Social Network", "I helped build and luanch this project, a
        music band’s social network for the US. Worked with a distributed team
        across the US and some part of Latin America"],
      CrowdStore: ["E-commerce platform", "We built a E-commerce engine to easily build new sites with it"],
      WedCoupon: ["Spree Store", "Worked with a new client in our Spree 0.X first implementation with an Agile approach"],
      GoPago: ["Multi-porpouse Point of Sale", "Worked 6 months in SF, maintaining
        a mobile app for ordering services - similar to Grubhub. We migrated
        a 2.3 Rails app to 3.2 with a huge code base within 6 weeks."],
      BillFloat: ["Financial Application", "I joined Billfloat to build their main site in a Rails
                  CMS, later moved to help with other projects with them."],
      Retrospectus: ["iOS App", "During a 2 month break between projects I
        worked to develop a native iOS app for retrospectus.com."],
      LittleBits: ["Electronics E-commerce Store", "Working with this new client
        to help them grow their e-commerce platform, focusing in the operation
        team requirements building and fixing new features in a Rails app.
        I served for surrogate technical leader by around 10 months for entire
         team conformed by people in New York, Vietnam and Mexico. This has being
         one of the most exciting experiences, because this project gave me the
         opportunity work in all aspects of the process from project management to DevOps."]
  }
  end

end
