default:
    just --list --unsorted

# NOTE: 1 time setup
# Create and store Notary profile
create-notary-profile:
    just apps/apple/create-notary-profile

create-mac-app-zip:
    just apps/apple/create-mac-app-zip-and-notarize

create-dmg:
    just apps/apple/create-dmg

dev-web:
    just apps/web/dev

bootstrap:
    just apps/bootstrap
