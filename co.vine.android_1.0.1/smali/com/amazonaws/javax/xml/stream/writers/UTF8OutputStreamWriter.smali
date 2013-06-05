.class public final Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;
.super Ljava/io/Writer;
.source "UTF8OutputStreamWriter.java"


# instance fields
.field lastUTF16CodePoint:I

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    .line 78
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 79
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
    .line 157
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to close a UTF8OutputStreamWriter while awaiting for a UTF-16 code unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 162
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 154
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    if-eqz v1, :cond_3

    .line 88
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v2, p1, 0x3ff

    or-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int v0, v1, v2

    .line 91
    .local v0, uc:I
    if-ltz v0, :cond_0

    const/high16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Atttempting to write invalid Unicode code point \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 96
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 98
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    .line 125
    .end local v0           #uc:I
    :cond_2
    :goto_0
    return-void

    .line 105
    :cond_3
    const/16 v1, 0x80

    if-ge p1, v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 109
    :cond_4
    const/16 v1, 0x800

    if-ge p1, v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 114
    :cond_5
    const v1, 0xffff

    if-gt p1, v1, :cond_2

    .line 115
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 118
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 119
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 122
    :cond_6
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 141
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .parameter "str"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 148
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
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
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 129
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 2
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
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 135
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method
