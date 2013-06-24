.class public Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'()"

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,[]"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 188
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;)V
    .locals 2
    .parameter "p_other"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 188
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initialize(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;Ljava/lang/String;)V
    .locals 2
    .parameter "p_base"
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 188
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initialize(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "p_scheme"
    .parameter "p_schemeSpecificPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 188
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 270
    :cond_2
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "p_scheme"
    .parameter "p_userinfo"
    .parameter "p_host"
    .parameter "p_port"
    .parameter "p_path"
    .parameter "p_queryString"
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 185
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 188
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 333
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Scheme is required!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    if-nez p3, :cond_3

    .line 338
    if-eqz p2, :cond_2

    .line 339
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Userinfo may not be specified if host is not specified!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    if-eq p4, v1, :cond_3

    .line 343
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Port may not be specified if host is not specified!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    if-eqz p5, :cond_5

    .line 349
    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p6, :cond_4

    .line 350
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Query string cannot be specified in path and query string!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_4
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    if-eqz p7, :cond_5

    .line 355
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Fragment cannot be specified in both the path and fragment!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_5
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, p4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setPort(I)V

    .line 363
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p6}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "p_scheme"
    .parameter "p_host"
    .parameter "p_path"
    .parameter "p_queryString"
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private initialize(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;)V
    .locals 1
    .parameter "p_other"

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 379
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 382
    return-void
.end method

.method private initialize(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;Ljava/lang/String;)V
    .locals 17
    .parameter "p_base"
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 402
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 404
    :cond_0
    new-instance v15, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v16, "Cannot initialize URI with empty parameters."

    invoke-direct/range {v15 .. v16}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 409
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    .line 410
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initialize(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;)V

    .line 581
    :cond_3
    :goto_0
    return-void

    .line 414
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 415
    .local v13, uriSpec:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 416
    .local v14, uriSpecLen:I
    const/4 v4, 0x0

    .line 421
    .local v4, index:I
    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 422
    .local v2, colonIdx:I
    const/16 v15, 0x2f

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 423
    .local v9, slashIdx:I
    const/16 v15, 0x3f

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 424
    .local v7, queryIdx:I
    const/16 v15, 0x23

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 426
    .local v3, fragmentIdx:I
    const/4 v15, 0x2

    if-lt v2, v15, :cond_7

    if-le v2, v9, :cond_5

    const/4 v15, -0x1

    if-ne v9, v15, :cond_7

    :cond_5
    if-le v2, v7, :cond_6

    const/4 v15, -0x1

    if-ne v7, v15, :cond_7

    :cond_6
    if-le v2, v3, :cond_8

    const/4 v15, -0x1

    if-eq v3, v15, :cond_8

    .line 431
    :cond_7
    if-nez p1, :cond_9

    if-eqz v3, :cond_9

    .line 432
    new-instance v15, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v16, "No scheme found in URI."

    invoke-direct/range {v15 .. v16}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 436
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 441
    :cond_9
    add-int/lit8 v15, v4, 0x1

    if-ge v15, v14, :cond_b

    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "//"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 443
    add-int/lit8 v4, v4, 0x2

    .line 444
    move v10, v4

    .line 447
    .local v10, startPos:I
    const/4 v12, 0x0

    .line 448
    .local v12, testChar:C
    :goto_1
    if-ge v4, v14, :cond_a

    .line 449
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 450
    const/16 v15, 0x2f

    if-eq v12, v15, :cond_a

    const/16 v15, 0x3f

    if-eq v12, v15, :cond_a

    const/16 v15, 0x23

    if-ne v12, v15, :cond_c

    .line 458
    :cond_a
    if-le v4, v10, :cond_d

    .line 459
    invoke-virtual {v13, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)V

    .line 466
    .end local v10           #startPos:I
    .end local v12           #testChar:C
    :cond_b
    :goto_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initializePath(Ljava/lang/String;)V

    .line 473
    if-eqz p1, :cond_3

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v15, :cond_e

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPort()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v15, :cond_3

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto/16 :goto_0

    .line 453
    .restart local v10       #startPos:I
    .restart local v12       #testChar:C
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 454
    goto :goto_1

    .line 462
    :cond_d
    const-string v15, ""

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_2

    .line 498
    .end local v10           #startPos:I
    .end local v12           #testChar:C
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v15, :cond_3

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v15, :cond_3

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPort()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 524
    :cond_f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 525
    .local v6, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, basePath:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 529
    const/16 v15, 0x2f

    invoke-virtual {v1, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 530
    .local v5, lastSlash:I
    const/4 v15, -0x1

    if-eq v5, v15, :cond_10

    .line 531
    const/4 v15, 0x0

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 536
    .end local v5           #lastSlash:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    const/4 v4, -0x1

    .line 540
    :goto_3
    const-string v15, "/./"

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_11

    .line 541
    const/4 v15, 0x0

    add-int/lit8 v16, v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v16, v4, 0x3

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    goto :goto_3

    .line 545
    :cond_11
    const-string v15, "/."

    invoke-virtual {v6, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 546
    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 551
    :cond_12
    const/4 v4, 0x1

    .line 552
    const/4 v8, -0x1

    .line 553
    .local v8, segIndex:I
    const/4 v11, 0x0

    .line 555
    .local v11, tempString:Ljava/lang/String;
    :goto_4
    const-string v15, "/../"

    invoke-virtual {v6, v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_15

    .line 556
    const/4 v15, 0x0

    const-string v16, "/../"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 557
    const/16 v15, 0x2f

    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 558
    const/4 v15, -0x1

    if-eq v8, v15, :cond_14

    .line 559
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ".."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 560
    const/4 v15, 0x0

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v16, v4, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 561
    move v4, v8

    .line 562
    goto :goto_4

    .line 564
    :cond_13
    add-int/lit8 v4, v4, 0x4

    .line 565
    goto :goto_4

    .line 567
    :cond_14
    add-int/lit8 v4, v4, 0x4

    .line 568
    goto :goto_4

    .line 572
    :cond_15
    const-string v15, "/.."

    invoke-virtual {v6, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 573
    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x3

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 574
    const/16 v15, 0x2f

    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 575
    const/4 v15, -0x1

    if-eq v8, v15, :cond_16

    .line 576
    const/4 v15, 0x0

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 579
    :cond_16
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .locals 13
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x3a

    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, index:I
    const/4 v6, 0x0

    .line 628
    .local v6, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 629
    .local v0, end:I
    const/4 v7, 0x0

    .line 630
    .local v7, testChar:C
    const/4 v8, 0x0

    .line 633
    .local v8, userinfo:Ljava/lang/String;
    invoke-virtual {p1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 634
    :goto_0
    if-ge v3, v0, :cond_0

    .line 635
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 636
    if-ne v7, v12, :cond_3

    .line 641
    :cond_0
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 642
    add-int/lit8 v3, v3, 0x1

    .line 646
    :cond_1
    const/4 v1, 0x0

    .line 647
    .local v1, host:Ljava/lang/String;
    move v6, v3

    .line 648
    :goto_1
    if-ge v3, v0, :cond_2

    .line 649
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 650
    if-ne v7, v11, :cond_4

    .line 655
    :cond_2
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 656
    const/4 v4, -0x1

    .line 657
    .local v4, port:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 659
    if-ne v7, v11, :cond_8

    .line 660
    add-int/lit8 v3, v3, 0x1

    .line 661
    move v6, v3

    .line 662
    :goto_2
    if-ge v3, v0, :cond_5

    .line 663
    add-int/lit8 v3, v3, 0x1

    .line 664
    goto :goto_2

    .line 639
    .end local v1           #host:Ljava/lang/String;
    .end local v4           #port:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 640
    goto :goto_0

    .line 653
    .restart local v1       #host:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 654
    goto :goto_1

    .line 665
    .restart local v4       #port:I
    :cond_5
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, portStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 667
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 668
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 669
    new-instance v9, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " is invalid. Port should only contain digits!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 667
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 675
    :cond_7
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 683
    .end local v2           #i:I
    .end local v5           #portStr:Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setPort(I)V

    .line 685
    invoke-virtual {p0, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 686
    return-void

    .line 677
    .restart local v2       #i:I
    .restart local v5       #portStr:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_4
.end method

.method private initializePath(Ljava/lang/String;)V
    .locals 8
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x25

    const/16 v5, 0x23

    .line 697
    if-nez p1, :cond_0

    .line 698
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v5, "Cannot initialize path from null string!"

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_0
    const/4 v1, 0x0

    .line 703
    .local v1, index:I
    const/4 v2, 0x0

    .line 704
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 705
    .local v0, end:I
    const/4 v3, 0x0

    .line 708
    .local v3, testChar:C
    :goto_0
    if-ge v1, v0, :cond_1

    .line 709
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 710
    if-eq v3, v7, :cond_1

    if-ne v3, v5, :cond_5

    .line 729
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 732
    if-ne v3, v7, :cond_3

    .line 733
    add-int/lit8 v1, v1, 0x1

    .line 734
    move v2, v1

    .line 735
    :goto_1
    if-ge v1, v0, :cond_2

    .line 736
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 737
    if-ne v3, v5, :cond_9

    .line 755
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 759
    :cond_3
    if-ne v3, v5, :cond_10

    .line 760
    add-int/lit8 v1, v1, 0x1

    .line 761
    move v2, v1

    .line 762
    :goto_2
    if-ge v1, v0, :cond_f

    .line 763
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 765
    if-ne v3, v6, :cond_d

    .line 766
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_e

    .line 769
    :cond_4
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v5, "Fragment contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 714
    :cond_5
    if-ne v3, v6, :cond_7

    .line 715
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 718
    :cond_6
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v5, "Path contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 722
    :cond_7
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 724
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Path contains invalid character: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 728
    goto/16 :goto_0

    .line 740
    :cond_9
    if-ne v3, v6, :cond_b

    .line 741
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_a

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_c

    .line 744
    :cond_a
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v5, "Query string contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_b
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c

    .line 750
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Query string contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 753
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 754
    goto/16 :goto_1

    .line 773
    :cond_d
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_e

    .line 775
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Fragment contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 779
    goto/16 :goto_2

    .line 780
    :cond_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 782
    :cond_10
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 6
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 594
    .local v3, uriSpecLen:I
    const/4 v0, 0x0

    .line 595
    .local v0, index:I
    const/4 v1, 0x0

    .line 596
    .local v1, scheme:Ljava/lang/String;
    const/4 v2, 0x0

    .line 598
    .local v2, testChar:C
    :goto_0
    if-ge v0, v3, :cond_0

    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 600
    const/16 v4, 0x3a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_0

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_0

    const/16 v4, 0x23

    if-ne v2, v4, :cond_1

    .line 606
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 609
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v5, "No scheme found in URI."

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 605
    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private static isAlpha(C)Z
    .locals 1
    .parameter "p_char"

    .prologue
    .line 1378
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 1
    .parameter "p_char"

    .prologue
    .line 1388
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5
    .parameter "p_scheme"

    .prologue
    const/4 v2, 0x0

    .line 1249
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v2

    .line 1253
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1259
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1260
    .local v1, testChar:C
    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlphanum(C)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "+-."

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1266
    .end local v1           #testChar:C
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .parameter "p_char"

    .prologue
    .line 1357
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1
    .parameter "p_char"

    .prologue
    .line 1367
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 2
    .parameter "p_char"

    .prologue
    .line 1398
    const-string v0, ";/?:@&=+$,[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 5
    .parameter "p_uric"

    .prologue
    const/4 v3, 0x0

    .line 1419
    if-nez p0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return v3

    .line 1422
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1423
    .local v0, end:I
    const/4 v2, 0x0

    .line 1424
    .local v2, testChar:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1425
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1426
    const/16 v4, 0x25

    if-ne v2, v4, :cond_3

    .line 1427
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1433
    add-int/lit8 v1, v1, 0x2

    .line 1424
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1437
    :cond_3
    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 1445
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 2
    .parameter "p_char"

    .prologue
    .line 1407
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-_.!~*\'()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 9
    .parameter "p_address"

    .prologue
    const/16 v8, 0x2e

    const/4 v6, 0x0

    .line 1281
    if-nez p0, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v6

    .line 1285
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, address:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1287
    .local v0, addrLength:I
    if-eqz v0, :cond_0

    const/16 v7, 0xff

    if-gt v0, v7, :cond_0

    .line 1291
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1298
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1299
    .local v3, index:I
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1300
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1303
    :cond_2
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v0, :cond_8

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1305
    const/4 v4, 0x0

    .line 1310
    .local v4, numDots:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 1311
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1312
    .local v5, testChar:C
    if-ne v5, v8, :cond_5

    .line 1313
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1317
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1310
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1319
    :cond_5
    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 1323
    .end local v5           #testChar:C
    :cond_6
    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    .line 1347
    .end local v4           #numDots:I
    :cond_7
    const/4 v6, 0x1

    goto :goto_0

    .line 1332
    .end local v2           #i:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 1333
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1334
    .restart local v5       #testChar:C
    if-ne v5, v8, :cond_a

    .line 1335
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1338
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_9

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1332
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1342
    :cond_a
    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_9

    goto/16 :goto_0
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .locals 3
    .parameter "p_addToPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1077
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Path contains invalid character!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1087
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1088
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1091
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1094
    :cond_5
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1095
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1099
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1103
    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1104
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1107
    :cond_8
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "p_test"

    .prologue
    .line 1185
    instance-of v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 1186
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    .line 1187
    .local v0, testURI:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_3
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    iget v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1206
    :cond_b
    const/4 v1, 0x1

    .line 1209
    .end local v0           #testURI:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_0
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2
    .parameter "p_includeQueryString"
    .parameter "p_includeFragment"

    .prologue
    .line 880
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 882
    .local v0, pathString:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 883
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 884
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 888
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 800
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v0, schemespec:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    if-eq v1, v2, :cond_1

    .line 803
    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 812
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    :cond_3
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    if-eq v1, v2, :cond_4

    .line 816
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 817
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 820
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 821
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 825
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 826
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    :cond_6
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 830
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 831
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isGenericURI()Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 2
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1156
    if-nez p1, :cond_0

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1174
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1160
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Fragment can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1164
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Fragment cannot be set when path is null!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_2
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1168
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Fragment contains invalid character!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_3
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .parameter "p_host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1003
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1005
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 1010
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1011
    return-void

    .line 1007
    :cond_2
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Host is not a well formed address!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .parameter "p_path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1052
    if-nez p1, :cond_0

    .line 1053
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1054
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1055
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->initializePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 2
    .parameter "p_port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1025
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1027
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Port cannot be set when host is null!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1032
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Invalid port number!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_1
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_port:I

    .line 1035
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .parameter "p_queryString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1124
    if-nez p1, :cond_0

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1142
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Query string can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1132
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Query string cannot be set when path is null!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_2
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1136
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Query string contains invalid character!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_3
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 2
    .parameter "p_scheme"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "Cannot set scheme from null string!"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v1, "The scheme is not conformant."

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 945
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 6
    .parameter "p_userinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 957
    if-nez p1, :cond_1

    .line 958
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 989
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 990
    return-void

    .line 961
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 962
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v4, "Userinfo cannot be set when host is null!"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 968
    :cond_2
    const/4 v1, 0x0

    .line 969
    .local v1, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 970
    .local v0, end:I
    const/4 v2, 0x0

    .line 971
    .local v2, testChar:C
    :goto_0
    if-ge v1, v0, :cond_0

    .line 972
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 973
    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    .line 974
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 977
    :cond_3
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    const-string v4, "Userinfo contains invalid escape sequence!"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 981
    :cond_4
    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ";:&=+$,"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 983
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Userinfo contains invalid character:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 986
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 987
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1220
    .local v0, uriSpecString:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1222
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
