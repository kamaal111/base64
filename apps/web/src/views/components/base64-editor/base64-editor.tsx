import { VStack, Text } from '@/react-ui';

import './base64-editor.css';

type Base64EditorProps = {
  title: string;
  value: string;
  onChange: (text: string) => void;
  onFocus?: () => void;
  onBlur?: () => void;
};

function Base64Editor({
  title,
  value,
  onChange,
  onBlur = () => {},
  onFocus = () => {},
}: Base64EditorProps) {
  return (
    <VStack frame={{ width: '80%' }} alignment="leading">
      <Text font="headline">{title}</Text>
      <textarea
        className="editor"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        onBlur={onBlur}
        onFocus={onFocus}
      ></textarea>
    </VStack>
  );
}

export default Base64Editor;
