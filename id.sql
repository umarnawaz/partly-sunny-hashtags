set search_path to kaggle_partly_cloudy_change_hashtags;

\copy (select id from raw_test order by id asc) to 'test.id'
