.class public Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
.super Ljava/lang/Object;
.source "XMLEntityStorage.java"


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gEscapedUserDir:Ljava/lang/String;

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;


# instance fields
.field protected fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

.field protected fEntities:Ljava/util/Hashtable;

.field private fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

.field protected fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field protected fWarnDuplicateEntityDef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v5, 0x80

    const/16 v8, 0x7f

    const/4 v7, 0x1

    .line 383
    new-array v4, v5, [Z

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    .line 385
    new-array v4, v5, [C

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    .line 387
    new-array v4, v5, [C

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    .line 388
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    .line 392
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    .line 393
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    .line 394
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 395
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aput-boolean v7, v4, v8

    .line 398
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    const/16 v5, 0x37

    aput-char v5, v4, v8

    .line 399
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    const/16 v5, 0x46

    aput-char v5, v4, v8

    .line 400
    const/16 v4, 0xf

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .line 402
    .local v1, escChs:[C
    array-length v3, v1

    .line 404
    .local v3, len:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 405
    aget-char v0, v1, v2

    .line 406
    .local v0, ch:C
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aput-boolean v7, v4, v0

    .line 407
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 408
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .end local v0           #ch:C
    :cond_1
    return-void

    .line 388
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data

    .line 400
    :array_1
    .array-data 0x2
        0x20t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x23t 0x0t
        0x25t 0x0t
        0x22t 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x7ct 0x0t
        0x5ct 0x0t
        0x5et 0x0t
        0x7et 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x60t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 1
    .parameter "propertyManager"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    .line 88
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V
    .locals 1
    .parameter "entityManager"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    .line 95
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 96
    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "systemId"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "systemId"
    .parameter "baseSystemId"

    .prologue
    .line 533
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 586
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 538
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v15, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_3

    .line 539
    .local v15, uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    if-nez v15, :cond_0

    .line 547
    .end local v15           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 550
    .local v14, id:Ljava/lang/String;
    const/4 v12, 0x0

    .line 551
    .local v12, base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    const/4 v15, 0x0

    .line 553
    .restart local v15       #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    :cond_2
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, dir:Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v5           #dir:Ljava/lang/String;
    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .local v2, base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_2
    :try_start_2
    new-instance v16, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v14}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/URI;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v15           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .local v16, uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    move-object/from16 v15, v16

    .line 583
    .end local v16           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v15       #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_3
    if-eqz v15, :cond_0

    .line 586
    invoke-virtual {v15}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 560
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :cond_3
    :try_start_3
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_2

    .line 562
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :catch_0
    move-exception v13

    .line 563
    .local v13, e:Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
    const/16 v3, 0x3a

    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 566
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    const-string v7, "file"

    const-string v8, ""

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_2

    .line 569
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :cond_4
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v5

    .line 570
    .restart local v5       #dir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_2

    .line 578
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .end local v5           #dir:Ljava/lang/String;
    .end local v13           #e:Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :catch_1
    move-exception v3

    move-object v2, v12

    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3

    .line 543
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .end local v14           #id:Ljava/lang/String;
    .end local v15           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x2f

    .line 603
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 607
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 609
    .local v1, ch1:C
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    .line 610
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 611
    .local v0, ch0:C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 612
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 622
    .end local v0           #ch0:C
    .end local v1           #ch1:C
    :cond_0
    :goto_0
    return-object p0

    .line 616
    .restart local v1       #ch1:C
    :cond_1
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 617
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static declared-synchronized getUserDir()Ljava/lang/String;
    .locals 12

    .prologue
    .line 423
    const-class v10, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    monitor-enter v10

    :try_start_0
    const-string v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .local v8, userDir:Ljava/lang/String;
    :try_start_1
    const-string v9, "user.dir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 431
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 432
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    .end local v8           #userDir:Ljava/lang/String;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v5, i:I
    .local v6, len:I
    .local v7, separator:C
    :goto_1
    monitor-exit v10

    return-object v8

    .line 436
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    .restart local v8       #userDir:Ljava/lang/String;
    :cond_0
    :try_start_3
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 437
    sget-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;

    goto :goto_1

    .line 441
    :cond_1
    sput-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    .line 443
    sget-char v7, Ljava/io/File;->separatorChar:C

    .line 444
    .restart local v7       #separator:C
    const/16 v9, 0x2f

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 446
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 447
    .restart local v6       #len:I
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v6, 0x3

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 449
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    const/4 v9, 0x2

    if-lt v6, v9, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3a

    if-ne v9, v11, :cond_2

    .line 450
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 451
    .local v3, ch:I
    const/16 v9, 0x41

    if-lt v3, v9, :cond_2

    const/16 v9, 0x5a

    if-gt v3, v9, :cond_2

    .line 452
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    .end local v3           #ch:I
    :cond_2
    const/4 v5, 0x0

    .line 458
    .restart local v5       #i:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 459
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 461
    .restart local v3       #ch:I
    const/16 v9, 0x80

    if-lt v3, v9, :cond_4

    .line 475
    .end local v3           #ch:I
    :cond_3
    if-ge v5, v6, :cond_8

    .line 477
    const/4 v2, 0x0

    .line 480
    .local v2, bytes:[B
    :try_start_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    .line 485
    :try_start_5
    array-length v6, v2

    .line 488
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_8

    .line 489
    aget-byte v0, v2, v5

    .line 491
    .local v0, b:B
    if-gez v0, :cond_6

    .line 492
    add-int/lit16 v3, v0, 0x100

    .line 493
    .restart local v3       #ch:I
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    shr-int/lit8 v11, v3, 0x4

    aget-char v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gHexChs:[C

    and-int/lit8 v11, v3, 0xf

    aget-char v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    .end local v3           #ch:I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 463
    .end local v0           #b:B
    .end local v2           #bytes:[B
    .restart local v3       #ch:I
    :cond_4
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_5

    .line 464
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 466
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 470
    :cond_5
    int-to-char v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 423
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #ch:I
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 481
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #bytes:[B
    .restart local v5       #i:I
    .restart local v6       #len:I
    .restart local v7       #separator:C
    :catch_0
    move-exception v4

    .line 483
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_1

    .line 497
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #b:B
    :cond_6
    :try_start_6
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_7

    .line 498
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 503
    :cond_7
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 509
    .end local v0           #b:B
    .end local v2           #bytes:[B
    :cond_8
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 510
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 512
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;

    .line 514
    sget-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 427
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "publicId"
    .parameter "literalSystemId"
    .parameter "baseSystemId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 217
    if-nez p4, :cond_0

    .line 228
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 244
    new-instance v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {p3, p4}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v4}, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 251
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v0           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 176
    new-instance v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;

    invoke-direct {v0, p1, p2, v5}, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v0           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "baseSystemId"
    .parameter "notation"

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 318
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    new-instance v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p5, v5}, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    .line 322
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v0           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public getDeclaredEntities()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 2
    .parameter "entityName"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 359
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 2
    .parameter "entityName"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 291
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 294
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity;->isEntityDeclInExternalSubset()Z

    move-result v1

    goto :goto_0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 2
    .parameter "entityName"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 274
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity;->isExternal()Z

    move-result v1

    goto :goto_0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 2
    .parameter "entityName"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 344
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 347
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity;->isUnparsed()Z

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 109
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 1
    .parameter "propertyManager"

    .prologue
    .line 100
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 101
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 104
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    const-string v1, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 139
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 142
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    goto :goto_0
.end method
