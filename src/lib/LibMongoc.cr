@[Link(ldflags: "-lmongoc-1.0")]
lib LibMongoc
  type BSON = Void
  type BSON_error = Void
  type BSON_value = Void

  ### Initialization and Cleanup
  fun init = mongoc_init : Void
  fun cleanup = mongoc_cleanup : Void

  ### Logging
  # http://mongoc.org/libmongoc/1.16.2/logging.html

  ### Error Reporting
  # http://mongoc.org/libmongoc/1.16.2/errors.html

  ### Object Lifecycle
  # http://mongoc.org/libmongoc/1.16.2/lifecycle.html

  ### GridFS
  # http://mongoc.org/libmongoc/1.16.2/gridfs.html

  ### mongoc_auto_encryption_opts_t
  # typedef struct _mongoc_auto_encryption_opts_t mongoc_auto_encryption_opts_t;
  type AutoEncryptionOpts = Void

  fun auto_encryption_opts_new = mongoc_auto_encryption_opts_new : AutoEncryptionOpts*
  fun auto_encryption_opts_destroy = mongoc_auto_encryption_opts_destroy(opts : AutoEncryptionOpts*) : Void
  fun auto_encryption_opts_set_keyvault_client = mongoc_auto_encryption_opts_set_keyvault_client(opts : AutoEncryptionOpts*, client : Client*) : Void
  fun auto_encryption_opts_set_keyvault_client_pool = mongoc_auto_encryption_opts_set_keyvault_client_pool(opts : AutoEncryptionOpts*, pool : ClientPool*) : Void
  fun auto_encryption_opts_set_keyvault_namespace = mongoc_auto_encryption_opts_set_keyvault_namespace(opts : AutoEncryptionOpts*, db : Int8*, coll : Int8*) : Void
  fun auto_encryption_opts_set_kms_providers = mongoc_auto_encryption_opts_set_kms_providers(opts : AutoEncryptionOpts*, kms_providers : BSON*) : Void
  fun auto_encryption_opts_set_schema_map = mongoc_auto_encryption_opts_set_schema_map(opts : AutoEncryptionOpts*, schema_map : BSON*) : Void
  fun auto_encryption_opts_set_bypass_auto_encryption = mongoc_auto_encryption_opts_set_bypass_auto_encryption(opts : AutoEncryptionOpts*, bypass_auto_encryption : Bool) : Void
  fun auto_encryption_opts_set_extra = mongoc_auto_encryption_opts_set_extra(opts : AutoEncryptionOpts*, extra : BSON*) : Void

  ### mongoc_bulk_operation_t
  # typedef struct _mongoc_bulk_operation_t mongoc_bulk_operation_t
  type BulkOperation = Void

  fun bulk_operation_delete = mongoc_bulk_operation_delete(bulk : BulkOperation*, selector : BSON*) : Void
  fun bulk_operation_delete_one = mongoc_bulk_operation_delete_one(bulk : BulkOperation*, selector : BSON*) : Void
  fun bulk_operation_destroy = mongoc_bulk_operation_destroy(bulk : BulkOperation*) : Void
  fun bulk_operation_execute = mongoc_bulk_operation_execute(bulk : BulkOperation*, reply : BSON*, error : BSON_error*) : UInt32
  fun bulk_operation_get_hint = mongoc_bulk_operation_get_hint(bulk : BulkOperation*) : UInt32
  fun bulk_operation_get_write_concern = mongoc_bulk_operation_get_write_concern(bulk : BulkOperation*) : WriteConcern*
  fun bulk_operation_insert = mongoc_bulk_operation_insert(bulk : BulkOperation*, document : BSON*) : Void
  fun bulk_operation_insert_with_opts = mongoc_bulk_operation_insert_with_opts(bulk : BulkOperation*, document : BSON*, opts : BSON*, error : BSON_error*) : Bool
  fun bulk_operation_remove = mongoc_bulk_operation_remove(bulk : BulkOperation*, selector : BSON*) : Void
  fun bulk_operation_remove_many_with_opts = mongoc_bulk_operation_remove_many_with_opts(bulk : BulkOperation*, selector : BSON*, opts : BSON*, error : BSON_error*) : Bool
  fun bulk_operation_remove_one = mongoc_bulk_operation_remove_one(bulk : BulkOperation*, selector : BSON*) : Void
  fun bulk_operation_remove_one_with_opts = mongoc_bulk_operation_remove_one_with_opts(bulk : BulkOperation*, selector : BSON*, opts : BSON*, error : BSON_error*) : Bool
  fun bulk_operation_replace_one = mongoc_bulk_operation_replace_one(bulk : BulkOperation*, selector : BSON*, document : BSON*, upsert : Bool) : Void
  fun bulk_operation_replace_one_with_opts = mongoc_bulk_operation_replace_one_with_opts(bulk : BulkOperation*, selector : BSON*, document : BSON*, opts : BSON*, error : BSON_error*) : Bool
  fun bulk_operation_set_bypass_document_validation = mongoc_bulk_operation_set_bypass_document_validation(bulk : BulkOperation*, bypass : Bool) : Void
  fun bulk_operation_set_client_session = mongoc_bulk_operation_set_client_session(bulk : BulkOperation*, client_session : ClientSession*) : Void
  fun bulk_operation_set_hint = mongoc_bulk_operation_set_hint(bulk : BulkOperation*, server_id : UInt32) : Void
  fun bulk_operation_update = mongoc_bulk_operation_update(bulk : BulkOperation*, selector : BSON*, document : BSON*, upsert : Bool) : Void
  fun bulk_operation_update_many_with_opts = mongoc_bulk_operation_update_many_with_opts(bulk : BulkOperation*, selector : BSON*, document : BSON*, opts : BSON*, error : BSON_error*) : Bool
  fun bulk_operation_update_one = mongoc_bulk_operation_update_one(bulk : BulkOperation*, selector : BSON*, document : BSON*, upsert : Bool) : Void
  fun bulk_operation_update_one_with_opts = mongoc_bulk_operation_update_one_with_opts(bulk : BulkOperation*, selector : BSON*, document : BSON*, opts : BSON*, error : BSON_error*) : Bool

  ### mongoc_change_stream_t
  # typedef struct _mongoc_change_stream_t mongoc_change_stream_t;
  type ChangeStream = Void

  fun client_watch = mongoc_client_watch(client : Client*, pipeline : BSON*, opts : BSON*) : ChangeStream*
  fun database_watch = mongoc_database_watch(db : Database*, pipeline : BSON*, opts : BSON*) : ChangeStream*
  fun collection_watch = mongoc_collection_watch(coll : Collection*, pipeline : BSON*, opts : BSON*) : ChangeStream*
  fun change_stream_next = mongoc_change_stream_next(stream : ChangeStream*, bson : BSON**) : Bool
  fun change_stream_get_resume_token = mongoc_change_stream_get_resume_token(stream : ChangeStream*) : BSON*
  fun change_stream_error_document = mongoc_change_stream_error_document(stream : ChangeStream*, err : BSON_error*, reply : BSON**) : Bool
  fun change_stream_destroy = mongoc_change_stream_destroy(stream : ChangeStream*) : Void

  ### mongoc_client_encryption_t
  # typedef struct _mongoc_client_encryption_t mongoc_client_encryption_t;
  type ClientEncryption = Void

  fun client_encryption_new = mongoc_client_encryption_new(opts : ClientEncryptionOpts*, error : BSON_error*) : ClientEncryption*
  fun client_encryption_destroy = mongoc_client_encryption_destroy(client_encryption : ClientEncryption*) : Void
  fun client_encryption_create_datakey = mongoc_client_encryption_create_datakey(client_encryption : ClientEncryption*, kms_provider : Int8*, opts : ClientEncryptionDatakeyOpts*, keyid : BSON_value*, error : BSON_error*) : Bool
  fun client_encryption_encrypt = mongoc_client_encryption_encrypt(client_encryption : ClientEncryption*, value : BSON_value*, opts : ClientEncryptionEncryptOpts*, ciphertext : BSON_value*, error : BSON_error*) : Bool
  fun client_encryption_decrypt = mongoc_client_encryption_decrypt(client_encryption : ClientEncryption*, ciphertext : BSON_value*, value : BSON_value*, error : BSON_error*) : Bool

  ### mongoc_client_encryption_datakey_opts_t
  # typedef struct _mongoc_client_encryption_datakey_opts_t mongoc_client_encryption_datakey_opts_t;
  type ClientEncryptionDatakeyOpts = Void

  fun client_encryption_datakey_opts_new = mongoc_client_encryption_datakey_opts_new : ClientEncryptionDatakeyOpts* 
  fun client_encryption_datakey_opts_destroy = mongoc_client_encryption_datakey_opts_destroy(opts : ClientEncryptionDatakeyOpts*) : Void
  fun client_encryption_datakey_opts_set_masterkey = mongoc_client_encryption_datakey_opts_set_masterkey(opts : ClientEncryptionDatakeyOpts*, masterkey : BSON*) : Void
  fun client_encryption_datakey_opts_set_keyaltnames = mongoc_client_encryption_datakey_opts_set_keyaltnames(opts : ClientEncryptionDatakeyOpts*, keyaltnames : Int8**, keyaltnames_count : UInt32) : Void

  ### mongoc_client_encryption_encrypt_opts_t
  # typedef struct _mongoc_client_encryption_encrypt_opts_t mongoc_client_encryption_encrypt_opts_t;
  type ClientEncryptionEncryptOpts = Void

  # mongoc_client_encryption_encrypt_opts_t* mongoc_client_encryption_encrypt_opts_new();
  # void mongoc_client_encryption_encrypt_opts_destroy(mongoc_client_encryption_encrypt_opts_t *opts);
  # void mongoc_client_encryption_encrypt_opts_set_keyid(mongoc_client_encryption_encrypt_opts_t *opts, const bson_value_t *keyid);
  # void mongoc_client_encryption_encrypt_opts_set_keyaltname(mongoc_client_encryption_encrypt_opts_t *opts, const char *keyaltname);
  # void mongoc_client_encryption_encrypt_opts_set_algorithm(mongoc_client_encryption_encrypt_opts_t *opts, const char *algorithm);
  #define MONGOC_AEAD_AES_256_CBC_HMAC_SHA_512_RANDOM "AEAD_AES_256_CBC_HMAC_SHA_512-Random"
  #define MONGOC_AEAD_AES_256_CBC_HMAC_SHA_512_DETERMINISTIC "AEAD_AES_256_CBC_HMAC_SHA_512-Deterministic"

  ### mongoc_client_encryption_opts_t
  # typedef struct _mongoc_client_encryption_opts_t mongoc_client_encryption_opts_t;
  type ClientEncryptionOpts = Void

  # mongoc_client_encryption_opts_t* mongoc_client_encryption_opts_new(void);
  # void mongoc_client_encryption_opts_destroy(mongoc_client_encryption_opts_t *opts);
  # void mongoc_client_encryption_opts_set_keyvault_client(mongoc_client_encryption_opts_t *opts, mongoc_client_t *keyvault_client);
  # void mongoc_client_encryption_opts_set_keyvault_namespace(mongoc_client_encryption_opts_t *opts, const char *db, const char *coll);
  # void mongoc_client_encryption_opts_set_kms_providers(mongoc_client_encryption_opts_t *opts, const bson_t *kms_providers);

  ### mongoc_client_pool_t
  # typedef struct _mongoc_client_pool_t mongoc_client_pool_t
  type ClientPool = Void

  # void mongoc_client_pool_destroy(mongoc_client_pool_t *pool);
  # bool mongoc_client_pool_enable_auto_encryption(mongoc_client_pool_t *pool, mongoc_auto_encryption_opts_t* opts, bson_error_t* error);
  # void mongoc_client_pool_max_size(mongoc_client_pool_t *pool, uint32_t max_pool_size);
  # void mongoc_client_pool_min_size(mongoc_client_pool_t *pool, uint32_t min_pool_size) BSON_GNUC_DEPRECATED;
  # mongoc_client_pool_t* mongoc_client_pool_new(const mongoc_uri_t *uri);
  # mongoc_client_t* mongoc_client_pool_pop(mongoc_client_pool_t *pool);
  # void mongoc_client_pool_push(mongoc_client_pool_t *pool, mongoc_client_t *client);
  # bool mongoc_client_pool_set_apm_callbacks(mongoc_client_pool_t *pool, mongoc_apm_callbacks_t *callbacks, void *context);
  # bool mongoc_client_pool_set_appname(mongoc_client_pool_t *pool, const char *appname)
  # bool mongoc_client_pool_set_error_api(mongoc_client_pool_t *client, int32_t version);
  #ifdef MONGOC_ENABLE_SSL
  # void mongoc_client_pool_set_ssl_opts(mongoc_client_pool_t *pool, const mongoc_ssl_opt_t *opts);
  #endif
  # mongoc_client_t* mongoc_client_pool_try_pop(mongoc_client_pool_t *pool);

  ### mongoc_client_session_t
  type ClientSession = Void

  # bool mongoc_client_session_start_transaction(mongoc_client_session_t *session, const mongoc_transaction_opt_t *opts, bson_error_t *error);
  # bool mongoc_client_session_in_transaction(const mongoc_client_session_t *session);
  # mongoc_transaction_state_t mongoc_client_session_get_transaction_state(const mongoc_client_session_t *session);
  # bool mongoc_client_session_commit_transaction(mongoc_client_session_t *session, bson_t *reply, bson_error_t *error);
  # bool mongoc_client_session_abort_transaction(mongoc_client_session_t *session, bson_error_t *error);
  # void mongoc_client_session_advance_cluster_time(mongoc_client_session_t *session, const bson_t *cluster_time);
  # void mongoc_client_session_advance_operation_time(mongoc_client_session_t *session, uint32_t timestamp, uint32_t increment);
  # bool mongoc_client_session_with_transaction(mongoc_client_session_t *session, mongoc_client_session_with_transaction_cb_t cb, const mongoc_transaction_opt_t *opts, void *ctx, bson_t *reply, bson_error_t *error);
  # bool mongoc_client_session_append(const mongoc_client_session_t *client_session, bson_t *opts, bson_error_t *error);
  # mongoc_client_t* mongoc_client_session_get_client(const mongoc_client_session_t *session);
  # const bson_t* mongoc_client_session_get_cluster_time(const mongoc_client_session_t *session);
  # void mongoc_client_session_get_operation_time(const mongoc_client_session_t *session, uint32_t *timestamp, uint32_t *increment);
  # const mongoc_session_opt_t* mongoc_client_session_get_opts(const mongoc_client_session_t *session);
  # const bson_t* mongoc_client_session_get_lsid(mongoc_client_session_t *session);
  # uint32_t mongoc_client_session_get_server_id(const mongoc_client_session_t *session);
  # void mongoc_client_session_destroy(mongoc_client_session_t *session);

  ### mongoc_client_session_with_transaction_cb_t
  # @ Typedef
  # typedef bool (*mongoc_client_session_with_transaction_cb_t)(mongoc_client_session_t *session, void *ctx, bson_t **reply, bson_error_t *error);
  # @ Function
  # bool mongoc_client_session_with_transaction(mongoc_client_session_t *session, mongoc_client_session_with_transaction_cb_t cb, const mongoc_transaction_opt_t *opts, void *ctx, bson_t *reply, bson_error_t *error);
 
  ### mongoc_client_t
  # typedef struct _mongoc_client_t mongoc_client_t;
  type Client = Void
  # typedef mongoc_stream_t *(*mongoc_stream_initiator_t)(const mongoc_uri_t *uri, const mongoc_host_list_t *host, void *user_data, bson_error_t *error);

  fun client_command = mongoc_client_command(client : Client*, db_name : Int8*, flags : QueryFlags, skip : UInt32, limit : UInt32, batch_size : UInt32, query : BSON*, fields : BSON*, read_prefs : ReadPrefs*) : Cursor*
  fun client_command_simple = mongoc_client_command_simple(client : Client*, db_name : Int8*, command : BSON*, read_prefs : ReadPrefs*, reply : BSON*, error : BSON_error*) : Bool
  fun client_command_simple_with_server_id = mongoc_client_command_simple_with_server_id(client : Client*, db_name : Int8*, command : BSON*, read_prefs : ReadPrefs*, server_id : UInt32, reply : BSON*, error : BSON_error*) : Bool
  fun client_command_with_opts = mongoc_client_command_with_opts(client : Client*, db_name : Int8*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun client_destroy = mongoc_client_destroy(client : Client*) : Void
  fun client_enable_auto_encryption = mongoc_client_enable_auto_encryption(client : Client*, opts : AutoEncryptionOpts* , error : BSON_error*) : Bool
  fun client_find_databases_with_opts = mongoc_client_find_databases_with_opts(client : Client*, opts : BSON*) : Cursor*
  fun client_get_collection = mongoc_client_get_collection(client : Client*, db : Int8*, collection : Int8*) : Collection*
  fun client_get_database = mongoc_client_get_database(client : Client*, name : Int8*) : Database*
  fun client_get_database_names = mongoc_client_get_database_names(client : Client*, error : BSON_error*) : Int8**
  fun client_get_database_names_with_opts = mongoc_client_get_database_names_with_opts(client : Client*, opts : BSON*, error : BSON_error*) : Int8**
  fun client_get_default_database = mongoc_client_get_default_database(client : Client*) : Database*
  fun client_get_gridfs = mongoc_client_get_gridfs(client : Client*, db : Int8*, prefix : Int8*, error : BSON_error*) : Gridfs*
  fun client_get_max_bson_size = mongoc_client_get_max_bson_size(client : Client*) : Int32
  fun client_get_max_message_size = mongoc_client_get_max_message_size(client : Client*) : Int32
  fun client_get_read_concern = mongoc_client_get_read_concern(client : Client*) : ReadConcern*
  fun client_get_read_prefs = mongoc_client_get_read_prefs(client : Client*) : ReadPrefs*
  fun client_get_server_description = mongoc_client_get_server_description(client : Client*, server_id : UInt32) : ServerDescription*
  # fun client_get_server_descriptions = mongoc_client_get_server_descriptions(client : Client*, n : size_t *) : ServerDescription**
  fun client_get_server_status = mongoc_client_get_server_status(client : Client*, read_prefs : ReadPrefs*, reply : BSON*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED
  # fun client_get_uri = mongoc_client_get_uri(client : Client*) : # mongoc_uri_t*
  fun client_get_write_concern = mongoc_client_get_write_concern(client : Client*) : WriteConcern*
  fun client_new = mongoc_client_new(uri_string : Int8*) : Client*
  # fun client_new_from_uri = mongoc_client_new_from_uri(uri : const mongoc_uri_t *) : Client*
  fun client_read_command_with_opts = mongoc_client_read_command_with_opts(client : Client*, db_name : Int8*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun client_read_write_command_with_opts = mongoc_client_read_write_command_with_opts(client : Client*, db_name : Int8*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun client_reset = mongoc_client_reset(client : Client*) : Void
  fun client_select_server = mongoc_client_select_server(client : Client*, for_writes : Bool, prefs : ReadPrefs*, error : BSON_error*) : ServerDescription*
  # fun client_set_apm_callbacks = mongoc_client_set_apm_callbacks(client : Client*, callbacks : ApmCallbacks*, context : Void*) : Bool
  fun client_set_appname = mongoc_client_set_appname(client : Client*, appname : Int8*) : Bool
  fun client_set_error_api = mongoc_client_set_error_api(client : Client*, version : Int32) : Bool
  fun client_set_read_concern = mongoc_client_set_read_concern(client : Client*, read_concern : ReadConcern*) : Void
  fun client_set_read_prefs = mongoc_client_set_read_prefs(client : Client*, read_prefs : ReadPrefs*) : Void
  # #ifdef MONGOC_ENABLE_SSL
  # void mongoc_client_set_ssl_opts(mongoc_client_t *client, const mongoc_ssl_opt_t *opts);
  #endif
  # fun client_set_stream_initiator = mongoc_client_set_stream_initiator(client : Client*, initiator : StreamInitiator, user_data : Void*) : Void
  fun client_set_write_concern = mongoc_client_set_write_concern(client : Client*, write_concern : WriteConcern*) : Void
  fun client_start_session = mongoc_client_start_session(client : Client*, opts : SessionOpt*, error : BSON_error*) : ClientSession*
  fun client_watch = mongoc_client_watch(client : Client*, pipeline : BSON*, opts : BSON*) : ChangeStream*
  fun client_write_command_with_opts = mongoc_client_write_command_with_opts(client : Client*, db_name : Int8*, command : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool

  ### mongoc_collection_t
  # typedef struct _mongoc_collection_t mongoc_collection_t;
  type Collection = Void

  fun collection_aggregate = mongoc_collection_aggregate(collection : Collection*, flags : QueryFlags, pipeline : BSON*, opts : BSON*, read_prefs : ReadPrefs*) : Cursor* # BSON_GNUC_WARN_UNUSED_RESULT
  fun collection_command = mongoc_collection_command(collection : Collection*, flags : QueryFlags, skip : UInt32, limit : UInt32, batch_size : UInt32, command : BSON*, fields : BSON*, read_prefs : ReadPrefs*) : Cursor* # BSON_GNUC_WARN_UNUSED_RESULT
  fun collection_command_simple = mongoc_collection_command_simple(collection : Collection*, command : BSON*, read_prefs : ReadPrefs*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_command_with_opts = mongoc_collection_command_with_opts(collection : Collection*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_copy = mongoc_collection_copy(collection : Collection*) : Collection*
  fun collection_count_documents = mongoc_collection_count_documents(collection : Collection*, filter : BSON*, opts : BSON*, read_prefs : ReadPrefs*, reply : BSON*, error : BSON_error*) : Int64
  fun collection_estimated_document_count = mongoc_collection_estimated_document_count(collection : Collection*, opts : BSON*, read_prefs : ReadPrefs*, reply : BSON*, error : BSON_error*) : Int64
  fun collection_count = mongoc_collection_count(collection : Collection*, flags : QueryFlags, query : BSON*, skip : Int64, limit : Int64, read_prefs : ReadPrefs*, error : BSON_error*) : Int64 # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_count_documents or mongoc_collection_estimated_document_count)
  fun collection_count_with_opts = mongoc_collection_count_with_opts(collection : Collection*, flags : QueryFlags, query : BSON*, skip : Int64, limit : Int64, opts : BSON*, read_prefs : ReadPrefs*, error : BSON_error*) : Int64 # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_count_documents or mongoc_collection_estimated_document_count)
  fun collection_create_bulk_operation = mongoc_collection_create_bulk_operation(collection : Collection*, ordered : Bool, write_concern : WriteConcern*) : BulkOperation* # BSON_GNUC_WARN_UNUSED_RESULT BSON_GNUC_DEPRECATED_FOR(mongoc_collection_create_bulk_operation_with_opts)
  fun collection_create_bulk_operation_with_opts = mongoc_collection_create_bulk_operation_with_opts(collection : Collection*, opts : BSON*) : BulkOperation* # BSON_GNUC_WARN_UNUSED_RESULT
  fun collection_create_index = mongoc_collection_create_index(collection : Collection*, keys : BSON*, opt : IndexOpt*, error : BSON_error*) : Bool
  fun collection_create_index_with_opts = mongoc_collection_create_index_with_opts(collection : Collection*, keys : BSON*, index_opts : IndexOpt*, command_opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_delete = mongoc_collection_delete(collection : Collection*, flags : DeleteFlags, selector : BSON*, write_concern : WriteConcern*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_delete_one or mongoc_collection_delete_many)
  fun collection_delete_many = mongoc_collection_delete_many(collection : Collection*, selector : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_delete_one = mongoc_collection_delete_one(collection : Collection*, selector : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_destroy = mongoc_collection_destroy(collection : Collection*) : Void
  fun collection_drop = mongoc_collection_drop(collection : Collection*, error : BSON_error*) : Bool
  fun collection_drop_index = mongoc_collection_drop_index(collection : Collection*, index_name : Int8*, error : BSON_error*) : Bool
  fun collection_drop_index_with_opts = mongoc_collection_drop_index_with_opts(collection : Collection*, index_name : Int8*, opts : BSON*, error : BSON_error*) : Bool
  fun collection_drop_with_opts = mongoc_collection_drop_with_opts(collection : Collection*, opts : BSON*, error : BSON_error*) : Bool
  fun collection_ensure_index = mongoc_collection_ensure_index(collection : Collection*, keys : BSON*, opt : IndexOpt*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED
  fun collection_find = mongoc_collection_find(collection : Collection*, flags : QueryFlags, skip : UInt32, limit : UInt32, batch_size : UInt32, query : BSON*, fields : BSON*, read_prefs : ReadPrefs*) : Cursor* # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_find_with_opts) BSON_GNUC_WARN_UNUSED_RESULT
  fun collection_find_and_modify = mongoc_collection_find_and_modify(collection : Collection*, query : BSON*, sort : BSON*, update : BSON*, fields : BSON*, _remove : Bool, upsert : Bool, _new : Bool, reply : BSON*, error : BSON_error*) : Bool
  fun collection_find_and_modify_with_opts = mongoc_collection_find_and_modify_with_opts(collection : Collection*, query : BSON*, opts : FindAndModifyOpts*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_find_indexes = mongoc_collection_find_indexes(collection : Collection*, error : BSON_error*) : Cursor* 
  fun collection_find_indexes_with_opts = mongoc_collection_find_indexes_with_opts(collection : Collection*, opts : BSON*) : Cursor*
  fun collection_find_with_opts = mongoc_collection_find_with_opts(collection : Collection*, filter : BSON*, opts : BSON*, read_prefs : ReadPrefs*) : Cursor* # BSON_GNUC_WARN_UNUSED_RESULT
  fun collection_get_last_error = mongoc_collection_get_last_error(collection : Collection*) : BSON*
  fun collection_get_name = mongoc_collection_get_name(collection : Collection*) : Int8*
  fun collection_get_read_concern = mongoc_collection_get_read_concern(collection : Collection*) : ReadConcern*
  fun collection_get_read_prefs = mongoc_collection_get_read_prefs(collection : Collection*) : ReadPrefs*
  fun collection_get_write_concern = mongoc_collection_get_write_concern(collection : Collection*) : WriteConcern*
  fun collection_insert = mongoc_collection_insert(collection : Collection*, flags : InsertFlags, document : BSON*, write_concern : WriteConcern*, error : BSON_error*) : Bool
  fun collection_insert_bulk = mongoc_collection_insert_bulk(collection : Collection*, flags : InsertFlags, documents : BSON**, n_documents : UInt32, write_concern : WriteConcern*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_insert_many)
  # fun collection_insert_many = mongoc_collection_insert_many(collection : Collection*, documents : BSON**, n_documents : size_t, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_insert_one = mongoc_collection_insert_one(collection : Collection*, document : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_keys_to_index_string = mongoc_collection_keys_to_index_string(keys : BSON*) : Int8*
  fun collection_read_command_with_opts = mongoc_collection_read_command_with_opts(collection : Collection*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_read_write_command_with_opts = mongoc_collection_read_write_command_with_opts(collection : Collection*, command : BSON*, read_prefs : ReadPrefs*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_remove = mongoc_collection_remove(collection : Collection*, flags : RemoveFlags, selector : BSON*, write_concern : WriteConcern*, error : BSON_error*) : Bool
  fun collection_rename = mongoc_collection_rename(collection : Collection*, new_db : Int8*, new_name : Int8*, drop_target_before_rename : Bool, error : BSON_error*) : Bool
  fun collection_rename_with_opts = mongoc_collection_rename_with_opts(collection : Collection*, new_db : Int8, new_name : Int8, drop_target_before_rename : Bool, opts : BSON*, error : BSON_error*) : Bool
  fun collection_replace_one = mongoc_collection_replace_one(collection : Collection*, selector : BSON*, replacement : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_save = mongoc_collection_save(collection : Collection*, document : BSON*, write_concern : WriteConcern*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED_FOR(mongoc_collection_insert_one or mongoc_collection_replace_one)
  fun collection_set_read_concern = mongoc_collection_set_read_concern(collection : Collection*, read_concern : ReadConcern*) : Void
  fun collection_set_read_prefs = mongoc_collection_set_read_prefs(collection : Collection*, read_prefs : ReadPrefs*) : Void
  fun collection_set_write_concern = mongoc_collection_set_write_concern(collection : Collection*, write_concern : WriteConcern *) : Void
  fun collection_stats = mongoc_collection_stats(collection : Collection*, options : BSON*, reply : BSON*, error : BSON_error*) : Bool # BSON_GNUC_DEPRECATED
  fun collection_update = mongoc_collection_update(collection : Collection*, flags : UpdateFlags, selector : BSON*, update : BSON*, write_concern : WriteConcern*, error : BSON_error*) : Bool
  fun collection_update_one = mongoc_collection_update_one(collection : Collection*, selector : BSON*, update : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_update_many = mongoc_collection_update_many(collection : Collection*, selector : BSON*, update : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_validate = mongoc_collection_validate(collection : Collection*, options : BSON*, reply : BSON*, error : BSON_error*) : Bool
  fun collection_write_command_with_opts = mongoc_collection_write_command_with_opts(collection : Collection*, command : BSON*, opts : BSON*, reply : BSON*, error : BSON_error*) : Bool

  ### mongoc_cursor_t
  # typedef struct _mongoc_cursor_t mongoc_cursor_t;
  type Cursor = Void

  # mongoc_cursor_t* mongoc_cursor_clone(const mongoc_cursor_t *cursor) BSON_GNUC_WARN_UNUSED_RESULT;
  # const bson_t* mongoc_cursor_current(const mongoc_cursor_t *cursor);
  # void mongoc_cursor_destroy(mongoc_cursor_t *cursor);
  # bool mongoc_cursor_error(mongoc_cursor_t *cursor, bson_error_t *error);
  # bool mongoc_cursor_error_document(mongoc_cursor_t *cursor, bson_error_t *error, const bson_t **reply);
  # uint32_t mongoc_cursor_get_batch_size(const mongoc_cursor_t *cursor);
  # uint32_t mongoc_cursor_get_hint(const mongoc_cursor_t *cursor);
  # void mongoc_cursor_get_host(mongoc_cursor_t *cursor, mongoc_host_list_t *host);
  # int64_t mongoc_cursor_get_id(const mongoc_cursor_t *cursor);
  # int64_t mongoc_cursor_get_limit(mongoc_cursor_t *cursor);
  # uint32_t mongoc_cursor_get_max_await_time_ms(mongoc_cursor_t *cursor);
  # bool mongoc_cursor_is_alive(const mongoc_cursor_t *cursor) BSON_GNUC_DEPRECATED_FOR(mongoc_cursor_more);
  # bool mongoc_cursor_more(mongoc_cursor_t *cursor);
  # mongoc_cursor_t* mongoc_cursor_new_from_command_reply(mongoc_client_t *client, bson_t *reply, uint32_t server_id); BSON_GNUC_DEPRECATED_FOR(mongoc_cursor_new_from_command_reply_with_opts);
  # mongoc_cursor_t* mongoc_cursor_new_from_command_reply_with_opts(mongoc_client_t *client, bson_t *reply, const bson_t *opts);
  # bool mongoc_cursor_next(mongoc_cursor_t *cursor, const bson_t **bson);
  # void mongoc_cursor_set_batch_size(mongoc_cursor_t *cursor, uint32_t batch_size);
  # bool mongoc_cursor_set_hint(mongoc_cursor_t *cursor, uint32_t server_id);
  # bool mongoc_cursor_set_limit(mongoc_cursor_t *cursor, int64_t limit);
  # void mongoc_cursor_set_max_await_time_ms(mongoc_cursor_t *cursor, uint32_t max_await_time_ms);

  ### mongoc_database_t
  # typedef struct _mongoc_database_t mongoc_database_t;
  type Database = Void

  # bool mongoc_database_add_user(mongoc_database_t *database, const char *username, const char *password, const bson_t *roles, const bson_t *custom_data, bson_error_t *error);
  # mongoc_cursor_t* mongoc_database_aggregate(mongoc_database_t *database, const bson_t *pipeline, const bson_t *opts, const mongoc_read_prefs_t *read_prefs) BSON_GNUC_WARN_UNUSED_RESULT;
  # mongoc_cursor_t* mongoc_database_command(mongoc_database_t *database, mongoc_query_flags_t flags, uint32_t skip, uint32_t limit, uint32_t batch_size, const bson_t *command, const bson_t *fields, const mongoc_read_prefs_t *read_prefs);
  # bool mongoc_database_command_simple(mongoc_database_t *database, const bson_t *command, const mongoc_read_prefs_t *read_prefs, bson_t *reply, bson_error_t *error);
  # bool mongoc_database_command_with_opts(mongoc_database_t *database, const bson_t *command, const mongoc_read_prefs_t *read_prefs, const bson_t *opts, bson_t *reply, bson_error_t *error);
  # mongoc_database_t* mongoc_database_copy(mongoc_database_t *database);
  # mongoc_collection_t* mongoc_database_create_collection(mongoc_database_t *database, const char *name, const bson_t *opts, bson_error_t *error);
  # void mongoc_database_destroy(mongoc_database_t *database);
  # bool mongoc_database_drop(mongoc_database_t *database, bson_error_t *error);
  # bool mongoc_database_drop_with_opts(mongoc_database_t *database, const bson_t *opts, bson_error_t *error);
  # mongoc_cursor_t* mongoc_database_find_collections(mongoc_database_t *database, const bson_t *filter, bson_error_t *error) BSON_GNUC_DEPRECATED_FOR(mongoc_database_find_collections_with_opts);
  # mongoc_cursor_t* mongoc_database_find_collections_with_opts(mongoc_database_t *database, const bson_t *opts);
  # mongoc_collection_t* mongoc_database_get_collection(mongoc_database_t *database, const char *name);
  # char** mongoc_database_get_collection_names(mongoc_database_t *database, bson_error_t *error);
  # char** mongoc_database_get_collection_names_with_opts(mongoc_database_t *database, const bson_t *opts, bson_error_t *error);
  # const char* mongoc_database_get_name(mongoc_database_t *database);
  # const mongoc_read_concern_t* mongoc_database_get_read_concern(const mongoc_database_t *database);
  # const mongoc_read_prefs_t* mongoc_database_get_read_prefs(const mongoc_database_t *database);
  # const mongoc_write_concern_t* mongoc_database_get_write_concern(const mongoc_database_t *database);
  # bool mongoc_database_has_collection(mongoc_database_t *database, const char *name, bson_error_t *error);
  # bool mongoc_database_read_command_with_opts(mongoc_database_t *database, const bson_t *command, const mongoc_read_prefs_t *read_prefs, const bson_t *opts, bson_t *reply, bson_error_t *error);
  # bool mongoc_database_read_write_command_with_opts(mongoc_database_t *database, const bson_t *command, const mongoc_read_prefs_t *read_prefs /* UNUSED */, const bson_t *opts, bson_t *reply, bson_error_t *error);
  # bool mongoc_database_remove_all_users(mongoc_database_t *database, bson_error_t *error);
  # bool mongoc_database_remove_user(mongoc_database_t *database, const char *username, bson_error_t *error);
  # void mongoc_database_set_read_concern(mongoc_database_t *database, const mongoc_read_concern_t *read_concern);
  # void mongoc_database_set_read_prefs(mongoc_database_t *database, const mongoc_read_prefs_t *read_prefs);
  # void mongoc_database_set_write_concern(mongoc_database_t *database, const mongoc_write_concern_t *write_concern);
  # mongoc_change_stream_t* mongoc_database_watch(const mongoc_database_t *db, const bson_t *pipeline, const bson_t *opts);
  # bool mongoc_database_write_command_with_opts(mongoc_database_t *database, const bson_t *command, const bson_t *opts, bson_t *reply, bson_error_t *error);

  ### mongoc_delete_flags_t
  enum DeleteFlags
    MONGOC_DELETE_NONE = 0
    MONGOC_DELETE_SINGLE_REMOVE = 1 << 0
  end

  ### mongoc_find_and_modify_opts_t
  type FindAndModifyOpts = Void

  # bool mongoc_find_and_modify_opts_append(mongoc_find_and_modify_opts_t *opts, const bson_t *extra);
  # void mongoc_find_and_modify_opts_destroy(mongoc_find_and_modify_opts_t *find_and_modify_opts);
  # bool mongoc_find_and_modify_opts_get_bypass_document_validation(const mongoc_find_and_modify_opts_t *opts);
  # void mongoc_find_and_modify_opts_get_fields(const mongoc_find_and_modify_opts_t *opts, bson_t *fields);
  # mongoc_find_and_modify_flags_t mongoc_find_and_modify_opts_get_flags(const mongoc_find_and_modify_opts_t *opts);
  # uint32_t mongoc_find_and_modify_opts_get_max_time_ms(const mongoc_find_and_modify_opts_t *opts);
  # void mongoc_find_and_modify_opts_get_sort(const mongoc_find_and_modify_opts_t *opts, bson_t *sort);
  # void mongoc_find_and_modify_opts_get_update(const mongoc_find_and_modify_opts_t *opts, bson_t *update);
  # mongoc_find_and_modify_opts_t* mongoc_find_and_modify_opts_new(void);
  # bool mongoc_find_and_modify_opts_set_bypass_document_validation(mongoc_find_and_modify_opts_t *opts, bool bypass);
  # bool mongoc_find_and_modify_opts_set_fields(mongoc_find_and_modify_opts_t *opts, const bson_t *fields);
  # bool mongoc_find_and_modify_opts_set_flags(mongoc_find_and_modify_opts_t *opts, const mongoc_find_and_modify_flags_t flags);
  # bool mongoc_find_and_modify_opts_set_max_time_ms(mongoc_find_and_modify_opts_t *opts, uint32_t max_time_ms);
  # bool mongoc_find_and_modify_opts_set_sort(mongoc_find_and_modify_opts_t *opts, const bson_t *sort);
  # bool mongoc_find_and_modify_opts_set_update(mongoc_find_and_modify_opts_t *opts, const bson_t *update);

  ### mongoc_gridfs_file_list_t
  # typedef struct _mongoc_gridfs_file_list_t mongoc_gridfs_file_list_t;
  type GridfsFileList = Void

  fun gridfs_file_list_destroy = mongoc_gridfs_file_list_destroy(list : GridfsFileList*) : Void
  fun gridfs_file_list_error = mongoc_gridfs_file_list_error(list : GridfsFileList*, error : BSON_error*) : Bool
  fun gridfs_file_list_next = mongoc_gridfs_file_list_next(list : GridfsFileList*) : GridfsFile*

  ### mongoc_gridfs_file_opt_t
  struct GridfsFileOpt
    md5 : Int8*
    filename : Int8*
    content_type : Int8*
    aliases : BSON*
    metadata : BSON*
    chunk_size : UInt32
  end

  ### mongoc_gridfs_file_t
  # typedef struct _mongoc_gridfs_file_t mongoc_gridfs_file_t;
  type GridfsFile = Void

  # void mongoc_gridfs_file_destroy(mongoc_gridfs_file_t *file);
  # bool mongoc_gridfs_file_error(mongoc_gridfs_file_t *file, bson_error_t *error);
  # const bson_t* mongoc_gridfs_file_get_aliases(mongoc_gridfs_file_t *file);
  # int32_t mongoc_gridfs_file_get_chunk_size(mongoc_gridfs_file_t *file);
  # const char* mongoc_gridfs_file_get_content_type(mongoc_gridfs_file_t *file);
  # const char *mongoc_gridfs_file_get_filename(mongoc_gridfs_file_t *file);
  # const bson_value_t* mongoc_gridfs_file_get_id(mongoc_gridfs_file_t *file);
  # int64_t mongoc_gridfs_file_get_length(mongoc_gridfs_file_t *file);
  # const char* mongoc_gridfs_file_get_md5(mongoc_gridfs_file_t *file);
  # const bson_t* mongoc_gridfs_file_get_metadata(mongoc_gridfs_file_t *file);
  # int64_t mongoc_gridfs_file_get_upload_date(mongoc_gridfs_file_t *file);
  # ssize_t mongoc_gridfs_file_readv(mongoc_gridfs_file_t *file, mongoc_iovec_t *iov, size_t iovcnt, size_t min_bytes, uint32_t timeout_msec);
  # bool mongoc_gridfs_file_remove(mongoc_gridfs_file_t *file, bson_error_t *error);
  # bool mongoc_gridfs_file_save(mongoc_gridfs_file_t *file);
  # int mongoc_gridfs_file_seek(mongoc_gridfs_file_t *file, int64_t delta, int whence);
  # void mongoc_gridfs_file_set_aliases(mongoc_gridfs_file_t *file, const bson_t *bson);
  # void mongoc_gridfs_file_set_content_type(mongoc_gridfs_file_t *file, const char *content_type);
  # void mongoc_gridfs_file_set_filename(mongoc_gridfs_file_t *file, const char *filename);
  # bool mongoc_gridfs_file_set_id(mongoc_gridfs_file_t *file, const bson_value_t *id, bson_error_t error);
  # void mongoc_gridfs_file_set_md5(mongoc_gridfs_file_t *file, const char *md5);
  # void mongoc_gridfs_file_set_metadata(mongoc_gridfs_file_t *file, const bson_t *metadata);
  # uint64_t mongoc_gridfs_file_tell(mongoc_gridfs_file_t *file);
  # ssize_t mongoc_gridfs_file_writev(mongoc_gridfs_file_t *file, const mongoc_iovec_t *iov, size_t iovcnt, uint32_t timeout_msec);
  # mongoc_stream_t* mongoc_stream_gridfs_new(mongoc_gridfs_file_t *file);

  ### mongoc_gridfs_bucket_t
  # typedef struct _mongoc_gridfs_bucket_t mongoc_gridfs_bucket_t;
  type GridfsBucket = Void

  # bool mongoc_gridfs_bucket_abort_upload(mongoc_stream_t *stream);
  # bool mongoc_gridfs_bucket_delete_by_id(mongoc_gridfs_bucket_t *bucket, const bson_value_t *file_id, bson_error_t *error);
  # void mongoc_gridfs_bucket_destroy(mongoc_gridfs_bucket_t *bucket);
  # bool mongoc_gridfs_bucket_download_to_stream(mongoc_gridfs_bucket_t *bucket, const bson_value_t *file_id, mongoc_stream_t *destination, bson_error_t *error);
  # mongoc_cursor_t* mongoc_gridfs_bucket_find(mongoc_gridfs_bucket_t *bucket, const bson_t *filter, const bson_t *opts);
  # mongoc_gridfs_bucket_t* mongoc_gridfs_bucket_new(mongoc_database_t *db, const bson_t *opts, const mongoc_read_prefs_t *read_prefs, bson_error_t* error);
  # mongoc_stream_t* mongoc_gridfs_bucket_open_download_stream(mongoc_gridfs_bucket_t *bucket, const bson_value_t *file_id, bson_error_t *error);
  # mongoc_stream_t* mongoc_gridfs_bucket_open_upload_stream(mongoc_gridfs_bucket_t *bucket, const char *filename, const bson_t *opts, bson_value_t *file_id, bson_error_t *error);
  # mongoc_stream_t* mongoc_gridfs_bucket_open_upload_stream_with_id(mongoc_gridfs_bucket_t *bucket, const bson_value_t *file_id, const char *filename, const bson_t *opts, bson_error_t *error);
  # bool mongoc_gridfs_bucket_stream_error(mongoc_stream_t *stream, bson_error_t *error);
  # bool mongoc_gridfs_bucket_upload_from_stream(mongoc_gridfs_bucket_t *bucket, const char *filename, mongoc_stream_t *source, const bson_t *opts, bson_value_t *file_id, bson_error_t *error);
  # bool mongoc_gridfs_bucket_upload_from_stream_with_id(mongoc_gridfs_bucket_t *bucket, const bson_value_t *file_id, const char *filename, mongoc_stream_t *source, const bson_t *opts, bson_error_t *error);

  ### mongoc_gridfs_t
  # typedef struct _mongoc_gridfs_t mongoc_gridfs_t;
  type Gridfs = Void

  # mongoc_gridfs_file_t* mongoc_gridfs_create_file(mongoc_gridfs_t *gridfs, mongoc_gridfs_file_opt_t *opt);
  # mongoc_gridfs_file_t* mongoc_gridfs_create_file_from_stream(mongoc_gridfs_t *gridfs, mongoc_stream_t *stream, mongoc_gridfs_file_opt_t *opt);
  # void mongoc_gridfs_destroy(mongoc_gridfs_t *gridfs);
  # bool mongoc_gridfs_drop(mongoc_gridfs_t *gridfs, bson_error_t *error);
  # mongoc_gridfs_file_list_t* mongoc_gridfs_find(mongoc_gridfs_t *gridfs, const bson_t *query) BSON_GNUC_DEPRECATED_FOR(mongoc_gridfs_find_with_opts);
  # mongoc_gridfs_file_t* mongoc_gridfs_find_one(mongoc_gridfs_t *gridfs, const bson_t *query, bson_error_t *error) BSON_GNUC_DEPRECATED_FOR (mongoc_gridfs_find_one_with_opts);
  # mongoc_gridfs_file_t* mongoc_gridfs_find_one_by_filename(mongoc_gridfs_t *gridfs, const char *filename, bson_error_t *error);
  # mongoc_gridfs_file_t* mongoc_gridfs_find_one_with_opts(mongoc_gridfs_t *gridfs, const bson_t *filter, const bson_t *opts, bson_error_t *error) BSON_GNUC_WARN_UNUSED_RESULT;
  # mongoc_gridfs_file_list_t* mongoc_gridfs_find_with_opts(mongoc_gridfs_t *gridfs, const bson_t *filter, const bson_t *opts) BSON_GNUC_WARN_UNUSED_RESULT;
  # mongoc_collection_t* mongoc_gridfs_get_chunks(mongoc_gridfs_t *gridfs);
  # mongoc_collection_t* mongoc_gridfs_get_files(mongoc_gridfs_t *gridfs);
  # bool mongoc_gridfs_remove_by_filename(mongoc_gridfs_t *gridfs, const char *filename, bson_error_t *error);

  ### mongoc_host_list_t
  # @ Typedef
  # typedef struct {
  #   mongoc_host_list_t *next;
  #   char host[BSON_HOST_NAME_MAX + 1];
  #   char host_and_port[BSON_HOST_NAME_MAX + 7];
  #   uint16_t port;
  #   int family;
  #   void *padding[4];
  # } mongoc_host_list_t;

  ### mongoc_index_opt_geo_t
  struct IndexOptGeo
    twod_sphere_version : UInt8
    twod_bits_precision : UInt8
    twod_location_min : Float64
    twod_location_max : Float64
    haystack_bucket_size : Float64
    padding : UInt8[32]*
  end
 
  fun index_opt_geo_get_default = mongoc_index_opt_geo_get_default : IndexOptGeo* # BSON_GNUC_PURE
  fun index_opt_geo_init = mongoc_index_opt_geo_init(opt : IndexOptGeo*) : Void 

  ### mongoc_index_opt_t
  type IndexOptStorage = Void

  struct IndexOpt
    is_initialized : Bool
    background : Bool
    unique : Bool 
    name : Int8*
    drop_dups : Bool
    sparse : Bool
    expire_after_seconds : Int32
    v : Int32
    weights : BSON*
    default_language : Int8*
    language_override : Int8*
    geo_options : IndexOptGeo*
    storage_options : IndexOptStorage*
    partial_filter_expression : BSON*
    collation : BSON*
    padding : Void[4]*
  end

  fun index_opt_get_default = mongoc_index_opt_get_default : IndexOpt* # BSON_GNUC_PURE
  fun index_opt_init = mongoc_index_opt_init(opt : IndexOpt*) : Void

  ### mongoc_index_opt_wt_t
  # @ Typedef
  # typedef struct {
  #   mongoc_index_opt_storage_t base;
  #   const char *config_str;
  #   void *padding[8];
  # } mongoc_index_opt_wt_t;
  # @ Function
  # const mongoc_index_opt_wt_t* mongoc_index_opt_wt_get_default(void) BSON_GNUC_PURE;
  # void mongoc_index_opt_wt_init(mongoc_index_opt_wt_t *opt);

  ### mongoc_insert_flags_t
  enum InsertFlags
    MONGOC_INSERT_NONE = 0
    MONGOC_INSERT_CONTINUE_ON_ERROR = 1 << 0
  end
  #define MONGOC_INSERT_NO_VALIDATE (1U << 31)

  ### mongoc_iovec_t
  #ifdef _WIN32
  # typedef struct {
  #   u_long iov_len;
  #   char *iov_base;
  # } mongoc_iovec_t;
  #else
  # typedef struct iovec mongoc_iovec_t;
  #endif

  ### mongoc_matcher_t
  # @ Typedef
  # typedef struct _mongoc_matcher_t mongoc_matcher_t;
  # @ Function
  # void mongoc_matcher_destroy(mongoc_matcher_t *matcher);
  # bool mongoc_matcher_match(const mongoc_matcher_t *matcher, const bson_t *document);
  # mongoc_matcher_t* mongoc_matcher_new(const bson_t *query, bson_error_t *error);

  ### mongoc_query_flags_t
  enum QueryFlags
    MONGOC_QUERY_NONE = 0
    MONGOC_QUERY_TAILABLE_CURSOR = 1 << 1
    MONGOC_QUERY_SLAVE_OK = 1 << 2
    MONGOC_QUERY_OPLOG_REPLAY = 1 << 3
    MONGOC_QUERY_NO_CURSOR_TIMEOUT = 1 << 4
    MONGOC_QUERY_AWAIT_DATA = 1 << 5
    MONGOC_QUERY_EXHAUST = 1 << 6
    MONGOC_QUERY_PARTIAL = 1 << 7
  end

  ### mongoc_rand
  # void mongoc_rand_add(const void *buf, int num, double entropy);
  # void mongoc_rand_seed(const void *buf, int num);
  # int mongoc_rand_status(void);

  ### mongoc_read_concern_t
  type ReadConcern = Void
  # bool mongoc_read_concern_append(mongoc_read_concern_t *read_concern, bson_t *opts);
  # mongoc_read_concern_t* mongoc_read_concern_copy(const mongoc_read_concern_t *read_concern);
  # void mongoc_read_concern_destroy(mongoc_read_concern_t *read_concern);
  # const char* mongoc_read_concern_get_level(const mongoc_read_concern_t *read_concern);
  # bool mongoc_read_concern_is_default(mongoc_read_concern_t *read_concern);
  # mongoc_read_concern_t* mongoc_read_concern_new(void);
  # bool mongoc_read_concern_set_level(mongoc_read_concern_t *read_concern, const char *level);

  ### mongoc_read_mode_t
  # typedef enum {
  #   MONGOC_READ_PRIMARY = (1 << 0),
  #   MONGOC_READ_SECONDARY = (1 << 1),
  #   MONGOC_READ_PRIMARY_PREFERRED = (1 << 2) | MONGOC_READ_PRIMARY,
  #   MONGOC_READ_SECONDARY_PREFERRED = (1 << 2) | MONGOC_READ_SECONDARY,
  #   MONGOC_READ_NEAREST = (1 << 3) | MONGOC_READ_SECONDARY,
  # } mongoc_read_mode_t;

  ### mongoc_read_prefs_t
  type ReadPrefs = Void
  # void mongoc_read_prefs_add_tag(mongoc_read_prefs_t *read_prefs, const bson_t *tag);
  # mongoc_read_prefs_t* mongoc_read_prefs_copy(const mongoc_read_prefs_t *read_prefs);
  # void mongoc_read_prefs_destroy(mongoc_read_prefs_t *read_prefs);
  # int64_t mongoc_read_prefs_get_max_staleness_seconds(const mongoc_read_prefs_t *read_prefs);
  # mongoc_read_mode_t mongoc_read_prefs_get_mode(const mongoc_read_prefs_t *read_prefs);
  # const bson_t* mongoc_read_prefs_get_tags(const mongoc_read_prefs_t *read_prefs);
  # bool mongoc_read_prefs_is_valid(const mongoc_read_prefs_t *read_prefs);
  # mongoc_read_prefs_t* mongoc_read_prefs_new(mongoc_read_mode_t read_mode);
  # void mongoc_read_prefs_set_max_staleness_seconds(mongoc_read_prefs_t *read_prefs, int64_t max_staleness_seconds);
  # void mongoc_read_prefs_set_mode(mongoc_read_prefs_t *read_prefs, mongoc_read_mode_t mode);
  # void mongoc_read_prefs_set_tags(mongoc_read_prefs_t *read_prefs, const bson_t *tags);

  ### mongoc_remove_flags_t
  enum RemoveFlags
    MONGOC_REMOVE_NONE = 0
    MONGOC_REMOVE_SINGLE_REMOVE = 1 << 0
  end

  ### mongoc_reply_flags_t
  enum ReplyFlags
    MONGOC_REPLY_NONE = 0
    MONGOC_REPLY_CURSOR_NOT_FOUND = 1 << 0
    MONGOC_REPLY_QUERY_FAILURE = 1 << 1
    MONGOC_REPLY_SHARD_CONFIG_STALE = 1 << 2
    MONGOC_REPLY_AWAIT_CAPABLE = 1 << 3
  end

  ### mongoc_server_description_t
  # typedef struct _mongoc_server_description_t mongoc_server_description_t
  type ServerDescription = Void

  fun server_description_destroy = mongoc_server_description_destroy(description : ServerDescription*) : Void
  # fun server_description_host = mongoc_server_description_host(description : ServerDescription*) : HostList*
  # fun server_description_id = mongoc_server_description_id(description : ServerDescription_t*) : UInt32
  fun server_description_ismaster = mongoc_server_description_ismaster(description : ServerDescription*) : BSON*
  fun server_description_last_update_time = mongoc_server_description_last_update_time(description : ServerDescription*) : Int64
  fun server_description_new_copy = mongoc_server_description_new_copy(description : ServerDescription*) : ServerDescription*
  fun server_description_round_trip_time = mongoc_server_description_round_trip_time(description : ServerDescription*) : Int64
  fun server_description_type = mongoc_server_description_type(description : ServerDescription*) : Int8*
  # fun server_descriptions_destroy_all = mongoc_server_descriptions_destroy_all(sds : ServerDescription**, n : size_t) : Void

  ### mongoc_session_opt_t
  # typedef struct _mongoc_session_opt_t mongoc_session_opt_t;
  type SessionOpt = Void

  # mongoc_session_opt_t* mongoc_session_opts_new(void);
  # bool mongoc_session_opts_get_causal_consistency(const mongoc_session_opt_t *opts);
  # void mongoc_session_opts_set_causal_consistency(mongoc_session_opt_t *opts, bool causal_consistency);
  # const mongoc_transaction_opt_t* mongoc_session_opts_get_default_transaction_opts(const mongoc_session_opt_t *opts);
  # void mongoc_session_opts_set_default_transaction_opts(mongoc_session_opt_t *opts, const mongoc_transaction_opt_t *txn_opts);
  # mongoc_transaction_opt_t* mongoc_session_opts_get_transaction_opts(const mongoc_client_session_t *session);
  # mongoc_session_opt_t* mongoc_session_opts_clone(const mongoc_session_opt_t *opts);
  # void mongoc_session_opts_destroy(mongoc_session_opt_t *opts);

  ### mongoc_socket_t
  # @ Typedef
  # typedef struct _mongoc_socket_t mongoc_socket_t
  # @ Function
  # mongoc_socket_t* mongoc_socket_accept(mongoc_socket_t *sock, int64_t expire_at);
  # int mongoc_socket_bind(mongoc_socket_t *sock, const struct sockaddr *addr, mongoc_socklen_t addrlen);
  # int mongoc_socket_close(mongoc_socket_t *socket);
  # int mongoc_socket_connect(mongoc_socket_t *sock, const struct sockaddr *addr, mongoc_socklen_t addrlen, int64_t expire_at);
  # void mongoc_socket_destroy(mongoc_socket_t *sock);
  # int mongoc_socket_errno(mongoc_socket_t *sock);
  # char* mongoc_socket_getnameinfo(mongoc_socket_t *sock);
  # int mongoc_socket_getsockname(mongoc_socket_t *sock, struct sockaddr *addr, mongoc_socklen_t *addrlen);
  # int mongoc_socket_listen(mongoc_socket_t *sock, unsigned int backlog);
  # mongoc_socket_t* mongoc_socket_new(int domain, int type, int protocol);
  # ssize_t mongoc_socket_recv(mongoc_socket_t *sock, void *buf, size_t buflen, int flags, int64_t expire_at);
  # ssize_t mongoc_socket_send(mongoc_socket_t *sock, const void *buf, size_t buflen, int64_t expire_at);
  # ssize_t mongoc_socket_sendv(mongoc_socket_t *sock, mongoc_iovec_t *iov, size_t iovcnt, int64_t expire_at);
  # int mongoc_socket_setsockopt(mongoc_socket_t *sock, int level, int optname, const void *optval, mongoc_socklen_t optlen);

  ### mongoc_ssl_opt_t
  # @ Typedef
  # typedef struct {
  #   const char *pem_file;
  #   const char *pem_pwd;
  #   const char *ca_file;
  #   const char *ca_dir;
  #   const char *crl_file;
  #   bool weak_cert_validation;
  #   bool allow_invalid_hostname;
  #   void *padding[7];
  # } mongoc_ssl_opt_t;
  # @ Function
  # const mongoc_ssl_opt_t* mongoc_ssl_opt_get_default(void) BSON_GNUC_PURE;

  ### mongoc_stream_buffered_t
  # @ Typedef
  # typedef struct _mongoc_stream_buffered_t mongoc_stream_buffered_t;
  # @ Function
  # mongoc_stream_t* mongoc_stream_buffered_new(mongoc_stream_t *base_stream, size_t buffer_size);
  # void mongoc_stream_destroy(mongoc_stream_t *stream);

  ### mongoc_stream_file_t
  # @ Typedef
  # typedef struct _mongoc_stream_file_t mongoc_stream_file_t
  # @ Function
  # int mongoc_stream_file_get_fd(mongoc_stream_file_t *stream);
  # mongoc_stream_t* mongoc_stream_file_new(int fd);
  # mongoc_stream_t* mongoc_stream_file_new_for_path(const char *path, int flags, int mode);

  ### mongoc_stream_socket_t
  # @ Typedef
  # typedef struct _mongoc_stream_socket_t mongoc_stream_socket_t
  # @ Function
  # mongoc_socket_t* mongoc_stream_socket_get_socket(mongoc_stream_socket_t *stream);
  # mongoc_stream_t* mongoc_stream_socket_new(mongoc_socket_t *socket);

  ### mongoc_stream_t
  # @ Typedef
  # typedef struct _mongoc_stream_t mongoc_stream_t
  # @ Function
  # mongoc_stream_t* mongoc_stream_buffered_new(mongoc_stream_t *base_stream, size_t buffer_size);
  # int mongoc_stream_close(mongoc_stream_t *stream);
  # int mongoc_stream_cork(mongoc_stream_t *stream);
  # void mongoc_stream_destroy(mongoc_stream_t *stream);
  # int mongoc_stream_flush(mongoc_stream_t *stream);
  # mongoc_stream_t* mongoc_stream_get_base_stream(mongoc_stream_t *stream);
  # ssize_t mongoc_stream_read(mongoc_stream_t *stream, void *buf, size_t count, size_t min_bytes, int32_t timeout_msec);
  # ssize_t mongoc_stream_readv(mongoc_stream_t *stream, mongoc_iovec_t *iov, size_t iovcnt, size_t min_bytes, int32_t timeout_msec);
  # int mongoc_stream_setsockopt(mongoc_stream_t *stream, int level, int optname, void *optval, mongoc_socklen_t optlen);
  # bool mongoc_stream_should_retry(mongoc_stream_t *stream);
  # bool mongoc_stream_timed_out(mongoc_stream_t *stream);
  # int mongoc_stream_uncork(mongoc_stream_t *stream);
  # ssize_t mongoc_stream_write(mongoc_stream_t *stream, void *buf, size_t count, int32_t timeout_msec);
  # ssize_t mongoc_stream_writev(mongoc_stream_t *stream, mongoc_iovec_t *iov, size_t iovcnt, int32_t timeout_msec);

  ### mongoc_stream_tls_t
  # typedef struct _mongoc_stream_tls_t mongoc_stream_tls_t

  ### mongoc_topology_description_t
  # @ Typedef
  # typedef struct _mongoc_topology_description_t mongoc_topology_description_t;
  # @ Function
  # mongoc_server_description_t** mongoc_topology_description_get_servers(const mongoc_topology_description_t *td, size_t *n);
  # bool mongoc_topology_description_has_readable_server(mongoc_topology_description_t *td, const mongoc_read_prefs_t *prefs);
  # bool mongoc_topology_description_has_writable_server(mongoc_topology_description_t *td);
  # const char* mongoc_topology_description_type(const mongoc_topology_description_t *td);

  ### mongoc_transaction_opt_t
  # @ Typedef
  # typedef struct _mongoc_transaction_opt_t mongoc_transaction_opt_t;
  # @ Function
  # mongoc_transaction_opt_t* mongoc_transaction_opts_new(void);
  # const mongoc_read_concern_t* mongoc_transaction_opts_get_read_concern(const mongoc_transaction_opt_t *opts);
  # void mongoc_transaction_opts_set_read_concern(mongoc_transaction_opt_t *opts, const mongoc_read_concern_t *read_concern);
  # const mongoc_write_concern_t* mongoc_transaction_opts_get_write_concern(const mongoc_transaction_opt_t *opts);
  # void mongoc_transaction_opts_set_write_concern(mongoc_transaction_opt_t *opts, const mongoc_write_concern_t *write_concern);
  # const mongoc_read_prefs_t* mongoc_transaction_opts_get_read_prefs(const mongoc_transaction_opt_t *opts);
  # void mongoc_transaction_opts_set_read_prefs(mongoc_transaction_opt_t *opts, const mongoc_read_prefs_t *read_prefs);
  # int64_t mongoc_transaction_opts_get_max_commit_time_ms(const mongoc_transaction_opt_t *opts);
  # void mongoc_transaction_opts_set_max_commit_time_ms(mongoc_transaction_opt_t *opts, int64_t max_commit_time_ms);
  # mongoc_transaction_opt_t* mongoc_transaction_opts_clone(const mongoc_transaction_opt_t *opts);
  # void mongoc_transaction_opts_destroy(mongoc_transaction_opt_t *opts);

  ### mongoc_transaction_state_t
  # typedef enum {
  #   MONGOC_TRANSACTION_NONE = 0,
  #   MONGOC_TRANSACTION_STARTING = 1,
  #   MONGOC_TRANSACTION_IN_PROGRESS = 2,
  #   MONGOC_TRANSACTION_COMMITTED = 3,
  #   MONGOC_TRANSACTION_ABORTED = 4,
  # } mongoc_transaction_state_t;

  ### mongoc_update_flags_t
  enum UpdateFlags
    MONGOC_UPDATE_NONE = 0
    MONGOC_UPDATE_UPSERT = 1 << 0
    MONGOC_UPDATE_MULTI_UPDATE = 1 << 1
  end
  #define MONGOC_UPDATE_NO_VALIDATE (1U << 31)

  ### mongoc_uri_t
  # typedef struct _mongoc_uri_t mongoc_uri_t;
  # source : http://mongoc.org/libmongoc/1.16.2/mongoc_uri_t.html

  ### Version Checks
  # source : http://mongoc.org/libmongoc/1.16.2/mongoc_version.html

  ### mongoc_write_concern_t
  type WriteConcern = Void
  # source : http://mongoc.org/libmongoc/1.16.2/mongoc_write_concern_t.html
end