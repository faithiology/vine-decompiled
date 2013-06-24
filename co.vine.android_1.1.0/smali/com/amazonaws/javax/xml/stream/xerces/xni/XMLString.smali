.class public Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
.super Ljava/lang/Object;
.source "XMLString.java"


# instance fields
.field public ch:[C

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 166
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0
    .parameter "ch"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 153
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 204
    return-void
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    if-ge v0, v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equals([CII)Z
    .locals 4
    .parameter "ch"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 215
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    if-ne v2, p3, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 223
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    add-int v3, p2, v0

    aget-char v3, p1, v3

    if-ne v2, v3, :cond_0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 196
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 197
    return-void
.end method

.method public setValues([CII)V
    .locals 0
    .parameter "ch"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    .line 182
    iput p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    .line 183
    iput p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
