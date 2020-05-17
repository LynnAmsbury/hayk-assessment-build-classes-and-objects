# frozen_string_literal: true

class Building
  attr_accessor :name, :number_of_tenants
  attr_reader :address

  @@all = []

  def initialize(name, address, number_of_floors = 0, number_of_tenants = 0)
    @name = name
    @address = address
    @number_of_floors = number_of_floors
    @number_of_tenants = number_of_tenants

    @@all << self
  end

  def self.all
    @@all
  end

  def self.tenant_average
    total_tenants = @@all.reduce(0) do |tenant_count, building|
      tenant_count += building.number_of_tenants
    end
    total_tenants / @@all.count
  end

  def self.placards
    @@all.map(&:placard)
    # @@all.map do |building|
    #   building.placard # building is an INSTANCE, so we can call instance methods on it
    # end
  end

  def placard
    "#{@name}: #{@address}"
  end

  def average_tenants_per_floor
    @number_of_tenants / @number_of_floors.to_f
  end

end
