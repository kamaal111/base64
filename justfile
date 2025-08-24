default:
    just --list --unsorted

# NOTE: 1 time setup
# Create and store Notary profile
create-notary-profile:
    just apps/apple/create-notary-profile

generate-sparkle-keys:
    just apps/apple/generate-sparkle-keys

create-pkg:
    just apps/apple/create-pkg

sign-pkg:
    just apps/apple/sign-pkg

dev-web:
    just apps/web/dev

build-web:
    just apps/web/build

publish-web:
    just apps/web/publish

bootstrap:
    just apps/bootstrap
