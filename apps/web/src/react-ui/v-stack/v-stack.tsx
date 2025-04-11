import type React from 'react';

import { alignmentToAlignItems } from '../internals/alignment';
import type { Alignment } from '../types';

import './v-stack.css';

type VStackProps = React.PropsWithChildren<{
  frame?: { width?: React.CSSProperties['width'] };
  alignment?: Alignment;
}>;

function VStack({ children, frame, alignment }: VStackProps) {
  return (
    <div
      className="v-stack"
      style={{
        width: frame?.width,
        alignItems: alignmentToAlignItems(alignment),
      }}
    >
      {children}
    </div>
  );
}

export default VStack;
