.class public Lcom/flurry/org/apache/avro/file/DataFileWriter;
.super Ljava/lang/Object;
.source "DataFileWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;,
        Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;,
        Lcom/flurry/org/apache/avro/file/DataFileWriter$AppendWriteException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;"
    }
.end annotation


# instance fields
.field private blockCount:J

.field private bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

.field private buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

.field private codec:Lcom/flurry/org/apache/avro/file/Codec;

.field private dout:Lcom/flurry/org/apache/avro/io/DatumWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/apache/avro/io/DatumWriter",
            "<TD;>;"
        }
    .end annotation
.end field

.field private isOpen:Z

.field private final meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private out:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>.BufferedFileOutputStream;"
        }
    .end annotation
.end field

.field private schema:Lcom/flurry/org/apache/avro/Schema;

.field private sync:[B

.field private syncInterval:I

.field private vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/io/DatumWriter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/io/DatumWriter",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    .local p1, dout:Lcom/flurry/org/apache/avro/io/DatumWriter;,"Lcom/flurry/org/apache/avro/io/DatumWriter<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    .line 71
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->syncInterval:I

    .line 78
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->dout:Lcom/flurry/org/apache/avro/io/DatumWriter;

    .line 79
    return-void
.end method

.method private assertNotOpen()V
    .locals 2

    .prologue
    .line 85
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->isOpen:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "already open"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

.method private assertOpen()V
    .locals 2

    .prologue
    .line 82
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->isOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method private bufferInUse()I
    .locals 2

    .prologue
    .line 289
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->bytesBuffered()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static generateSync()[B
    .locals 6

    .prologue
    .line 193
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 194
    .local v0, digester:Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 195
    .local v2, time:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/rmi/server/UID;

    invoke-direct {v5}, Ljava/rmi/server/UID;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 197
    .end local v2           #time:J
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private init(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    const/4 v6, 0x0

    .line 178
    new-instance v1, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    invoke-direct {v1, p0, p1}, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;-><init>(Lcom/flurry/org/apache/avro/file/DataFileWriter;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->out:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    .line 179
    new-instance v0, Lcom/flurry/org/apache/avro/io/EncoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;-><init>()V

    .line 180
    .local v0, efactory:Lcom/flurry/org/apache/avro/io/EncoderFactory;
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->out:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    invoke-virtual {v0, v1, v6}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .line 181
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->dout:Lcom/flurry/org/apache/avro/io/DatumWriter;

    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v1, v2}, Lcom/flurry/org/apache/avro/io/DatumWriter;->setSchema(Lcom/flurry/org/apache/avro/Schema;)V

    .line 182
    new-instance v1, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    iget v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->syncInterval:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const v3, 0x3ffffffe

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    .line 184
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v0, v1, v6}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    .line 185
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Lcom/flurry/org/apache/avro/file/CodecFactory;->nullCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    .line 188
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->isOpen:Z

    .line 189
    return-void
.end method

.method public static isReservedMeta(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 225
    const-string v0, "avro."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private resetBufferTo(I)V
    .locals 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 272
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 273
    .local v0, data:[B
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->reset()V

    .line 274
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->write([BII)V

    .line 275
    return-void
.end method

.method private setMetaInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMetaInternal(Ljava/lang/String;[B)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setMetaInternal(Ljava/lang/String;[B)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertNotOpen()V

    .line 204
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method private writeBlock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    const-wide/16 v4, 0x0

    .line 343
    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 345
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->getByteArrayAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 346
    .local v1, uncompressed:Ljava/nio/ByteBuffer;
    new-instance v0, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;-><init>(Ljava/nio/ByteBuffer;J)V

    .line 347
    .local v0, block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    invoke-virtual {v0, v2}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->compressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V

    .line 348
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    invoke-virtual {v0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->writeBlockTo(Lcom/flurry/org/apache/avro/io/BinaryEncoder;[B)V

    .line 349
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->buffer:Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->reset()V

    .line 350
    iput-wide v4, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    .line 352
    .end local v0           #block:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    .end local v1           #uncompressed:Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private writeIfBlockFull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufferInUse()I

    move-result v0

    iget v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->syncInterval:I

    if-lt v0, v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->writeBlock()V

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    .local p1, datum:Ljava/lang/Object;,"TD;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertOpen()V

    .line 253
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufferInUse()I

    move-result v2

    .line 255
    .local v2, usedBuffer:I
    :try_start_0
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->dout:Lcom/flurry/org/apache/avro/io/DatumWriter;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-interface {v3, p1, v4}, Lcom/flurry/org/apache/avro/io/DatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    iget-wide v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    .line 264
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->writeIfBlockFull()V

    .line 265
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->resetBufferTo(I)V

    .line 258
    new-instance v3, Lcom/flurry/org/apache/avro/file/DataFileWriter$AppendWriteException;

    invoke-direct {v3, v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter$AppendWriteException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 259
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, re:Ljava/lang/RuntimeException;
    invoke-direct {p0, v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->resetBufferTo(I)V

    .line 261
    new-instance v3, Lcom/flurry/org/apache/avro/file/DataFileWriter$AppendWriteException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter$AppendWriteException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public appendAllFrom(Lcom/flurry/org/apache/avro/file/DataFileStream;Z)V
    .locals 6
    .parameter
    .parameter "recompress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/file/DataFileStream",
            "<TD;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    .local p1, otherFile:Lcom/flurry/org/apache/avro/file/DataFileStream;,"Lcom/flurry/org/apache/avro/file/DataFileStream<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertOpen()V

    .line 318
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    .line 319
    .local v2, otherSchema:Lcom/flurry/org/apache/avro/Schema;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->schema:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v3, v2}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schema from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->writeBlock()V

    .line 324
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->resolveCodec()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v1

    .line 325
    .local v1, otherCodec:Lcom/flurry/org/apache/avro/file/Codec;
    const/4 v0, 0x0

    .line 326
    .local v0, nextBlockRaw:Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    invoke-virtual {v3, v1}, Lcom/flurry/org/apache/avro/file/Codec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 328
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNextBlock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->nextRawBlock(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    move-result-object v0

    .line 330
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    invoke-virtual {v0, v3, v4}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->writeBlockTo(Lcom/flurry/org/apache/avro/io/BinaryEncoder;[B)V

    goto :goto_0

    .line 333
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/file/DataFileStream;->hasNextBlock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    invoke-virtual {p1, v0}, Lcom/flurry/org/apache/avro/file/DataFileStream;->nextRawBlock(Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;)Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->decompressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V

    .line 336
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    invoke-virtual {v0, v3}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->compressUsing(Lcom/flurry/org/apache/avro/file/Codec;)V

    .line 337
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    iget-object v4, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    invoke-virtual {v0, v3, v4}, Lcom/flurry/org/apache/avro/file/DataFileStream$DataBlock;->writeBlockTo(Lcom/flurry/org/apache/avro/io/BinaryEncoder;[B)V

    goto :goto_1

    .line 340
    :cond_2
    return-void
.end method

.method public appendEncoded(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "datum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertOpen()V

    .line 282
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 283
    .local v0, start:I
    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->bufOut:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([BII)V

    .line 284
    iget-wide v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->blockCount:J

    .line 285
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->writeIfBlockFull()V

    .line 286
    return-void
.end method

.method public appendTo(Ljava/io/File;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertNotOpen()V

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v2, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 157
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v3, Lcom/flurry/org/apache/avro/file/DataFileReader;

    new-instance v5, Lcom/flurry/org/apache/avro/file/SeekableFileInput;

    invoke-direct {v5, v1}, Lcom/flurry/org/apache/avro/file/SeekableFileInput;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v6, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;

    invoke-direct {v6}, Lcom/flurry/org/apache/avro/generic/GenericDatumReader;-><init>()V

    invoke-direct {v3, v5, v6}, Lcom/flurry/org/apache/avro/file/DataFileReader;-><init>(Lcom/flurry/org/apache/avro/file/SeekableInput;Lcom/flurry/org/apache/avro/io/DatumReader;)V

    .line 160
    .local v3, reader:Lcom/flurry/org/apache/avro/file/DataFileReader;,"Lcom/flurry/org/apache/avro/file/DataFileReader<TD;>;"
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 161
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->getHeader()Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->sync:[B

    iput-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    .line 162
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/file/DataFileReader;->getHeader()Lcom/flurry/org/apache/avro/file/DataFileStream$Header;

    move-result-object v6

    iget-object v6, v6, Lcom/flurry/org/apache/avro/file/DataFileStream$Header;->meta:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    iget-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    const-string v6, "avro.codec"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 164
    .local v0, codecBytes:[B
    if-eqz v0, :cond_1

    .line 165
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 166
    .local v4, strCodec:Ljava/lang/String;
    invoke-static {v4}, Lcom/flurry/org/apache/avro/file/CodecFactory;->fromString(Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    .line 170
    .end local v4           #strCodec:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 172
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v5}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->init(Ljava/io/OutputStream;)V

    .line 174
    return-object p0

    .line 168
    :cond_1
    invoke-static {}, Lcom/flurry/org/apache/avro/file/CodecFactory;->nullCodec()Lcom/flurry/org/apache/avro/file/CodecFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v5

    iput-object v5, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->flush()V

    .line 374
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->out:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->close()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->isOpen:Z

    .line 376
    return-void
.end method

.method public create(Lcom/flurry/org/apache/avro/Schema;Ljava/io/File;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 1
    .parameter "schema"
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/io/File;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->create(Lcom/flurry/org/apache/avro/Schema;Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/file/DataFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/flurry/org/apache/avro/Schema;Ljava/io/OutputStream;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 5
    .parameter "schema"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/io/OutputStream;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertNotOpen()V

    .line 129
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->schema:Lcom/flurry/org/apache/avro/Schema;

    .line 130
    const-string v2, "avro.schema"

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMetaInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/DataFileWriter;

    .line 131
    invoke-static {}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->generateSync()[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    .line 133
    invoke-direct {p0, p2}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->init(Ljava/io/OutputStream;)V

    .line 135
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    sget-object v3, Lcom/flurry/org/apache/avro/file/DataFileConstants;->MAGIC:[B

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([B)V

    .line 137
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeMapStart()V

    .line 138
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->setItemCount(J)V

    .line 139
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->meta:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->startItem()V

    .line 141
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeBytes([B)V

    goto :goto_0

    .line 144
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_0
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeMapEnd()V

    .line 145
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync:[B

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->writeFixed([B)V

    .line 146
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 147
    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->sync()J

    .line 367
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->vout:Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V

    .line 368
    return-void
.end method

.method public setCodec(Lcom/flurry/org/apache/avro/file/CodecFactory;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/file/CodecFactory;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertNotOpen()V

    .line 94
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/file/CodecFactory;->createInstance()Lcom/flurry/org/apache/avro/file/Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    .line 95
    const-string v0, "avro.codec"

    iget-object v1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->codec:Lcom/flurry/org/apache/avro/file/Codec;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/file/Codec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMetaInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/DataFileWriter;

    .line 96
    return-object p0
.end method

.method public setMeta(Ljava/lang/String;J)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMeta(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/DataFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public setMeta(Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMeta(Ljava/lang/String;[B)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMeta(Ljava/lang/String;[B)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-static {p1}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->isReservedMeta(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set reserved meta key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->setMetaInternal(Ljava/lang/String;[B)Lcom/flurry/org/apache/avro/file/DataFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public setSyncInterval(I)Lcom/flurry/org/apache/avro/file/DataFileWriter;
    .locals 3
    .parameter "syncInterval"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/org/apache/avro/file/DataFileWriter",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-le p1, v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid syncInterval value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput p1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->syncInterval:I

    .line 116
    return-object p0
.end method

.method public sync()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>;"
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->assertOpen()V

    .line 359
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/DataFileWriter;->writeBlock()V

    .line 360
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter;->out:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->tell()J

    move-result-wide v0

    return-wide v0
.end method
