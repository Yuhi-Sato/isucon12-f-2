ALTER TABLE user_presents DROP INDEX userid_idx;
ALTER TABLE user_presents ADD INDEX idx_user_id_deleted_at(`user_id`, `deleted_at`)
