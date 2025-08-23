default:
    just --list --unsorted

create-dmg:
    just apps/apple/create-dmg

dev-web:
    just apps/web/dev

bootstrap:
    just apps/bootstrap
