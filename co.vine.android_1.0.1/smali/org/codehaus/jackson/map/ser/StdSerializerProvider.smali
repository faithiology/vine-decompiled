.class public Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
.super Lorg/codehaus/jackson/map/SerializerProvider;
.source "StdSerializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;
    }
.end annotation


# static fields
.field static final CACHE_UNKNOWN_MAPPINGS:Z

.field public static final DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _dateFormat:Ljava/text/DateFormat;

.field protected _keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field protected _nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

.field protected final _serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

.field protected final _serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

.field protected _unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/codehaus/jackson/map/ser/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 122
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 128
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->instance:Lorg/codehaus/jackson/map/ser/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 178
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 179
    new-instance v0, Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    .line 181
    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 182
    new-instance v0, Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/RootNameLookup;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 183
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .parameter "config"
    .parameter "src"
    .parameter "f"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/SerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 122
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_UNKNOWN_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 128
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 134
    sget-object v0, Lorg/codehaus/jackson/map/ser/NullSerializer;->instance:Lorg/codehaus/jackson/map/ser/NullSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 143
    sget-object v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->DEFAULT_NULL_KEY_SERIALIZER:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 198
    :cond_0
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 200
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    .line 201
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 202
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 203
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 204
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 205
    iget-object v0, p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->getReadOnlyLookupMap()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 211
    return-void
.end method


# virtual methods
.method protected _createAndCacheUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 725
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 733
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 734
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v2, p1, v1, p0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->addAndResolveNonTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 736
    :cond_0
    return-object v1

    .line 726
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 730
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected _createAndCacheUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .parameter "type"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 756
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 757
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v2, p1, v1, p0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->addAndResolveNonTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 759
    :cond_0
    return-object v1

    .line 749
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 753
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected _createUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter "type"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected _findExplicitUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, runtimeType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 693
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 704
    :goto_0
    return-object v2

    .line 697
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 698
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 699
    goto :goto_0

    .line 702
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected _handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 783
    .local p1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v2, p1, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-nez v2, :cond_0

    move-object v1, p1

    .line 794
    .end local p1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local p1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    move-object v2, p1

    .line 786
    check-cast v2, Lorg/codehaus/jackson/map/ContextualSerializer;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v2, v3, p2}, Lorg/codehaus/jackson/map/ContextualSerializer;->createContextual(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 787
    .local v0, ctxtSer:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eq v0, p1, :cond_2

    .line 789
    instance-of v2, v0, Lorg/codehaus/jackson/map/ResolvableSerializer;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 790
    check-cast v2, Lorg/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {v2, p0}, Lorg/codehaus/jackson/map/ResolvableSerializer;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 792
    :cond_1
    move-object p1, v0

    :cond_2
    move-object v1, p1

    .line 794
    .end local p1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method protected _reportIncompatibleRootType(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 4
    .parameter "value"
    .parameter "rootType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 673
    .local v0, wrapperType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    return-void

    .line 677
    .end local v0           #wrapperType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible types: declared root type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected _serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 9
    .parameter "jgen"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 585
    if-nez p2, :cond_2

    .line 586
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 587
    .local v4, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 600
    .local v5, wrap:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4, p2, p1, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 601
    if-eqz v5, :cond_1

    .line 602
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 617
    :cond_1
    return-void

    .line 589
    .end local v4           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v5           #wrap:Z
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 591
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 593
    .restart local v4       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v7, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v6, v7}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v5

    .line 594
    .restart local v5       #wrap:Z
    if-eqz v5, :cond_0

    .line 595
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 596
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v6, v7, v8}, Lorg/codehaus/jackson/map/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lorg/codehaus/jackson/map/MapperConfig;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    goto :goto_0

    .line 604
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 608
    .local v2, ioe:Ljava/io/IOException;
    throw v2

    .line 609
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 611
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, msg:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[no message for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :cond_3
    new-instance v6, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-direct {v6, v3, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected _serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 7
    .parameter "jgen"
    .parameter "value"
    .parameter "rootType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 631
    if-nez p2, :cond_2

    .line 632
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 633
    .local v3, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 649
    .local v4, wrap:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3, p2, p1, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 650
    if-eqz v4, :cond_1

    .line 651
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    :cond_1
    return-void

    .line 636
    .end local v3           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v4           #wrap:Z
    :cond_2
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 637
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V

    .line 640
    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p3, v5, v6}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findTypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 642
    .restart local v3       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v6, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v4

    .line 643
    .restart local v4       #wrap:Z
    if-eqz v4, :cond_0

    .line 644
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 645
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_rootNames:Lorg/codehaus/jackson/map/util/RootNameLookup;

    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v5, p3, v6}, Lorg/codehaus/jackson/map/util/RootNameLookup;->findRootName(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/MapperConfig;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, ioe:Ljava/io/IOException;
    throw v1

    .line 655
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, msg:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[no message for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 660
    :cond_4
    new-instance v5, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-direct {v5, v2, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public cachedSerializersCount()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->size()I

    move-result v0

    return v0
.end method

.method protected createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    .locals 1
    .parameter "config"
    .parameter "jsf"

    .prologue
    .line 219
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    invoke-direct {v0, p1, p0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/StdSerializerProvider;Lorg/codehaus/jackson/map/SerializerFactory;)V

    return-object v0
.end method

.method public final defaultSerializeDateValue(JLorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter "timestamp"
    .parameter "jgen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 550
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final defaultSerializeDateValue(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 3
    .parameter "date"
    .parameter "jgen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 557
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 567
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    if-nez v1, :cond_1

    .line 561
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 563
    .local v0, blueprint:Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    .line 565
    .end local v0           #blueprint:Ljava/text/DateFormat;
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findKeySerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .parameter "keyType"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, v3, p1, p2}, Lorg/codehaus/jackson/map/SerializerFactory;->createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 501
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 505
    :cond_0
    instance-of v2, v1, Lorg/codehaus/jackson/map/ContextualSerializer;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 506
    check-cast v0, Lorg/codehaus/jackson/map/ContextualSerializer;

    .line 507
    .local v0, contextual:Lorg/codehaus/jackson/map/ContextualSerializer;,"Lorg/codehaus/jackson/map/ContextualSerializer<*>;"
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-interface {v0, v2, p2}, Lorg/codehaus/jackson/map/ContextualSerializer;->createContextual(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 509
    .end local v0           #contextual:Lorg/codehaus/jackson/map/ContextualSerializer;,"Lorg/codehaus/jackson/map/ContextualSerializer<*>;"
    :cond_1
    return-object v1
.end method

.method public findTypedValueSerializer(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .parameter
    .parameter "cache"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 435
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 436
    .local v0, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 455
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 440
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->typedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 442
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0

    .line 446
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 447
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v5, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 449
    .local v2, typeSer:Lorg/codehaus/jackson/map/TypeSerializer;
    if-eqz v2, :cond_2

    .line 450
    new-instance v1, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v0, v1

    .line 452
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 453
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->addTypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    :cond_3
    move-object v1, v0

    .line 455
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public findTypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .parameter "valueType"
    .parameter "cache"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->typedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 465
    .local v0, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 483
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .local v1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 469
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->typedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 471
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0

    .line 475
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 476
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v3, v4, p1, p3}, Lorg/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v2

    .line 477
    .local v2, typeSer:Lorg/codehaus/jackson/map/TypeSerializer;
    if-eqz v2, :cond_2

    .line 478
    new-instance v1, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;-><init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v0, v1

    .line 480
    .end local v1           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v0       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 481
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->addTypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;)V

    :cond_3
    move-object v1, v0

    .line 483
    .end local v0           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 360
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 361
    .local v0, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 363
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->untypedValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 366
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/ser/SerializerCache;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 367
    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    move-object v1, v0

    .line 386
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0
.end method

.method public findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter "valueType"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_knownSerializers:Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 401
    .local v0, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 403
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache;->untypedValueSerializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_createAndCacheUntypedSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    move-object v1, v0

    .line 422
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_handleContextualResolvable(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    goto :goto_0
.end method

.method public flushCachedSerializers()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializerCache:Lorg/codehaus/jackson/map/ser/SerializerCache;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/SerializerCache;->flush()V

    .line 345
    return-void
.end method

.method public generateJsonSchema(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/schema/JsonSchema;
    .locals 6
    .parameter
    .parameter "config"
    .parameter "jsf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/SerializerFactory;",
            ")",
            "Lorg/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A class must be provided"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    .line 312
    .local v0, inst:Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 313
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; blueprint of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_1
    invoke-virtual {v0, p1, v5}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 319
    .local v2, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v3, v2, Lorg/codehaus/jackson/schema/SchemaAware;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/codehaus/jackson/schema/SchemaAware;

    .end local v2           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v2, v0, v5}, Lorg/codehaus/jackson/schema/SchemaAware;->getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 322
    .local v1, schemaNode:Lorg/codehaus/jackson/JsonNode;
    :goto_0
    instance-of v3, v1, Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v3, :cond_3

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would not be serialized as a JSON object and therefore has no schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v1           #schemaNode:Lorg/codehaus/jackson/JsonNode;
    .restart local v2       #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    goto :goto_0

    .line 327
    .end local v2           #ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1       #schemaNode:Lorg/codehaus/jackson/JsonNode;
    :cond_3
    new-instance v3, Lorg/codehaus/jackson/schema/JsonSchema;

    check-cast v1, Lorg/codehaus/jackson/node/ObjectNode;

    .end local v1           #schemaNode:Lorg/codehaus/jackson/JsonNode;
    invoke-direct {v3, v1}, Lorg/codehaus/jackson/schema/JsonSchema;-><init>(Lorg/codehaus/jackson/node/ObjectNode;)V

    return-object v3
.end method

.method public getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, unknownType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_unknownTypeSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public hasSerializerFor(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerFactory;)Z
    .locals 2
    .parameter "config"
    .parameter
    .parameter "jsf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerFactory;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_findExplicitUntypedSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 4
    .parameter "config"
    .parameter "jgen"
    .parameter "value"
    .parameter "jsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p4, :cond_0

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null serializerFactory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    .line 276
    .local v0, inst:Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; blueprint of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1
    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 4
    .parameter "config"
    .parameter "jgen"
    .parameter "value"
    .parameter "rootType"
    .parameter "jsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p5, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null serializerFactory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_0
    invoke-virtual {p0, p1, p5}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->createInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    move-result-object v0

    .line 292
    .local v0, inst:Lorg/codehaus/jackson/map/ser/StdSerializerProvider;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; blueprint of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_serializeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)V

    .line 296
    return-void
.end method

.method public setDefaultKeySerializer(Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, ks:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null JsonSerializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_keySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 235
    return-void
.end method

.method public setNullKeySerializer(Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, nks:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null JsonSerializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullKeySerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 253
    return-void
.end method

.method public setNullValueSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, nvs:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null JsonSerializer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;->_nullValueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 244
    return-void
.end method
