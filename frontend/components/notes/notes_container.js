import { connect } from 'react-redux';
import { fetchAllNotes, makeNote, receiveNote } from '../../actions/notes_actions';
import { fetchAllNotebooks } from '../../actions/notebooks_actions';
import Notes from './notes';
import { logout } from '../../actions/session_actions';

const mapStateToProps = state => {
  return {
    notes: Object.values(state.entities.notes).sort(
      (a, b) => (Date.parse(b.updatedAt) - Date.parse(a.updatedAt))
    ),
    loading: state.ui.loading
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchAllNotebooks: () => dispatch(fetchAllNotebooks()),
    fetchAllNotes: () => dispatch(fetchAllNotes()),
    logout: () => dispatch(logout()),
    makeNote: () => dispatch(makeNote()),
    receiveNote: note => dispatch(receiveNote(note))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Notes);