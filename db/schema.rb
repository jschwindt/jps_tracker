# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121123142907) do

  create_table "positions", :force => true do |t|
    t.string   "device_key"
    t.integer  "heading"
    t.decimal  "latitude",   :precision => 11, :scale => 6
    t.decimal  "longitude",  :precision => 11, :scale => 6
    t.decimal  "altitude",   :precision => 11, :scale => 6
    t.decimal  "speed",      :precision => 5,  :scale => 2
    t.datetime "datetime"
  end

  add_index "positions", ["datetime", "device_key"], :name => "index_positions_on_datetime_and_device_key"

  create_table "tweets", :force => true do |t|
    t.string   "tweet_id"
    t.string   "text"
    t.string   "tweet_url"
    t.string   "picture_url"
    t.decimal  "latitude",    :precision => 11, :scale => 6
    t.decimal  "longitude",   :precision => 11, :scale => 6
    t.datetime "datetime"
  end

  add_index "tweets", ["datetime"], :name => "index_tweets_on_datetime"
  add_index "tweets", ["tweet_id"], :name => "index_tweets_on_tweet_id"

end
