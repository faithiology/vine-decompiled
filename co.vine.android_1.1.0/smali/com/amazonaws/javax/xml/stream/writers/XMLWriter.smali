.class public Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;
.super Ljava/io/Writer;
.source "XMLWriter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final THRESHHOLD_LENGTH:I = 0x1000


# instance fields
.field private buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private size:I

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 79
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2
    .parameter "writer"
    .parameter "size"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 71
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x3000

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 89
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 90
    iput p2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    .line 91
    return-void
.end method

.method private conditionalWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    if-le v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 262
    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    return-void
.end method

.method private writeBufferedData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 269
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 270
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->flush()V

    .line 193
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 210
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 211
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 212
    return-void
.end method

.method protected getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 220
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 221
    const/16 v0, 0x1000

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    .line 222
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 231
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 232
    const/16 v0, 0x1000

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    .line 233
    return-void
.end method

.method public setWriter(Ljava/io/Writer;I)V
    .locals 0
    .parameter "writer"
    .parameter "size"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 242
    iput p2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    .line 243
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 107
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 108
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->conditionalWrite()V

    .line 109
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    if-le v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 175
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->conditionalWrite()V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->write([CII)V

    .line 159
    return-void
.end method

.method public write([C)V
    .locals 2
    .parameter "cbuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->write([CII)V

    .line 121
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 137
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->size:I

    if-le p3, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 141
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->buffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 144
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->conditionalWrite()V

    goto :goto_0
.end method
