.class public Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
.super Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
.source "XMLStringBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 143
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    .line 151
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 174
    iget v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0
    .parameter "ch"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 168
    invoke-direct {p0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 170
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 194
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 195
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 196
    .local v0, newLength:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/lit8 v2, v2, 0x20

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/lit8 v0, v2, 0x20

    .line 199
    :cond_0
    new-array v1, v0, [C

    .line 200
    .local v1, tmp:[C
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    .line 203
    .end local v0           #newLength:I
    .end local v1           #tmp:[C
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    aput-char p1, v2, v3

    .line 204
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    .line 205
    return-void
.end method

.method public append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 259
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 260
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    .local v0, length:I
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 215
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    .line 216
    .local v1, newLength:I
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x20

    if-ge v1, v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x20

    .line 220
    :cond_0
    new-array v2, v1, [C

    .line 221
    .local v2, newch:[C
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    .line 224
    .end local v1           #newLength:I
    .end local v2           #newch:[C
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {p1, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 225
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    .line 226
    return-void
.end method

.method public append([CII)V
    .locals 5
    .parameter "ch"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 236
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 237
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 238
    .local v0, newLength:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x20

    if-ge v0, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    add-int/2addr v2, p3

    add-int/lit8 v0, v2, 0x20

    .line 241
    :cond_0
    new-array v1, v0, [C

    .line 242
    .local v1, newch:[C
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    .line 247
    .end local v0           #newLength:I
    .end local v1           #newch:[C
    :cond_1
    if-eqz p1, :cond_2

    if-lez p3, :cond_2

    .line 248
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    .line 251
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    .line 185
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    .line 186
    return-void
.end method
