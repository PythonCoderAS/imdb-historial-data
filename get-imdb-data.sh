# We do 2019[5-12] because prior to May 2019 imdb would not give us the total number of records.
for time in 2019{05..12} {2020..2023}{01..12};
# We do -v so we can capture the actual timestamp of the archive
do curl -vL --silent "https://web.archive.org/web/${time}00000000/https://www.imdb.com/pressroom/stats/" > data-$time.txt 2>&1;
done
