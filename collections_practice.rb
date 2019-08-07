# your code goes here
require 'pry'
require 'pry-nav'

def begins_with_r(array)
    array.all? do |string|
        string.start_with? "r"
    end
end

def contain_a(array)
    array.find_all do |string|
        string.split("").any?{|letter| letter == "a"}
    end
end

def first_wa(array)
    array.find do |word|
        word.class == Symbol ? false : word.start_with?("wa")
    end
end

def remove_non_strings(array)
    array.find_all do |item|
        item.class == String
    end
end

def count_elements(array)
    counter = Hash.new(0)
    counter_array = []
    array.each do |item|
        counter[item] += 1
    end
    counter.each do |key, value|
        new_hash = {}
        new_hash[:name] = key[:name]
        new_hash[:count] = value
        counter_array << new_hash
    end
    counter_array
end

def merge_data(keys, data)
    merged_data = []
    keys.each do |key|
        first_name = key[:first_name]
        data[0].each do |name, object|
            merger = key.merge(object) if name == first_name 
            merged_data << merger
        end
    end
    # binding.pry
    merged_data.find_all{|data| data != nil}
end

def find_cool(cool)
    cool.find_all do |item|
        item[:temperature] == "cool"
    end
end

def organize_schools(schools)
    organized = {}
    schools.each do |school, location|
        organized_location = organized[location[:location]]
        city = location[:location]
        # binding.pry
        if organized_location == nil
            organized[city] = [ school ]
        else
            organized[city] << school
        end
    end
    organized
end