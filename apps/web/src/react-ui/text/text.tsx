import { type Font, fontToClassname } from '../internals/font';

import './text.css';

type TextProps = { children: string; font?: Font };

function Text({ children, font }: TextProps) {
  return <span className={fontToClassname(font)}>{children}</span>;
}

export default Text;
