import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import notesReducer from './notes_reducer';
import notebooksReducer from './notebooks_reducer';
import tagsReducer from './tags_reducer';

export default combineReducers({
  users: usersReducer,
  notes: notesReducer,
  notebooks: notebooksReducer,
  tags: tagsReducer
});


/*
  State Slice:
  {
    entities: {
      users: {
        1: {...}
        2: {...}
      }
    }
    session: {...}
    errors: {...}
    ui: {...}
    active: {...}
  }
*/