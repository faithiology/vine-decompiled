.class public Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;
.super Ljava/io/Reader;
.source "ASCIIReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected fBuffer:[B

.field private fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

.field protected fInputStream:Ljava/io/InputStream;

.field private fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 2
    .parameter "inputStream"
    .parameter "size"
    .parameter "messageFormatter"
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    .line 137
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    .line 167
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    .line 168
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 169
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 170
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    if-nez v1, :cond_0

    .line 171
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 173
    :cond_0
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    .line 174
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1
    .parameter "inputStream"
    .parameter "messageFormatter"
    .parameter "locale"

    .prologue
    .line 153
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 154
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 308
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 310
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 311
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 280
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 196
    .local v0, b0:I
    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 197
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string v4, "InvalidASCII"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    return v0
.end method

.method public read([CII)I
    .locals 10
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 217
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v3, v3

    if-le p3, v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length p3, v3

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    invoke-virtual {v3, v4, v9, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 221
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 222
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fBuffer:[B

    aget-byte v0, v3, v2

    .line 223
    .local v0, b0:I
    const/16 v3, 0x80

    if-le v0, v3, :cond_1

    .line 224
    new-instance v3, Ljava/io/IOException;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string v6, "InvalidASCII"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_1
    add-int v3, p2, v2

    int-to-char v4, v0

    aput-char v4, p1, v3

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0           #b0:I
    :cond_2
    return v1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 297
    return-void
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
