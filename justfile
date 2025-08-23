default:
    just --list --unsorted

# NOTE: 1 time setup
# Create and store Notary profile
create-notary-profile:
    just apps/apple/create-notary-profile

create-pkg:
    just apps/apple/create-pkg

dev-web:
    just apps/web/dev

bootstrap:
    just apps/bootstrap
