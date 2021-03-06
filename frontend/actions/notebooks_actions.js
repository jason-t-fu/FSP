import * as NotebooksApiUtil from '../util/notebooks_api_util';

export const RECEIVE_ALL_NOTEBOOKS = "RECEIVE_ALL_NOTEBOOKS";
export const RECEIVE_NOTEBOOK = "RECEIVE_NOTEBOOK";
export const REMOVE_NOTEBOOK = "REMOVE_NOTEBOOK";
export const RECEIVE_NOTEBOOK_ERRORS = "RECEIVE_NOTEBOOK_ERRORS";
export const START_LOADING_ALL_NOTEBOOKS = "START_LOADING_ALL_NOTEBOOKS";

const receiveAllNotebooks = notebooks => {
  return {
    type: RECEIVE_ALL_NOTEBOOKS,
    notebooks
  };
};

// Payload consists of the selected notebook and notes belonging to the notebook
export const receiveNotebook = notebook => {
  return {
    type: RECEIVE_NOTEBOOK,
    notebook
  };
};

const removeNotebook = notebookId => {
  return {
    type: REMOVE_NOTEBOOK,
    notebookId
  };
};

const receiveNotebookErrors = errors => {
  return {
    type: RECEIVE_NOTEBOOK_ERRORS,
    errors
  };
};

const startLoadingAllNotebooks = () => {
  return {
    type: START_LOADING_ALL_NOTEBOOKS
  };
};

export const fetchAllNotebooks = () => {
  return dispatch => {
    dispatch(startLoadingAllNotebooks());
    return NotebooksApiUtil.fetchAllNotebooks().then(
      notebooks => dispatch(receiveAllNotebooks(notebooks)),
      errors => dispatch(receiveNotebookErrors(errors.responseJSON))
    );
  };
};

export const fetchNotebook = notebookId => {
  return dispatch => {
    return NotebooksApiUtil.fetchNotebook(notebookId).then(
      resNotebook => dispatch(receiveNotebook(resNotebook)),
      errors => dispatch(receiveNotebookErrors(errors.responseJSON))
    );
  };
};

export const createNotebook = notebook => {
  return dispatch => {
    return NotebooksApiUtil.createNotebook(notebook).then(
      resNotebook =>  dispatch(receiveNotebook(resNotebook)),
      errors => dispatch(receiveNotebookErrors(errors.responseJSON))
    );
  };
};

export const updateNotebook = notebook => {
  return dispatch => {
    return NotebooksApiUtil.updateNotebook(notebook).then(
      resNotebook => dispatch(receiveNotebook(resNotebook)),
      errors => dispatch(receiveNotebookErrors(errors.responseJSON))
    );
  };
};

export const deleteNotebook = notebookId => {
  return dispatch => {
    return NotebooksApiUtil.deleteNotebook(notebookId).then(
      () => dispatch(removeNotebook(notebookId)),
      errors => dispatch(receiveNotebookErrors(errors.responseJSON))
    );
  };
};