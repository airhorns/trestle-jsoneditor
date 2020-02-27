#!/bin/bash
set -ex
npm install
cp node_modules/jsoneditor/dist/jsoneditor.{js,css} vendor/assets/jsoneditor/vendored_jsoneditor
mkdir -p app/assets/images/trestle/img
cp -r node_modules/jsoneditor/dist/img app/assets/images/trestle