import React from 'react';
import timeSince from './timeSince';

const NotesIndexItem = props => {
  const parseBodyToText = () => {
    let text = "";
    const bodyObject = JSON.parse(props.note.body);

    bodyObject.ops.forEach( entry => {
      text = text.concat(entry.insert);
    });

    return text;
  };

  const handleDelete = (e) => {
    e.stopPropagation();
    props.deleteNote(props.note.id).then(
      () => {
        if (props.notes.length === 1) {
          props.makeNote();
        }
        else {
          if (props.notes[0].id === props.note.id) {
            props.receiveNote(props.notes[1]);
          }
        }
      }
    );
  };

  const displayNote = () => {
    props.receiveNote(props.note);
  };

  const lastUpdated = timeSince(props.note.updatedAt);
  const bodySnippet = parseBodyToText().slice(0, 140);

  return (
    <div className="notes-index-item-container"
         onClick={displayNote}>
      <div className="notes-index-item">
        <div className="notes-index-row">
          <div className="notes-index-item-title">{props.note.title}</div>
          <i className="far fa-trash-alt"
             onClick={handleDelete}></i>
        </div>
        <div className="notes-index-item-date">{lastUpdated}</div>
        <div className="notes-index-item-body">{bodySnippet}</div>
      </div>
    </div>
  );
};

export default NotesIndexItem;