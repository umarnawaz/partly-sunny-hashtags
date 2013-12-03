echo 'id,s1,s2,s3,s4,s5,w1,w2,w3,w4,k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15' > partlycloudysubmission.csv
paste -d , test.id s1.predictions s2.predictions s3.predictions s4.predictions s5.predictions w1.predictions w2.predictions w3.predictions w4.predictions k1.predictions k2.predictions k3.predictions k4.predictions k5.predictions k6.predictions k7.predictions k8.predictions k9.predictions k10.predictions k11.predictions k12.predictions k13.predictions k14.predictions k15.predictions >> partlycloudysubmission.csv
cat partlycloudysubmission.csv |sed 's/ \\N//g' >123
cat 123 | gzip > partlycloudysubmission.csv.gz
rm 123

