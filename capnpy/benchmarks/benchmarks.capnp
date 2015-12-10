@0xe62e66ea90a396da;

struct CapnpStruct {
    # the padding field is needed to ensure that we benchmark fields with offset >0
    padding @0 :Int64;
    bool @1 :Int64; # XXX: should be Bool but it's not supported by structor
    int8 @2 :Int8;
    int16 @3 :Int16;
    int32 @4 :Int32;
    int64 @5 :Int64;
    uint8 @6 :UInt8;
    uint16 @7 :UInt16;
    uint32 @8 :UInt32;
    uint64 @9 :UInt64;
    float32 @10 :Float32;
    float64 @11 :Float64;
    text @12 :Text;
}