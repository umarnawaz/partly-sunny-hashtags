set search_path to kaggle_partly_cloudy_change_hashtags;

drop view features cascade;

create view features as 
with 
common_locations as 
(select tt.id,tt.location from train_test tt 
left join location_counts lc on tt.location = lc.location
where lc.count > 100)
select tt.id,tt.tt,

replace(tt.tweet,':','_') || ' '
|| regexp_replace(lower(tt.tweet),'[^a-z]+',' ','g')
|| ' tweet==' || replace(replace(tt.tweet,':','_'),' ','_')
|| ' state==' || replace(tt.state,' ','_')
|| ' location==' || replace(replace(tt.location,':','_'),' ','_')
|| ' common_location==' || replace(replace(cl.location,':','_'),' ','_')
|| ' tweet_length_10==' || 
cast(width_bucket(char_length(tt.tweet),0,150,15) as text)
|| ' tweet_length_5==' || 
cast(width_bucket(char_length(tt.tweet),0,150,30) as text)
|| ' tweet_length_20==' || 
cast(width_bucket(char_length(tt.tweet),0,160,8) as text)

as feature 
from train_test tt
left join common_locations cl on tt.id = cl.id;

create view train_features as select ' | Data ' || feature
from features where tt = 'train' order by id asc;
create view test_features as select '| Data ' || feature
from features where tt = 'test' order by id asc;

\copy (select * from train_features) to 'train.vw'
\copy (select * from test_features) to 'test.vw'

