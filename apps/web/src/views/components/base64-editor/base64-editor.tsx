import './base64-editor.css';

type Base64EditorProps = { title: string };

function Base64Editor({ title }: Base64EditorProps) {
  return (
    <div className="base64-editor-container">
      <p>{title}</p>
      <textarea className="editor"></textarea>
    </div>
  );
}

export default Base64Editor;
