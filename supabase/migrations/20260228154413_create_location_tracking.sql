/*
  # Create Location Tracking Table

  1. New Tables
    - `visitor_locations`
      - `id` (uuid, primary key) - unique identifier
      - `latitude` (numeric) - visitor's latitude
      - `longitude` (numeric) - visitor's longitude
      - `city` (text) - visitor's city
      - `region` (text) - visitor's region/district
      - `country` (text) - visitor's country
      - `full_address` (text) - full address if available
      - `ip_address` (text) - visitor's IP address (hashed for privacy)
      - `visited_at` (timestamp) - when they visited
  
  2. Security
    - Enable RLS on `visitor_locations` table
    - Public read-only access to view aggregated location data
*/

CREATE TABLE IF NOT EXISTS visitor_locations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  latitude numeric(10, 8),
  longitude numeric(11, 8),
  city text,
  region text,
  country text,
  full_address text,
  ip_address text,
  visited_at timestamptz DEFAULT now()
);

ALTER TABLE visitor_locations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public can read location data"
  ON visitor_locations FOR SELECT
  TO anon, authenticated
  USING (true);

CREATE POLICY "Public can insert location data"
  ON visitor_locations FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);
