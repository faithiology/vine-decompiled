.class Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DataFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonCopyingByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "initialSize"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 401
    return-void
.end method


# virtual methods
.method getByteArrayAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$NonCopyingByteArrayOutputStream;->count:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
