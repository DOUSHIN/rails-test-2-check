module TclonesHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_tclones_path
    elsif action_name == 'edit'
      tclone_path
    end
  end
end
