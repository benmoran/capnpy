import cython
from capnpy.type cimport BuiltinType
from capnpy.unpack cimport unpack_primitive, unpack_int64
from capnpy cimport ptr

cdef class CapnpBuffer:
    cdef readonly bytes s
    cpdef read_primitive(self, long offset, char ifmt)
    cpdef long read_raw_ptr(self, long offset)
    cpdef read_ptr(self, long offset)

cdef class CapnpBufferWithSegments(CapnpBuffer):
    cdef readonly object segment_offsets

cdef class Blob:
    cdef readonly CapnpBuffer _buf

    cpdef _init_blob(self, object buf)

    cpdef _read_ptr(self, long offset)
    cpdef _read_str_text(self, long offset, str default_=*)

    @cython.locals(p=long, start=long)
    cpdef _read_str_data(self, long offset, str default_=*, long additional_size=*)
    cpdef _read_struct(self, long offset, object structcls, object default_=*)
