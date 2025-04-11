import { VStack, Text } from '@/react-ui';

import './base64-editor.css';

type Base64EditorProps = { title: string };

function Base64Editor({ title }: Base64EditorProps) {
  return (
    <VStack frame={{ width: '80%' }} alignment="leading">
      <Text font="headline">{title}</Text>
      <textarea className="editor"></textarea>
    </VStack>
  );
}

export default Base64Editor;
