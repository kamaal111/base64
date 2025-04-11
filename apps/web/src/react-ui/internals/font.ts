type FontClassnames = typeof FONT_CLASSNAMES;
type FontKeys = keyof FontClassnames;
type FontClassname = FontClassnames[FontKeys];
export type Font = FontKeys;

const FONT_CLASSNAMES = {
  largeTitle: 'text-large-title',
  title1: 'text-title1',
  title2: 'text-title2',
  title3: 'text-title3',
  headline: 'text-headline',
  body: 'text-body',
  callout: 'text-callout',
  footnote: 'text-footnote',
  caption1: 'text-caption1',
  caption2: 'text-caption2',
} as const;

export function fontToClassname(font: Font | undefined): FontClassname {
  if (font == null) return FONT_CLASSNAMES.body;

  return FONT_CLASSNAMES[font];
}
