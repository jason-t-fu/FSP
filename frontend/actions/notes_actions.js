import * as NotesApiUtil from '../util/notes_api_util';

export const RECEIVE_ALL_NOTES = "RECEIVE_ALL_NOTES";
export const RECEIVE_NOTE = "RECEIVE_NOTE";
export const REMOVE_NOTE = "REMOVE_NOTE";
export const RECEIVE_NOTES_ERRORS = "RECEIVE_NOTES_ERRORS";
export const START_LOADING_ALL_NOTES = "START_LOADING_ALL_NOTES";
export const MAKE_NOTE = "MAKE_NOTE";
export const RECEIVE_UPDATED_NOTE = "RECEIVE_UPDATED_NOTE";

export const receiveAllNotes = notes => {
  return {
    type: RECEIVE_ALL_NOTES,
    notes
  };
};

export const receiveNote = note => {
  return {
    type: RECEIVE_NOTE,
    note
  };
};

export const receiveUpdatedNote = note => {
  return {
    type: RECEIVE_UPDATED_NOTE,
    note
  };
};

export const makeNote = () => {
  return {
    type: MAKE_NOTE
  };
};

const removeNote = noteId => {
  return {
    type: REMOVE_NOTE,
    noteId
  };
};

const receiveErrors = errors => {
  return {
    type: RECEIVE_NOTES_ERRORS,
    errors
  };
};

const startLoadingAllNotes = () => {
  return {
    type: START_LOADING_ALL_NOTES
  };
};

export const fetchAllNotes = () => {
  return dispatch => {
    dispatch(startLoadingAllNotes());
    return NotesApiUtil.fetchAllNotes().then(
      notes => dispatch(receiveAllNotes(notes)),
      errors => dispatch(receiveErrors(errors.responseJSON))
    );
  };
};

export const fetchNote = noteId => {
  return dispatch => {
    return NotesApiUtil.fetchNote(noteId).then(
      resNote => dispatch(receiveNote(resNote)),
      errors => dispatch(receiveErrors(errors.responseJSON))
    );
  };
};

export const createNote = note => {
  return dispatch => {
    return NotesApiUtil.createNote(note).then(
      resNote => dispatch(receiveNote(resNote)),
      errors => dispatch(receiveErrors(errors.responseJSON))
    );
  };
};

export const updateNote = note => {
  return dispatch => {
    return NotesApiUtil.updateNote(note).then(
      (resNote) => dispatch(receiveUpdatedNote(resNote)),
      errors => dispatch(receiveErrors(errors.responseJSON))
    );
  };
};

export const deleteNote = noteId => {
  return dispatch => {
    return NotesApiUtil.deleteNote(noteId).then(
      () => dispatch(removeNote(noteId)),
      errors => dispatch(receiveErrors(errors.responseJSON))
    );
  };
};