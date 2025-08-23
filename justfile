default:
    just --list --unsorted

create-mac-app:
    just apps/apple/create-mac-app

create-dmg:
    just apps/apple/create-dmg

dev-web:
    just apps/web/dev

bootstrap:
    just apps/bootstrap
