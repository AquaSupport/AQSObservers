#!/bin/bash

appledoc --prefix-merged-sections \
 --ignore ".m"\
 --ignore "Pods"\
 --keep-undocumented-objects\
 --keep-undocumented-members\
 --create-html\
 --no-create-docset\
 --index-desc "README.md"\
 --company-id "org.openaquamarine"\
 --project-name="AQSObservers"\
 --project-company "Aquamarine"\
 --output "~/dropbox/Public/___doc___AQSObservers"\
 AQSObservers/Classes
