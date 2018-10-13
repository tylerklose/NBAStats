require './lib/roster'
require './lib/team_info'

module NBAStats
  # This module allows you to easily access team info by using team name
  # NBAStats::Team.knicks
  module Team
    def self.bucks
      Team.new(1_610_612_749)
    end

    def self.bulls
      Team.new(1_610_612_741)
    end

    def self.cavaliers
      Team.new(1_610_612_739)
    end

    def self.celtics
      Team.new(1_610_612_738)
    end

    def self.clippers
      Team.new(1_610_612_746)
    end

    def self.grizzlies
      Team.new(1_610_612_763)
    end

    def self.hawks
      Team.new(1_610_612_737)
    end

    def self.heat
      Team.new(1_610_612_748)
    end

    def self.hornets
      Team.new(1_610_612_766)
    end

    def self.jazz
      Team.new(1_610_612_762)
    end

    def self.kings
      Team.new(1_610_612_758)
    end

    def self.knicks
      Team.new(1_610_612_752)
    end

    def self.lakers
      Team.new(1_610_612_747)
    end

    def self.magic
      Team.new(1_610_612_753)
    end

    def self.mavericks
      Team.new(1_610_612_742)
    end

    def self.nets
      Team.new(1_610_612_751)
    end

    def self.nuggets
      Team.new(1_610_612_743)
    end

    def self.pacers
      Team.new(1_610_612_754)
    end

    def self.pelicans
      Team.new(1_610_612_740)
    end

    def self.pistons
      Team.new(1_610_612_765)
    end

    def self.raptors
      Team.new(1_610_612_761)
    end

    def self.rockets
      Team.new(1_610_612_745)
    end

    def self.sixers
      Team.new(1_610_612_755)
    end

    def self.spurs
      Team.new(1_610_612_759)
    end

    def self.suns
      Team.new(1_610_612_756)
    end

    def self.thunder
      Team.new(1_610_612_760)
    end

    def self.timberwolves
      Team.new(1_610_612_750)
    end

    def self.trailblazers
      Team.new(1_610_612_757)
    end

    def self.warriors
      Team.new(1_610_612_744)
    end

    def self.wizards
      Team.new(1_610_612_764)
    end

    # A class that abstracts away the details around TeamInfo and Roster
    class Team
      def initialize(team_id)
        @team_id = team_id
      end

      def info
        TeamInfo.new(@team_id)
      end

      def roster
        Roster.new(@team_id)
      end
    end
  end
end
