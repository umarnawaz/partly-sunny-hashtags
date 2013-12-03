rm *.cache

paste s1.labels train.vw |tr '\t' ' '|vw --cache_file s1.cache -f s1.model --passes 1
paste s2.labels train.vw |tr '\t' ' '|vw --cache_file s2.cache -f s2.model --passes 1
paste s3.labels train.vw |tr '\t' ' '|vw --cache_file s3.cache -f s3.model --passes 1
paste s4.labels train.vw |tr '\t' ' '|vw --cache_file s4.cache -f s4.model --passes 1
paste s5.labels train.vw |tr '\t' ' '|vw --cache_file s5.cache -f s5.model --passes 1


paste w1.labels train.vw |tr '\t' ' '|vw --cache_file w1.cache -f w1.model --passes 1
paste w2.labels train.vw |tr '\t' ' '|vw --cache_file w2.cache -f w2.model --passes 1
paste w3.labels train.vw |tr '\t' ' '|vw --cache_file w3.cache -f w3.model --passes 1
paste w4.labels train.vw |tr '\t' ' '|vw --cache_file w4.cache -f w4.model --passes 1

paste k1.labels train.vw |tr '\t' ' '|vw --cache_file k1.cache -f k1.model --passes 1
paste k2.labels train.vw |tr '\t' ' '|vw --cache_file k2.cache -f k2.model --passes 1
paste k3.labels train.vw |tr '\t' ' '|vw --cache_file k3.cache -f k3.model --passes 1
paste k4.labels train.vw |tr '\t' ' '|vw --cache_file k4.cache -f k4.model --passes 1
paste k5.labels train.vw |tr '\t' ' '|vw --cache_file k5.cache -f k5.model --passes 1
paste k6.labels train.vw |tr '\t' ' '|vw --cache_file k6.cache -f k6.model --passes 1
paste k7.labels train.vw |tr '\t' ' '|vw --cache_file k7.cache -f k7.model --passes 1
paste k8.labels train.vw |tr '\t' ' '|vw --cache_file k8.cache -f k8.model --passes 1
paste k9.labels train.vw |tr '\t' ' '|vw --cache_file k9.cache -f k9.model --passes 1
paste k10.labels train.vw |tr '\t' ' '|vw --cache_file k10.cache -f k10.model --passes 1
paste k11.labels train.vw |tr '\t' ' '|vw --cache_file k11.cache -f k11.model --passes 1
paste k12.labels train.vw |tr '\t' ' '|vw --cache_file k12.cache -f k12.model --passes 1
paste k13.labels train.vw |tr '\t' ' '|vw --cache_file k13.cache -f k13.model --passes 1
paste k14.labels train.vw |tr '\t' ' '|vw --cache_file k14.cache -f k14.model --passes 1
paste k15.labels train.vw |tr '\t' ' '|vw --cache_file k15.cache -f k15.model --passes 1
