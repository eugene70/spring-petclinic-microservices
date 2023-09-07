#!/bin/bash

# URL과 period를 입력받습니다.
url=$1
period=$2

# period 만큼 반복합니다.
for i in $(seq 1 $period); do
  # URL을 호출합니다.
  echo "$i call $url"
  curl $url -s -o /dev/null

  # 1초 대기합니다.
  sleep 0.1
done
