#! /bin/sh -e

for suffix in prog lib; do
	curl -T "ipfilter-${suffix}_0.0.${1}_amd64.deb" -u sergmusor:"$2" "https://api.bintray.com/content/sergmusor/03-2019.01.10/ipfilter/0.0.${1}/pool/main/i/ipfilter/ipfilter-${suffix}_0.0.${1}_amd64.deb;deb_distribution=xenial;deb_component=main;deb_architecture=amd64;publish=1"
done
