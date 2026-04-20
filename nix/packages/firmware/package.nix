{ self, buildSplitKeyboard }:
buildSplitKeyboard {
  name = "firmware";
  src = self;
  board = "nice_nano//zmk";
  shield = "corne_%PART% nice_view_adapter nice_view";
  zephyrDepsHash = "sha256-yZd+C2k9Kb1TKzXS6rR3/Jcs3UAGeKmq0YwdylODRgs=";
  meta.description = "My corne keyboard configuration";
}
