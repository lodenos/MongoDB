@[Link(ldflags: "-lmongoc-1.0")]
lib LibMongoc
  type SizeT = UInt64
  type SSizeT = Int64
  # bson_subtype_t to Subtype
  # bson_iter_t
  # bson_error_t
  # bson_decimal128_t
  # bson_value_t 
  # bson_t
  fun append_array = bson_append_array(bson : BSON*, key : UInt8*, key_length : Int32, array : BSON*) : Bool
  fun append_array_begin = bson_append_array_begin(bson : BSON*, key : UInt8*, key_length : Int32, child : BSON*) : Bool
  fun append_array_end = bson_append_array_end(bson : BSON*, child : BSON*) : Bool
  fun append_binary = bson_append_binary(bson : BSON*, key : UInt32*, key_length : Int32, subtype : Subtype, binary : UInt8*, length : UInt32) : Bool
  fun append_bool = bson_append_bool(bson : BSON*, key : UInt8*, key_length : Int32, value : Bool) : Bool
  fun append_code = bson_append_code(bson : BSON*, key : UInt8*, key_length : Int32, javascript : UInt8*) : Bool
  fun append_code_with_scope = bson_append_code_with_scope(bson : BSON*, key : UInt8*, key_length : Int32, javascript : UInt8, scope : BSON*) : Bool
  fun append_date_time = bson_append_date_time(bson : BSON*, key : UInt8*, key_length : Int32, value : Int64) : Bool
  fun append_dbpointer = bson_append_dbpointer(bson : BSON*, key : UInt8*, key_length : Int32, collection : UInt8*, oid : Oid*) : Bool
  fun append_decimal128 = bson_append_decimal128(bson : BSON*, key : UInt8*, key_length : Int32, value : Decimal128*) : Bool
  fun append_document = bson_append_document(bson : BSON*, key : UInt8*, key_length : Int32, value : BSON*) : Bool
  fun append_document_begin = bson_append_document_begin(bson : BSON*, key : UInt8*, key_length : Int32, child : BSON*) : Bool
  fun append_document_end = bson_append_document_end(bson : BSON*, child : BSON*) : Bool
  fun append_double = bson_append_double(bson : BSON*, key : UInt8*, key_length : Int32, value : Double) : Bool
  fun append_int32 = bson_append_int32(bson : BSON*, key : UInt8*, key_length : Int32, value : Int32) : Bool
  fun append_int64 = bson_append_int64(bson : BSON*, key : UInt8*, key_length : Int32, value : Int64) : Bool
  fun append_iter = bson_append_iter(bson : BSON*, key : UInt8*, key_length : Int32, iter : Iter*) : Bool
  fun append_maxkey = bson_append_maxkey(bson : BSON*, key : UInt8*, key_length : Int32) : Bool
  fun append_minkey = bson_append_minkey(bson : BSON*, key : UInt8*, key_length : Int32) : Bool
  fun append_now_utc = bson_append_now_utc(bson : BSON*, key : UInt8*, key_length : Int32) : Bool
  fun append_null = bson_append_null(bson : BSON*, key : UInt8*, key_length : Int32) : Bool
  fun append_oid = bson_append_oid(bson : BSON*, key : UInt8*, key_length : Int32, oid : Oid*) : Bool
  fun append_regex = bson_append_regex(bson : BSON*, key : UInt8*, key_length : Int32, regex : UInt8*, options : UInt8*) : Bool
  fun append_regex_w_len = bson_append_regex_w_len(bson : BSON*, key : UInt8*, key_length : Int32, regex : UInt8*, regex_length : Int32, options : UInt32*) : Bool
  fun append_symbol = bson_append_symbol(bson : BSON*, key : UInt8*, key_length : Int32, value : UInt8*, length : Int32) : Bool
  # fun append_time = bson_append_time_t(bson : BSON*, key : UInt8*, key_length : Int32, value : time_t ) : Bool
  fun append_timestamp = bson_append_timestamp(bson : BSON*, key : UInt8*, key_length : Int32, timestamp : UInt32, increment : UInt32) : Bool
  # fun append_timeval = bson_append_timeval(bson : BSON*, key : UInt8*, key_length : Int32, struct timeval *value) : Bool
  fun append_undefined = bson_append_undefined(bson : BSON*, key : UInt8*, key_length : Int32) : Bool
  fun append_utf8 = bson_append_utf8(bson : BSON*, key : UInt8*, key_length : Int32, value : UInt8*, length : Int32) : Bool
  fun append_value = bson_append_value(bson : BSON*, key : UInt8*, key_length : Int32, value : Value*) : Bool
  fun array_as_json = bson_array_as_json(bson : BSON*, length : SizeT*) : UInt32*
  fun as_canonical_extended_json = bson_as_canonical_extended_json(bson : BSON*, length : SizeT*) : UInt8*
  fun as_json = bson_as_json(bson : BSON*, length : SizeT*) : UInt32*
  fun as_relaxed_extended_json = bson_as_relaxed_extended_json(bson : BSON*, length : SizeT*) : UInt8*
  fun compare = bson_compare(bson : BSON*, other : BSON*) : Int32
  fun concat = bson_concat(dst : BSON*, src : BSON*) : Bool
  fun copy = bson_copy(bson : BSON*) : BSON*
  fun copy_to = bson_copy_to(src : BSON *, dst : BSON*) : Void
  # fun copy_to_excluding = bson_copy_to_excluding(src : bson_t*, dst : bson_t*, first_exclude : const char*, ...) : void # BSON_GNUC_NULL_TERMINATED BSON_GNUC_DEPRECATED_FOR (bson_copy_to_excluding_noinit)
  # fun copy_to_excluding_noinit = bson_copy_to_excluding_noinit(const bson_t *src, bson_t *dst, const char *first_exclude, ...) : void # BSON_GNUC_NULL_TERMINATED;
  # fun copy_to_excluding_noinit_va = void bson_copy_to_excluding_noinit_va(const bson_t *src, bson_t *dst, const char *first_exclude, va_list args);
  fun count_keys = bson_count_keys(bson : BSON*) : UInt32
  fun destroy = bson_destroy(bson : BSON*) : Void
  fun destroy_with_steal = bson_destroy_with_steal(bson : BSON*, steal : Bool, length : UInt32*) : UInt8*
  fun equal = bson_equal(bson : BSON*, other : BSON*) : Bool
  fun get_data = bson_get_data(bson : BSON*) : UInt8*
  fun has_field = bson_has_field(bson : BSON*, key : UInt8*) : Bool
  fun init = bson_init(bson : BSON*) : Void
  # fun init_from_json = bson_init_from_json(bson : BSON*, data : UInt8*, len : SSizeT, error : bson_error_t *) : Bool
  fun init_static = bson_init_static(bson : BSON*, data : UInt8*, length : SizeT) : Bool
  fun new_ptr = bson_new : BSON* 
  # fun new_from_buffer = bson_new_from_buffer(buf : UInt8**, buf_len : SizeT*, realloc_func : bson_realloc_func, realloc_func_ctx : Void*) : BSON* 
  fun new_from_data = bson_new_from_data(data : UInt8*, length : SizeT) : BSON*
  # fun new_from_json = bson_new_from_json(data : UInt8*, len : SSizeT, error : bson_error_t*) : BSON*
  fun reinit = bson_reinit(bson : BSON*) : Void
  fun reserve_buffer = bson_reserve_buffer(bson : BSON*, size : UInt32) : UInt8*
  fun sized_new = bson_sized_new(size : SizeT) : BSON* 
  fun steal = bson_steal(dst : BSON*, src : BSON*) : Bool
  fun validate = bson_validate(bson : BSON*, flags : ValidateFlags, offset : SizeT*) : Bool

  enum ValidateFlags
    VALIDATE_NONE = 0
    VALIDATE_UTF8 = 1 << 0
    VALIDATE_DOLLAR_KEYS = 1 << 1
    VALIDATE_DOT_KEYS = 1 << 2
    VALIDATE_UTF8_ALLOW_NULL = 1 << 3
    VALIDATE_EMPTY_KEYS = 1 << 4
  end

  fun validate_with_error = bson_validate_with_error(bson : BSON*, flags : ValidateFlags, error : Error*) : Bool

  # bson_context_t

  fun context_destroy = bson_context_destroy(context : Context*) : Void
  fun context_get_default = bson_context_get_default : Context*
  fun context_new = bson_context_new(flags : ContextFlags) : Context* 

  # bson_decimal128_t

  fun decimal128_from_string = bson_decimal128_from_string(string : UInt8*, dec : Decimal128*) : Bool
  fun decimal128_from_string_w_len = bson_decimal128_from_string_w_len(string : UInt8*, len : Int32, dec : Decimal128*) : Bool
  fun decimal128_to_string = bson_decimal128_to_string(dec : Decimal128*, str : UInt8*) : Void

  # bson_error_t

  fun set_error = bson_set_error(error : Error*, domain : UInt32, code : UInt32, format : UInt8*, ...) : Void # BSON_GNUC_PRINTF (4, 5);
  fun strerror_r = bson_strerror_r(err_code : Int32, buf : UInt8*, buflen : SizeT) : UInt32*

  # bson_iter_t

  fun iter_array = bson_iter_array(iter : Iter*, array_len : UInt32*, array : UInt8**) : Void
  fun iter_as_bool = bson_iter_as_bool(iter : Iter*) : Bool
  fun iter_as_double = bson_iter_as_double(iter : Iter*) : Bool
  fun iter_as_int64 = bson_iter_as_int64(iter : Iter*) : Int64
  fun iter_binary = bson_iter_binary(iter : Iter*, subtype : Subtype*, binary_len : UInt32*, binary : UInt8**) : Void
  fun iter_bool = bson_iter_bool(iter : Iter*) : Bool
  fun iter_code = bson_iter_code(iter : Iter*, length : UInt32*) : UInt8*
  fun iter_codewscope = bson_iter_codewscope(iter : Iter*, length : UInt32*, scope_len : UInt32*, scope : UInt8**) : UInt8*
  fun iter_date_time = bson_iter_date_time(iter : Iter*) : Int64
  fun iter_dbpointer = bson_iter_dbpointer(iter : Iter*, collection_len : UInt32*, collection : UInt8**, oid : Oid**) : Void
  fun iter_decimal128 = bson_iter_decimal128(iter : Iter*, dec : Decimal128*) : Bool # IN, OUT
  fun iter_document = bson_iter_document(iter : Iter*, document_len : UInt32*, document : UInt8**) : Void
  fun iter_double = bson_iter_double(iter : Iter*) : Double
  fun iter_dup_utf8 = bson_iter_dup_utf8(iter : Iter*, length : UInt32*) : UInt32*
  fun iter_find = bson_iter_find(iter : Iter*, key : UInt8*) : Bool
  fun iter_find_case = bson_iter_find_case(iter : Iter*, key : UInt8*) : Bool
  fun iter_find_descendant = bson_iter_find_descendant(iter : Iter*, dotkey : UInt8*, descendant : Iter*) : Bool
  fun iter_find_w_len = bson_iter_find_w_len(iter : Iter*, key : UInt8*, keylen : Int32) : Bool
  fun iter_init = bson_iter_init(iter : Iter*, bson : BSON*) : Bool
  fun iter_init_find = bson_iter_init_find(iter : Iter*, bson : BSON*, key : UInt8*) : Bool
  fun iter_init_find_case = bson_iter_init_find_case(iter : Iter*, bson : BSON*, key : UInt8*) : Bool
  fun iter_init_find_w_len = bson_iter_init_find_w_len(iter : Iter*, bson : BSON*, key : UInt8*, keylen : Int32) : Bool
  fun iter_init_from_data = bson_iter_init_from_data(iter : Iter*, data : UInt8*, length : SizeT) : Bool
  fun iter_init_from_data_at_offset = bson_iter_init_from_data_at_offset(iter : Iter*, data : UInt8*, length : SizeT, offset : UInt32, keylen : UInt32) : Bool
  fun iter_int32 = bson_iter_int32(iter : Iter*) : Int32
  fun iter_int64 = bson_iter_int64(iter : Iter*) : Int64
  fun iter_key = bson_iter_key(iter : Iter*) : UInt8*
  fun iter_key_len = bson_iter_key_len(iter : Iter*) : UInt32
  fun iter_next = bson_iter_next(iter : Iter*) : Bool
  fun iter_offset = bson_iter_offset(iter : Iter*) : UInt32
  fun iter_oid = bson_iter_oid(iter : Iter*) : Oid*
  fun iter_overwrite_bool = bson_iter_overwrite_bool(iter : Iter*, value : Bool) : Void
  fun iter_overwrite_date_time = bson_iter_overwrite_date_time(iter : Iter*, value : Int64) : Void
  fun iter_overwrite_decimal128 = bson_iter_overwrite_decimal128(iter : Iter*, value : Decimal128*) : Bool
  fun iter_overwrite_double = bson_iter_overwrite_double(iter : Iter*, value : Float64) : Void
  fun iter_overwrite_int32 = bson_iter_overwrite_int32(iter : Iter*, value : Int32) : Void
  fun iter_overwrite_int64 = bson_iter_overwrite_int64(iter : Iter*, value : Int64) : Void
  fun iter_overwrite_oid = bson_iter_overwrite_oid(iter : Iter*, value : Oid*) : Void
  fun iter_overwrite_timestamp = bson_iter_overwrite_timestamp(iter : Iter*, timestamp : UInt32, increment : UInt32) : Void
  fun iter_recurse = bson_iter_recurse(iter : Iter*, child : Iter*) : Bool
  fun iter_regex = bson_iter_regex(iter : Iter*, options : UInt8**) : UInt8*
  fun iter_symbol = bson_iter_symbol(iter : Iter*, length : UInt32*) : UInt8*
  # fun iter_time = bson_iter_time_t(iter : Iter*) : time_t
  fun iter_timestamp = bson_iter_timestamp(iter : Iter*, timestamp : UInt32*, increment : UInt32*) : Void
  # fun iter_timeval = bson_iter_timeval(iter : Iter*, struct timeval *tv) : void

  enum Type 
    EOD = 0x00
    DOUBLE = 0x01
    UTF8 = 0x02
    DOCUMENT = 0x03
    ARRAY = 0x04
    BINARY = 0x05
    UNDEFINED = 0x06
    OID = 0x07
    BOOL = 0x08
    DATE_TIME = 0x09
    NULL = 0x0A
    REGEX = 0x0B
    DBPOINTER = 0x0C
    CODE = 0x0D
    SYMBOL = 0x0E
    CODEWSCOPE = 0x0F
    INT32 = 0x10
    TIMESTAMP = 0x11
    INT64 = 0x12
    MAXKEY = 0x7F
    MINKEY = 0xFF
  end

  fun iter_type = bson_iter_type(iter : Iter*) : Type
  fun iter_utf8 = bson_iter_utf8(iter : Iter*, length : UInt32*) : UInt8*
  fun iter_value = bson_iter_value(iter : Iter*) : Value*
  fun iter_visit_all = bson_iter_visit_all(iter : Iter*, visitor : Visitor*, data : Void*) : Bool

  # bson_json_reader_t

  fun json_data_reader_ingest = bson_json_data_reader_ingest(reader : JsonReader*, data : UInt8*, len : SizeT) : Void
  fun json_data_reader_new = bson_json_data_reader_new(allow_multiple : Bool, size : SizeT) : JsonReader*
  fun json_reader_destroy = bson_json_reader_destroy(reader : JsonReader*) : Void
  fun json_reader_new = bson_json_reader_new(data : Void*, cb : JsonReaderCb, dcb : JsonDestroyCb, allow_multiple : Bool, buf_size : SizeT) : JsonReader*
  fun json_reader_new_from_fd = bson_json_reader_new_from_fd(fd : Int32, close_on_destroy : Bool) : JsonReader*
  fun json_reader_new_from_file = bson_json_reader_new_from_file(filename : UInt8*, error : Error*) : JsonReader*
  fun json_reader_read = bson_json_reader_read(reader : JsonReader*, bson : BSON*, error : Error*) : Int32

  # bson_md5_t

  fun md5_append = bson_md5_append(pms : MD5*, data : UInt8*, nbytes : UInt32) : Void # BSON_GNUC_DEPRECATED;
  fun md5_finish = bson_md5_finish(pms : MD5*, digest : UInt8[16]) : Void # BSON_GNUC_DEPRECATED;
  fun md5_init = bson_md5_init(pms : MD5*) : Void # BSON_GNUC_DEPRECATED;

  # bson_oid_t

  fun oid_compare = bson_oid_compare(oid1 : Oid*, oid2 : Oid*) : Int32
  fun oid_copy = bson_oid_copy(src : Oid*, dst : Oid*) : Void
  fun oid_equal = bson_oid_equal(oid1 : Oid*, oid2 : Oid*) : Bool
  # fun oid_get_time = bson_oid_get_time_t(const bson_oid_t *oid) : time_t
  fun oid_hash = bson_oid_hash(oid : Oid*) : UInt32
  fun oid_init = bson_oid_init(oid : Oid*, context : Context*) : Void
  fun oid_init_from_data = bson_oid_init_from_data(oid : Oid*, data : UInt8*) : Void
  fun oid_init_from_string = bson_oid_init_from_string(oid : Oid*, str : UInt8*) : Void
  fun oid_init_sequence = bson_oid_init_sequence(oid : Oid*, context : Context*) : Void # BSON_GNUC_DEPRECATED
  fun oid_is_valid = bson_oid_is_valid(str : UInt8*, length : SizeT) : Bool
  fun oid_to_string = bson_oid_to_string(oid : Oid*, str : UInt8[25]) : Void

  # bson_reader_t

  fun reader_destroy = bson_reader_destroy(reader : Reader*) : Void
  # typedef void (*bson_reader_destroy_func_t)(void *handle);
  fun reader_new_from_data = bson_reader_new_from_data(data : UInt8*, length : SizeT) : Reader*
  fun reader_new_from_fd = bson_reader_new_from_fd(fd : Int32, close_on_destroy : Bool) : Reader*
  fun reader_new_from_file = bson_reader_new_from_file(path : UInt8*, error : Error*) : Reader*
  fun reader_new_from_handle = bson_reader_new_from_handle(handle : Void*, rf : ReaderReadFunc, df : ReaderDestroyFunc) : Reader*
  fun reader_read = bson_reader_read(reader : Reader*, reached_eof : Bool*) : BSON*
  # typedef ssize_t (*bson_reader_read_func_t)(void *handle, void *buf, size_t count);
  fun reader_reset = bson_reader_reset(reader : Reader*) : Void
  fun reader_set_destroy_func = bson_reader_set_destroy_func(reader : Reader*, func : ReaderDestroyFunc) : Void
  fun reader_set_read_func = bson_reader_set_read_func(reader : Reader*, func : ReaderReadFunc) : Void
  # fun reader_tell = bson_reader_tell(bson_reader_t *reader) : off_t

  # Character and String Routines

  fun ascii_strtoll = bson_ascii_strtoll(str : UInt8*, endptr : UInt8**, base : Int32) : Int64
  fun isspace = bson_isspace(c : Int32) : Bool
  fun snprintf = bson_snprintf(str : UInt8*, size : SizeT, format : UInt8*, ...) : Int32 # BSON_GNUC_PRINTF (3, 4);
  fun strcasecmp = bson_strcasecmp(s1 : UInt8*, s2 : UInt8*) : Int32
  fun strdup = bson_strdup(str : UInt8*) : UInt8*
  fun strdup_printf = bson_strdup_printf(format : UInt8*, ...) : UInt8* # BSON_GNUC_PRINTF (1, 2);
  # fun strdupv_printf = bson_strdupv_printf(format : UInt8*, va_list args) : char* # BSON_GNUC_PRINTF (1, 0);
  fun strfreev = bson_strfreev(strv : UInt8**) : Void
  fun strncpy = bson_strncpy(dst : UInt8*, src : UInt8*, size : SizeT) : Void
  fun strndup = bson_strndup(str : UInt8*, n_bytes : SizeT) : UInt8*
  fun strnlen = bson_strnlen(const char *s, size_t maxlen) : SizeT
  fun uint32_to_string = bson_uint32_to_string(uint32_t value, const char **strptr, char *str, size_t size) : size_t
  fun utf8_escape_for_json = bson_utf8_escape_for_json(const char *utf8, ssize_t utf8_len) : char*
  fun utf8_from_unichar = bson_utf8_from_unichar(bson_unichar_t unichar, char utf8[6], uint32_t *len) : void
  fun utf8_get_char = bson_utf8_get_char(const char *utf8) : bson_unichar_t
  fun utf8_next_char = bson_utf8_next_char(const char *utf8) : const char*
  fun utf8_validate = bson_utf8_validate(const char *utf8, size_t utf8_len, bool allow_null) : bool
  fun vsnprintf = bson_vsnprintf(char *str, size_t size, const char *format, va_list ap) : int # BSON_GNUC_PRINTF (3, 0)

  # bson_string_t

  fun string_append = bson_string_append(bson_string_t *string, const char *str) : void
  fun string_append_c = bson_string_append_c(bson_string_t *string, char str) : void
  fun string_append_printf = bson_string_append_printf(bson_string_t *string, const char *format, ...) : void # BSON_GNUC_PRINTF (2, 3);
  fun string_append_unichar = bson_string_append_unichar(bson_string_t *string, bson_unichar_t unichar) : void
  fun string_free = bson_string_free(bson_string_t *string, bool free_segment) : char*
  fun string_new = bson_string_new(const char *str) : bson_string_t*
  fun string_truncate = bson_string_truncate(bson_string_t *string, uint32_t len) : void

  enum Subtype
    BINARY = 0x00
    FUNCTION = 0x01
    BINARY_DEPRECATED = 0x02
    UUID_DEPRECATED = 0x03
    UUID = 0x04
    MD5 = 0x05
    USER = 0x80
  end

#  typedef uint32_t bson_unichar_t;

  struct Value
    value_type : Type
    union Value
      v_oid : Oid
      v_int64 : Int64
      v_int32 : Int32
      v_int8 : Int8
      v_double : Float64
      v_bool : Bool
      v_datetime : Int64
      struct Timestamp
        timestamp : UInt32
        increment : UInt32
      end
      struct Utf8
        len : UInt32
        str : UInt8*
      end
      struct Doc
        data_len : UInt32
        data : UInt8*
      end
      struct Binary
        data_len : UInt32
        data : UInt8*
        subtype : Subtype
      end
      struct Regex
        regex : char*
        options : char*
      end
      struct DBpointer
        collection : char*
        collection_len : uint32_t
        oid : bson_oid_t
      end
      struct Code
        uint32_t code_len;
        char *code;
      end
      struct Codewscope
        uint32_t code_len;
        char *code;
        uint32_t scope_len;
        uint8_t *scope_data;
      end
      struct Symbol
        uint32_t len;
        char *symbol;
      end
    end
  end
end