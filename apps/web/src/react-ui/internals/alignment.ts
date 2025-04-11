import type React from 'react';

import type { Alignment } from '../types';

type AlignItems = React.CSSProperties['alignItems'];

export function alignmentToAlignItems(
  alignment: Alignment | undefined,
): AlignItems | undefined {
  if (alignment == null) return;

  switch (alignment) {
    case 'center':
      return 'center';
    case 'leading':
      return 'flex-start';
    case 'trailing':
      return 'flex-end';
  }
}
