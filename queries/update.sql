UPDATE admin_sessions SET deleted_at=? WHERE session_id=?
UPDATE admin_users SET last_activated_at=?, updated_at=? WHERE id=?
UPDATE admin_sessions SET deleted_at=? WHERE user_id=? AND deleted_at IS NULL
UPDATE admin_sessions SET deleted_at=? WHERE session_id=? AND deleted_at IS NULL
UPDATE user_sessions SET deleted_at=? WHERE session_id=?
UPDATE user_one_time_tokens SET deleted_at=? WHERE token=?
UPDATE user_one_time_tokens SET deleted_at=? WHERE token=?
UPDATE users SET updated_at=?, last_activated_at=? WHERE id=?
UPDATE user_login_bonuses SET last_reward_sequence=?, loop_count=?, updated_at=? WHERE id=?
UPDATE users SET isu_coin=? WHERE id=?
UPDATE user_items SET amount=?, updated_at=? WHERE id=?
UPDATE user_sessions SET deleted_at=? WHERE user_id=? AND deleted_at IS NULL
UPDATE users SET updated_at=?, last_activated_at=? WHERE id=?
UPDATE user_one_time_tokens SET deleted_at=? WHERE user_id=? AND deleted_at IS NULL
UPDATE users SET isu_coin=? WHERE id=?
UPDATE user_presents SET deleted_at=?, updated_at=? WHERE id=?
UPDATE user_one_time_tokens SET deleted_at=? WHERE user_id=? AND deleted_at IS NULL
UPDATE user_cards SET amount_per_sec=?, level=?, total_exp=?, updated_at=? WHERE id=?
UPDATE user_items SET amount=?, updated_at=? WHERE id=?
UPDATE user_decks SET updated_at=?, deleted_at=? WHERE user_id=? AND deleted_at IS NULL
UPDATE users SET isu_coin=?, last_getreward_at=? WHERE id=?
UPDATE id_generator SET id=LAST_INSERT_ID(id+1)

----------------------------------------- back quote queries -----------------------------------------
