# Makes sure that SQLite will work with this program.
require "sqlite3"

# Load/create database for this program.
CONNECTION = SQLite3::Database.new("comic_collection.db")

# Builds the tables.
# CONNECTION.execute("CREATE TABLE IF NOT EXISTS comics (
#   id INTEGER PRIMARY KEY,
#   title TEXT,
#   volume_number INTEGER,
#   issue_number INTEGER,
#   publisher_id INTEGER,
#   year INTEGER,
#   box_id INTEGER);")
# CONNECTION.execute("CREATE TABLE IF NOT EXISTS publishers (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   parent_company TEXT,
#   current_hq_location TEXT);")
# CONNECTION.execute("CREATE TABLE IF NOT EXISTS boxes (
#   id INTEGER PRIMARY KEY,
#   row INTEGER,
#   shelf INTEGER);")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS comics (
    id INTEGER PRIMARY KEY,
    title TEXT,
    issue_number INTEGER,
    publisher_id INTEGER,
    year INTEGER,
    box_id INTEGER);")

# Get results as an Array of Hashes.
CONNECTION.results_as_hash = true