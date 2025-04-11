import clsx from 'clsx';

import { VStack, Text } from '@/react-ui';

import './base64-editor.css';

type Base64EditorProps = {
  title: string;
  value: string;
  isInvalid?: boolean;
  onChange: (text: string) => void;
  onFocus?: () => void;
  onBlur?: () => void;
};

function Base64Editor({
  title,
  value,
  isInvalid,
  onChange,
  onBlur = () => {},
  onFocus = () => {},
}: Base64EditorProps) {
  return (
    <VStack frame={{ width: '80%' }} alignment="leading">
      <Text font="headline">{title}</Text>
      <textarea
        className={clsx('editor', isInvalid && 'invalid')}
        value={value}
        onChange={(e) => onChange(e.target.value)}
        onBlur={onBlur}
        onFocus={onFocus}
      ></textarea>
    </VStack>
  );
}

export default Base64Editor;
