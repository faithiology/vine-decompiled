.class public abstract Lcom/amazonaws/javax/xml/stream/BufferManager;
.super Ljava/lang/Object;
.source "BufferManager.java"


# static fields
.field static DEBUG:Z


# instance fields
.field protected endOfStream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazonaws/javax/xml/stream/BufferManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/BufferManager;->endOfStream:Z

    return-void
.end method

.method public static getBufferManager(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)Lcom/amazonaws/javax/xml/stream/BufferManager;
    .locals 3
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 62
    .local v0, stream:Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 63
    sget-boolean v1, Lcom/amazonaws/javax/xml/stream/BufferManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Using FileBufferManager"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FileBufferManager;

    check-cast v0, Ljava/io/FileInputStream;

    .end local v0           #stream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;-><init>(Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object v1

    .line 68
    .restart local v0       #stream:Ljava/io/InputStream;
    :cond_1
    sget-boolean v1, Lcom/amazonaws/javax/xml/stream/BufferManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Using StreamBufferManager"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_2
    new-instance v1, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazonaws/javax/xml/stream/StreamBufferManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .parameter "args"

    .prologue
    .line 212
    :try_start_0
    new-instance v8, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v8, file:Ljava/io/File;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "url parameter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    new-instance v12, Ljava/net/URL;

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v12, url:Ljava/net/URL;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 216
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/BufferManager;->getBufferManager(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)Lcom/amazonaws/javax/xml/stream/BufferManager;

    move-result-object v11

    .line 217
    .local v11, sb:Lcom/amazonaws/javax/xml/stream/BufferManager;
    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/BufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    .line 218
    .local v6, cb:Ljava/nio/CharBuffer;
    const/4 v9, 0x0

    .local v9, i:I
    move v10, v9

    .line 219
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/BufferManager;->getMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Loop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/BufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v9

    .line 221
    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0

    .line 222
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "End of stream reached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/BufferManager;->endOfStream()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Total no. of loops required = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0           #inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    .end local v6           #cb:Ljava/nio/CharBuffer;
    .end local v8           #file:Ljava/io/File;
    .end local v10           #i:I
    .end local v11           #sb:Lcom/amazonaws/javax/xml/stream/BufferManager;
    .end local v12           #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v7

    .line 226
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abstract arrangeCapacity(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public endOfStream()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/BufferManager;->endOfStream:Z

    return v0
.end method

.method public abstract getCharBuffer()Ljava/nio/CharBuffer;
.end method

.method protected getEncodingName([BI)[Ljava/lang/Object;
    .locals 10
    .parameter "b4"
    .parameter "count"

    .prologue
    const/16 v9, 0x3c

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    if-ge p2, v5, :cond_0

    .line 135
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    .line 206
    :goto_0
    return-object v4

    .line 139
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v0, v4, 0xff

    .line 140
    .local v0, b0:I
    aget-byte v4, p1, v7

    and-int/lit16 v1, v4, 0xff

    .line 141
    .local v1, b1:I
    const/16 v4, 0xfe

    if-ne v0, v4, :cond_1

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    .line 143
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 145
    :cond_1
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    const/16 v4, 0xfe

    if-ne v1, v4, :cond_2

    .line 147
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 152
    :cond_2
    const/4 v4, 0x3

    if-ge p2, v4, :cond_3

    .line 153
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 157
    :cond_3
    aget-byte v4, p1, v5

    and-int/lit16 v2, v4, 0xff

    .line 158
    .local v2, b2:I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_4

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_4

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_4

    .line 159
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 164
    :cond_4
    const/4 v4, 0x4

    if-ge p2, v4, :cond_5

    .line 165
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 169
    :cond_5
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 170
    .local v3, b3:I
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-ne v3, v9, :cond_6

    .line 172
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 174
    :cond_6
    if-ne v0, v9, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 176
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 178
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v9, :cond_8

    if-nez v3, :cond_8

    .line 181
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 183
    :cond_8
    if-nez v0, :cond_9

    if-ne v1, v9, :cond_9

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 186
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 188
    :cond_9
    if-nez v0, :cond_a

    if-ne v1, v9, :cond_a

    if-nez v2, :cond_a

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_a

    .line 192
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 194
    :cond_a
    if-ne v0, v9, :cond_b

    if-nez v1, :cond_b

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_b

    if-nez v3, :cond_b

    .line 197
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 199
    :cond_b
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_c

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_c

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_c

    const/16 v4, 0x94

    if-ne v3, v4, :cond_c

    .line 202
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "CP037"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 206
    :cond_c
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0
.end method

.method public abstract getMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
