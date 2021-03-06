import { connect } from "react-redux";
import NotesNavbar from "./notes_navbar";
import { logout } from "../../actions/session_actions";
import { makeNote, receiveAllNotes } from "../../actions/notes_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import { selectAllNotes } from "../../reducers/selectors";

const mapStateToProps = state => {
  return {
    notes: state.entities.notes,
    numNotes: selectAllNotes(state).length,
    modalOpen: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    logout: () => dispatch(logout()),
    makeNote: () => dispatch(makeNote()),
    receiveAllNotes: notes => dispatch(receiveAllNotes(notes)),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NotesNavbar);