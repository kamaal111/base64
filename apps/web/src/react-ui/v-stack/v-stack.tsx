import type React from 'react';

import { type Alignments, alignmentToAlignItems } from '../internals/alignment';

import './v-stack.css';

type VStackProps = React.PropsWithChildren<{
  frame?: { width?: React.CSSProperties['width'] };
  alignment?: Alignments;
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
