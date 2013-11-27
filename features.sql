set search_path to kaggle_partly_cloudy_change_hashtags;

drop view features cascade;

create view features as select id,tt,

replace(tweet,':','_') || ' ' || state || ' ' || replace(location,':','_')

as feature from train_test;

create view train_features as select ' | Data ' || feature
from features where tt = 'train' order by id asc;
create view test_features as select '| Data ' || feature
from features where tt = 'test' order by id asc;

\copy (select * from train_features) to 'train.vw'
\copy (select * from test_features) to 'test.vw'

