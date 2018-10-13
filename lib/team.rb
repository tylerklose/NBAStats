require './lib/roster'
require './lib/team_info'

module NBAStats
  module Team
    def self.bucks
      Team.new(1610612749)
    end

    def self.bulls
      Team.new(1610612741)
    end

    def self.cavaliers
      Team.new(1610612739)
    end

    def self.celtics
      Team.new(1610612738)
    end

    def self.clippers
      Team.new(1610612746)
    end

    def self.grizzlies
      Team.new(1610612763)
    end

    def self.hawks
      Team.new(1610612737)
    end

    def self.heat
      Team.new(1610612748)
    end

    def self.hornets
      Team.new(1610612766)
    end

    def self.jazz
      Team.new(1610612762)
    end

    def self.kings
      Team.new(1610612758)
    end

    def self.knicks
      Team.new(1610612752)
    end

    def self.lakers
      Team.new(1610612747)
    end

    def self.magic
      Team.new(1610612753)
    end

    def self.mavericks
      Team.new(1610612742)
    end

    def self.nets
      Team.new(1610612751)
    end

    def self.nuggets
      Team.new(1610612743)
    end

    def self.pacers
      Team.new(1610612754)
    end

    def self.pelicans
      Team.new(1610612740)
    end

    def self.pistons
      Team.new(1610612765)
    end

    def self.raptors
      Team.new(1610612761)
    end

    def self.rockets
      Team.new(1610612745)
    end

    def self.sixers
      Team.new(1610612755)
    end

    def self.spurs
      Team.new(1610612759)
    end

    def self.suns
      Team.new(1610612756)
    end

    def self.thunder
      Team.new(1610612760)
    end

    def self.timberwolves
      Team.new(1610612750)
    end

    def self.trailblazers
      Team.new(1610612757)
    end

    def self.warriors
      Team.new(1610612744)
    end

    def self.wizards
      Team.new(1610612764)
    end

    class Team
      attr_reader :roster, :info

      def initialize(team_id)
        @roster = Roster.new(team_id)
        @info = TeamInfo.new(team_id)
      end
    end
  end
end
