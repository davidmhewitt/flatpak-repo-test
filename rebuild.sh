rm -rf .flatpak-builder
rm -rf repo
rm -rf build-dir
flatpak-builder build-dir org.flatpak.Hello.json --force-clean
flatpak build-export repo build-dir stable
flatpak build-update-repo repo
flatpak remote-add --if-not-exists --no-gpg-verify example repo
flatpak update --appstream example
