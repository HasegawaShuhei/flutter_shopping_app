.PHONY: pub
pub:
	flutter pub get

.PHONY: runner
runner:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: runner-watch
runner-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs
