.class public final Lorg/codehaus/jackson/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field public static final TOKENS_PER_SEGMENT:I = 0x10

.field private static final TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;


# instance fields
.field protected _next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1246
    const/16 v1, 0x10

    new-array v1, v1, [Lorg/codehaus/jackson/JsonToken;

    sput-object v1, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    .line 1247
    invoke-static {}, Lorg/codehaus/jackson/JsonToken;->values()[Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1248
    .local v0, t:[Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    .line 1268
    return-void
.end method


# virtual methods
.method public append(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .parameter "index"
    .parameter "tokenType"

    .prologue
    .line 1292
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1293
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;)V

    .line 1294
    const/4 v0, 0x0

    .line 1298
    :goto_0
    return-object v0

    .line 1296
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1297
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;)V

    .line 1298
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .parameter "index"
    .parameter "tokenType"
    .parameter "value"

    .prologue
    .line 1303
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1304
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1305
    const/4 v0, 0x0

    .line 1309
    :goto_0
    return-object v0

    .line 1307
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1308
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 1283
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public set(ILorg/codehaus/jackson/JsonToken;)V
    .locals 4
    .parameter "index"
    .parameter "tokenType"

    .prologue
    .line 1314
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1318
    .local v0, typeCode:J
    if-lez p1, :cond_0

    .line 1319
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1321
    :cond_0
    iget-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1322
    return-void
.end method

.method public set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "tokenType"
    .parameter "value"

    .prologue
    .line 1326
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 1327
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1331
    .local v0, typeCode:J
    if-lez p1, :cond_0

    .line 1332
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1334
    :cond_0
    iget-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1335
    return-void
.end method

.method public type(I)Lorg/codehaus/jackson/JsonToken;
    .locals 4
    .parameter "index"

    .prologue
    .line 1274
    iget-wide v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1275
    .local v1, l:J
    if-lez p1, :cond_0

    .line 1276
    shl-int/lit8 v3, p1, 0x2

    shr-long/2addr v1, v3

    .line 1278
    :cond_0
    long-to-int v3, v1

    and-int/lit8 v0, v3, 0xf

    .line 1279
    .local v0, ix:I
    sget-object v3, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    aget-object v3, v3, v0

    return-object v3
.end method
