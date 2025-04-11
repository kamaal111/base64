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
  const [base64IsInvalid, setBase64IsInvalid] = React.useState(false);
  const [decodedIsInvalid, setDecodedIsInvalid] = React.useState(false);

  function handleBase64Change(text: string) {
    if (focusedField !== TEXT_FIELDS.BASE64) return;

    setBase64(text);
    try {
      setDecoded(atob(text));
      if (base64IsInvalid) {
        setBase64IsInvalid(false);
      }
    } catch {
      setDecoded('Invalid base64');
      setBase64IsInvalid(true);
    }
  }

  function handleDecodedChange(text: string) {
    if (focusedField !== TEXT_FIELDS.DECODED) return;

    setDecoded(text);

    try {
      setBase64(btoa(text));
      if (decodedIsInvalid) {
        setDecodedIsInvalid(false);
      }
    } catch {
      setBase64('Invalid text');
      setDecodedIsInvalid(true);
    }
  }

  return (
    <VStack frame={{ width: '100%' }}>
      <Base64Editor
        title="Base64"
        value={base64}
        isInvalid={decodedIsInvalid}
        onChange={handleBase64Change}
        onFocus={() => setFocusedField(TEXT_FIELDS.BASE64)}
      />
      <Base64Editor
        title="Decoded"
        value={decoded}
        isInvalid={base64IsInvalid}
        onChange={handleDecodedChange}
        onFocus={() => setFocusedField(TEXT_FIELDS.DECODED)}
      />
    </VStack>
  );
}

export default Base64DecodingPage;
