{
  description = "st personal fork";

  outputs = { self }: {
    overlays.default = (final: prev: {
      st = prev.st.overrideAttrs (oa: with final; {
        src = ./.;
      });
    });
  };
}
