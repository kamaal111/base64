import { VStack } from '@/react-ui';
import Base64Editor from '@/views/components/base64-editor/base64-editor';

import './base64-decoding-page.css';

function Base64DecodingPage() {
  return (
    <VStack frame={{ width: '100%' }}>
      <Base64Editor title="Base64" />
      <Base64Editor title="Decoded" />
    </VStack>
  );
}

export default Base64DecodingPage;
