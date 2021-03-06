import { connect } from 'react-redux';
import NotesDetail from './notes_detail';
import { updateNote } from '../../actions/notes_actions';
import { selectAllNotebooks } from '../../reducers/selectors';

const mapStateToProps = (state, ownProps) => {
  return {
    note: state.entities.notes[state.active.activeNoteId],
    notebooks: selectAllNotebooks(state),
    errors: state.errors.notes
  };
};

const mapDispatchToProps = dispatch => {
  return {
    updateNote: note => dispatch(updateNote(note))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NotesDetail);