.class public Lcom/amazonaws/javax/xml/stream/StreamBufferManager;
.super Lcom/amazonaws/javax/xml/stream/BufferManager;
.source "StreamBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_LENGTH:I = 0x2000


# instance fields
.field charBuffer:Ljava/nio/CharBuffer;

.field fAllowJavaEncodings:Z

.field fReader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/BufferManager;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 68
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->init(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    .line 272
    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, file:Ljava/io/File;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "url parameter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 275
    .local v6, url:Ljava/net/URL;
    new-instance v5, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 276
    .local v5, sb:Lcom/amazonaws/javax/xml/stream/StreamBufferManager;
    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 277
    .local v0, cb:Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 278
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->getMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 279
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Loop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    .line 280
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 281
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "End of stream reached = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->endOfStream()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Total no. of loops required = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #cb:Ljava/nio/CharBuffer;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #sb:Lcom/amazonaws/javax/xml/stream/StreamBufferManager;
    .end local v6           #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public arrangeCapacity(I)Z
    .locals 1
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 293
    :cond_0
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 9
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "isBigEndian"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x2000

    .line 194
    if-nez p2, :cond_0

    .line 195
    const-string p2, "UTF-8"

    .line 199
    :cond_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, ENCODING:Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, p1, v7, v8, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 260
    :goto_0
    return-object v5

    .line 207
    :cond_1
    const-string v5, "US-ASCII"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, p1, v7, v8, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    goto :goto_0

    .line 213
    :cond_2
    const-string v5, "ISO-10646-UCS-4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    if-eqz p3, :cond_4

    .line 215
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 216
    .local v1, isBE:Z
    if-eqz v1, :cond_3

    .line 217
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/16 v6, 0x8

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 219
    :cond_3
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v6, 0x4

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 222
    .end local v1           #isBE:Z
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Encoding byte order not supported"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_5
    const-string v5, "ISO-10646-UCS-2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 226
    if-eqz p3, :cond_7

    .line 227
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 228
    .restart local v1       #isBE:Z
    if-eqz v1, :cond_6

    .line 229
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v6, 0x2

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 231
    :cond_6
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 234
    .end local v1           #isBE:Z
    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Encoding byte order not supported"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    :cond_8
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v3

    .line 240
    .local v3, validIANA:Z
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v4

    .line 241
    .local v4, validJava:Z
    if-eqz v3, :cond_9

    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    .line 242
    :cond_9
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Encoding declaration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_a
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, javaEncoding:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 247
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_c

    .line 248
    move-object v2, p2

    .line 260
    :cond_b
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 250
    :cond_c
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Encoding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method getLength()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x2000

    return v0
.end method

.method public getMore()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 151
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 152
    .local v0, ch:[C
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 154
    .local v2, offset:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 159
    .local v1, count:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 160
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->endOfStream:Z

    .line 171
    :cond_1
    :goto_0
    return v3

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 165
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 168
    if-lez v1, :cond_1

    move v3, v4

    .line 169
    goto :goto_0
.end method

.method init(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .parameter "istream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 80
    .local v6, isBigEndian:Ljava/lang/Boolean;
    new-instance v8, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;

    invoke-direct {v8, p0, p1}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;-><init>(Lcom/amazonaws/javax/xml/stream/StreamBufferManager;Ljava/io/InputStream;)V

    .line 85
    .local v8, stream:Ljava/io/InputStream;
    if-nez p2, :cond_3

    .line 90
    const/4 v9, 0x4

    new-array v3, v9, [B

    .line 91
    .local v3, b4:[B
    const/4 v4, 0x0

    .line 92
    .local v4, count:I
    :goto_0
    const/4 v9, 0x4

    if-ge v4, v9, :cond_0

    .line 93
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v4

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v9, 0x4

    if-ne v4, v9, :cond_2

    .line 96
    invoke-virtual {p0, v3, v4}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v5

    .line 97
    .local v5, encodingDesc:[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    check-cast v9, Ljava/lang/String;

    move-object p2, v9

    check-cast p2, Ljava/lang/String;

    .line 98
    const/4 v9, 0x1

    aget-object v9, v5, v9

    check-cast v9, Ljava/lang/Boolean;

    move-object v6, v9

    check-cast v6, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 100
    const/4 v7, 0x0

    .line 104
    .local v7, offset:I
    const/4 v9, 0x2

    if-le v4, v9, :cond_1

    const-string v9, "UTF-8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    const/4 v9, 0x0

    aget-byte v9, v3, v9

    and-int/lit16 v0, v9, 0xff

    .line 106
    .local v0, b0:I
    const/4 v9, 0x1

    aget-byte v9, v3, v9

    and-int/lit16 v1, v9, 0xff

    .line 107
    .local v1, b1:I
    const/4 v9, 0x2

    aget-byte v9, v3, v9

    and-int/lit16 v2, v9, 0xff

    .line 109
    .local v2, b2:I
    const/16 v9, 0xef

    if-ne v0, v9, :cond_1

    const/16 v9, 0xbb

    if-ne v1, v9, :cond_1

    const/16 v9, 0xbf

    if-ne v2, v9, :cond_1

    .line 111
    const-wide/16 v9, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/io/InputStream;->skip(J)J

    .line 117
    .end local v0           #b0:I
    .end local v1           #b1:I
    .end local v2           #b2:I
    :cond_1
    invoke-virtual {p0, v8, p2, v6}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    iput-object v9, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    .line 128
    .end local v3           #b4:[B
    .end local v4           #count:I
    .end local v5           #encodingDesc:[Ljava/lang/Object;
    .end local v7           #offset:I
    :goto_1
    const/16 v9, 0x2000

    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 129
    return-void

    .line 120
    .restart local v3       #b4:[B
    .restart local v4       #count:I
    :cond_2
    invoke-virtual {p0, v8, p2, v6}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    iput-object v9, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    goto :goto_1

    .line 125
    .end local v3           #b4:[B
    .end local v4           #count:I
    :cond_3
    invoke-virtual {p0, v8, p2, v6}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v9

    iput-object v9, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;->fReader:Ljava/io/Reader;

    goto :goto_1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    return-void
.end method
