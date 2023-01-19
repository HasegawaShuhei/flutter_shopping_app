.PHONY: pub
pub:
	flutter pub get

.PHONY: runner
runner:
	flutter pub run build_runner build --delete-conflicting-outputs
