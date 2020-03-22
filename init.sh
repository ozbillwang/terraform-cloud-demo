# command line

# make sure you have updated token in file $HOME/.terraformrc
TOKEN=$(awk -F \" '/token/{print $2}' ~/.terraformrc)

# update with your organization and workspace
export organization="bill"
export workspace="demo-2"

# replace in payloads
jq '.data.attributes.name |= env.organization' org_payload.json > temp; mv temp org_payload.json
jq '.data.attributes.name |= env.workspace' ws_payload.json > temp; mv temp ws_payload.json

# create organizations
# make sure you have updated with unique name in `org_payload.json`
curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @org_payload.json \
  https://app.terraform.io/api/v2/organizations

# update ws_payload.json with proper github url and oauth token
curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @ws_payload.json \
  https://app.terraform.io/api/v2/organizations/${organization}/workspaces
