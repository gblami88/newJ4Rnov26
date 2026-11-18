/*
  # Drop Location Tracking Table

  1. Removed Tables
    - `visitor_locations` - dropped as data collection is not needed

  This migration removes the previously created visitor_locations table.
*/

DROP TABLE IF EXISTS visitor_locations;
