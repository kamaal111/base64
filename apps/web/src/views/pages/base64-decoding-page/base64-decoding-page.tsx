import React from 'react';

import { VStack } from '@/react-ui';
import Base64Editor from '@/views/components/base64-editor/base64-editor';

import './base64-decoding-page.css';

type TextFieldsMap = typeof TEXT_FIELDS;
type TextFields = TextFieldsMap[keyof TextFieldsMap];

const TEXT_FIELDS = { BASE64: 'base64', DECODED: 'decoded' } as const;

function Base64DecodingPage() {
  const [base64, setBase64] = React.useState('');
  const [decoded, setDecoded] = React.useState('');
  const [focusedField, setFocusedField] = React.useState<TextFields | null>(
    null,
  );

  function handleBase64Change(text: string) {
    if (focusedField !== TEXT_FIELDS.BASE64) return;

    setBase64(text);
  }

  function handleDecodedChange(text: string) {
    if (focusedField !== TEXT_FIELDS.DECODED) return;

    setDecoded(text);
  }

  return (
    <VStack frame={{ width: '100%' }}>
      <Base64Editor
        title="Base64"
        value={base64}
        onChange={handleBase64Change}
        onFocus={() => setFocusedField(TEXT_FIELDS.BASE64)}
      />
      <Base64Editor
        title="Decoded"
        value={decoded}
        onChange={handleDecodedChange}
        onFocus={() => setFocusedField(TEXT_FIELDS.DECODED)}
      />
    </VStack>
  );
}

export default Base64DecodingPage;
