.class public Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;
.super Ljava/lang/Object;
.source "XMLSimpleType.java"


# static fields
.field public static final DEFAULT_TYPE_DEFAULT:S = 0x3s

.field public static final DEFAULT_TYPE_FIXED:S = 0x1s

.field public static final DEFAULT_TYPE_IMPLIED:S = 0x0s

.field public static final DEFAULT_TYPE_REQUIRED:S = 0x2s

.field public static final TYPE_CDATA:S = 0x0s

.field public static final TYPE_ENTITY:S = 0x1s

.field public static final TYPE_ENUMERATION:S = 0x2s

.field public static final TYPE_ID:S = 0x3s

.field public static final TYPE_IDREF:S = 0x4s

.field public static final TYPE_NAMED:S = 0x7s

.field public static final TYPE_NMTOKEN:S = 0x5s

.field public static final TYPE_NOTATION:S = 0x6s


# instance fields
.field public defaultType:S

.field public defaultValue:Ljava/lang/String;

.field public enumeration:[Ljava/lang/String;

.field public list:Z

.field public name:Ljava/lang/String;

.field public nonNormalizedDefaultValue:Ljava/lang/String;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 235
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 236
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 239
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 240
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;)V
    .locals 4
    .parameter "simpleType"

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-short v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    iput-short v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 215
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :goto_0
    iget-boolean v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 225
    iget-short v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    iput-short v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 226
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 229
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "name"
    .parameter "enumeration"
    .parameter "list"
    .parameter "defaultType"
    .parameter "defaultValue"
    .parameter "nonNormalizedDefaultValue"

    .prologue
    const/4 v2, 0x0

    .line 194
    iput-short p1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 195
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 197
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 198
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :goto_0
    iput-boolean p4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 205
    iput-short p5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 206
    iput-object p6, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 207
    iput-object p7, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 209
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    goto :goto_0
.end method
