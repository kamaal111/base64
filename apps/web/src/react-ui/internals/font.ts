type FontClassnames = typeof FONT_CLASSNAMES;
type FontKeys = keyof FontClassnames;
type FontClassname = FontClassnames[FontKeys];
export type Font = FontKeys | 'body';

const FONT_CLASSNAMES = {
  headline: 'text-headline',
} as const;

export function fontToClassname(
  font: Font | undefined,
): FontClassname | undefined {
  if (font == null || font === 'body') return undefined;

  return FONT_CLASSNAMES[font];
}
