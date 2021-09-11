-- The Chinese Restaurant of SQL questions
SELECT home_library_code
FROM library_usage
WHERE circulation_active_year = 2016 AND
  NOT provided_email_address AND
  notice_preference_definition = 'email';
