SELECT * FROM admin_sessions WHERE session_id=? AND deleted_at IS NULL
SELECT * FROM admin_users WHERE id=?
SELECT * FROM version_masters
SELECT * FROM item_masters
SELECT * FROM gacha_masters
SELECT * FROM gacha_item_masters
SELECT * FROM present_all_masters
SELECT * FROM login_bonus_masters
SELECT * FROM login_bonus_reward_masters
SELECT * FROM version_masters WHERE status=1
SELECT * FROM users WHERE id=?
SELECT * FROM user_devices WHERE user_id=?
SELECT * FROM user_cards WHERE user_id=?
SELECT * FROM user_decks WHERE user_id=?
SELECT * FROM user_items WHERE user_id=?
SELECT * FROM user_login_bonuses WHERE user_id=?
SELECT * FROM user_presents WHERE user_id=?
SELECT * FROM user_present_all_received_history WHERE user_id=?
SELECT * FROM users WHERE id=?
SELECT * FROM version_masters WHERE status=1
SELECT * FROM user_sessions WHERE session_id=? AND deleted_at IS NULL
SELECT * FROM user_one_time_tokens WHERE token=? AND token_type=? AND deleted_at IS NULL
SELECT * FROM user_devices WHERE user_id=? AND platform_id=?
SELECT * FROM user_bans WHERE user_id=?
SELECT * FROM users WHERE id=?
SELECT isu_coin FROM users WHERE id=?
SELECT * FROM login_bonus_masters WHERE start_at <= ? AND end_at >= ?
SELECT * FROM user_login_bonuses WHERE user_id=? AND login_bonus_id=?
SELECT * FROM login_bonus_reward_masters WHERE login_bonus_id=? AND reward_sequence=?
SELECT * FROM present_all_masters WHERE registered_start_at <= ? AND registered_end_at >= ?
SELECT * FROM user_present_all_received_history WHERE user_id=? AND present_all_id=?
SELECT * FROM users WHERE id=?
SELECT * FROM item_masters WHERE id=? AND item_type=?
SELECT * FROM item_masters WHERE id=? AND item_type=?
SELECT * FROM user_items WHERE user_id=? AND item_id=?
SELECT * FROM item_masters WHERE id=?
SELECT * FROM users WHERE id=?
SELECT * FROM gacha_masters WHERE start_at <= ? AND end_at >= ? ORDER BY display_order ASC
SELECT * FROM gacha_item_masters WHERE gacha_id=? ORDER BY id ASC
SELECT * FROM users WHERE id=?
SELECT * FROM gacha_masters WHERE id=? AND start_at <= ? AND end_at >= ?
SELECT * FROM gacha_item_masters WHERE gacha_id=? ORDER BY id ASC
SELECT SUM(weight) FROM gacha_item_masters WHERE gacha_id=?
SELECT COUNT(*) FROM user_presents WHERE user_id = ? AND deleted_at IS NULL
SELECT * FROM user_presents WHERE id IN (?) AND deleted_at IS NULL
SELECT * FROM users WHERE id=?
SELECT * FROM user_items WHERE user_id = ?
SELECT * FROM user_cards WHERE user_id=?
SELECT * FROM user_cards WHERE id=?
SELECT * FROM user_cards WHERE id IN (?)
SELECT * FROM users WHERE id=?
SELECT * FROM user_decks WHERE user_id=? AND deleted_at IS NULL
SELECT * FROM user_cards WHERE id IN (?, ?, ?)
SELECT * FROM user_decks WHERE user_id=? AND deleted_at IS NULL
SELECT * FROM user_cards WHERE id IN (?)
SELECT * FROM users WHERE id=?

----------------------------------------- back quote queries -----------------------------------------
	SELECT * FROM user_presents 
	WHERE user_id = ? AND deleted_at IS NULL
	ORDER BY created_at DESC, id
	SELECT uc.id , uc.user_id , uc.card_id , uc.amount_per_sec , uc.level, uc.total_exp, im.amount_per_sec as 'base_amount_per_sec', im.max_level , im.max_amount_per_sec , im.base_exp_per_level
	FROM user_cards as uc
	INNER JOIN item_masters as im ON uc.card_id = im.id
	WHERE uc.id = ? AND uc.user_id=?
	SELECT ui.id, ui.user_id, ui.item_id, ui.item_type, ui.amount, ui.created_at, ui.updated_at, im.gained_exp
	FROM user_items as ui
	INNER JOIN item_masters as im ON ui.item_id = im.id
	WHERE ui.item_type = 3 AND ui.id=? AND ui.user_id=?
