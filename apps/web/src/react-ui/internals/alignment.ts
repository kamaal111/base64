import type React from 'react';

type AlignItems = React.CSSProperties['alignItems'];
type AlignItemsToAlignments = typeof ALIGN_ITEMS_TO_ALIGNMENT;

export type Alignments = keyof AlignItemsToAlignments;

const ALIGN_ITEMS_TO_ALIGNMENT = {
  center: 'center',
  leading: 'flex-start',
  trailing: 'flex-end',
} as const;

export function alignmentToAlignItems(
  alignment: Alignments | undefined,
): AlignItems | undefined {
  if (alignment == null) return;

  return ALIGN_ITEMS_TO_ALIGNMENT[alignment];
}
