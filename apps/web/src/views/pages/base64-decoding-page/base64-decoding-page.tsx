import Base64Editor from '@/views/components/base64-editor/base64-editor';

import './base64-decoding-page.css';

function Base64DecodingPage() {
  return (
    <div className="content">
      <Base64Editor title="Base64" />
      <Base64Editor title="Decoded" />
    </div>
  );
}

export default Base64DecodingPage;
