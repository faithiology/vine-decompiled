.class public Lcom/amazonaws/javax/xml/stream/XMLEntityManager;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String; = null

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field protected static final STAX_ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/stax-entity-resolver"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gEscapedUserDir:Ljava/lang/String;

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;


# instance fields
.field protected final defaultEncoding:[Ljava/lang/Object;

.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field protected fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected fEntities:Ljava/util/Hashtable;

.field protected fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

.field protected fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

.field protected fEntityResolver:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityStack:Ljava/util/Stack;

.field protected fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fInExternalSubset:Z

.field protected fOwnReaders:Ljava/util/Vector;

.field protected fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field private final fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

.field protected fStandalone:Z

.field protected fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field protected fValidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 198
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://xml.org/sax/features/validation"

    aput-object v5, v4, v9

    const-string v5, "http://xml.org/sax/features/external-general-entities"

    aput-object v5, v4, v8

    const-string v5, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v5, v4, v10

    const-string v5, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    aput-object v6, v4, v5

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 207
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Boolean;

    aput-object v7, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v11

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 216
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v5, v4, v9

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v4, v8

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v4, v10

    const-string v5, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v6, v4, v5

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 225
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v9

    aput-object v7, v4, v8

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x2000

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 233
    const-string v4, "[xml]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    .line 234
    const-string v4, "[dtd]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    .line 1184
    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    .line 1186
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    .line 1188
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    .line 1189
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    .line 1193
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    .line 1194
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v8, v4, v2

    .line 1195
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 1196
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 1193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    :cond_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v5, 0x7f

    aput-boolean v8, v4, v5

    .line 1199
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v5, 0x7f

    const/16 v6, 0x37

    aput-char v6, v4, v5

    .line 1200
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v5, 0x7f

    const/16 v6, 0x46

    aput-char v6, v4, v5

    .line 1201
    const/16 v4, 0xf

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .line 1203
    .local v1, escChs:[C
    array-length v3, v1

    .line 1205
    .local v3, len:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1206
    aget-char v0, v1, v2

    .line 1207
    .local v0, ch:C
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v8, v4, v0

    .line 1208
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 1209
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    .line 1205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1211
    .end local v0           #ch:C
    :cond_1
    return-void

    .line 1189
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

    .line 1201
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

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 314
    const/16 v0, 0x2000

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fBufferSize:I

    .line 324
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 336
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 339
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 342
    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UTF-8"

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 359
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    .line 865
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 371
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 372
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 373
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 5
    .parameter "propertyManager"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 314
    const/16 v0, 0x2000

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fBufferSize:I

    .line 324
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 336
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 339
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 342
    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UTF-8"

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 359
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    .line 865
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 377
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 380
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 381
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-direct {v0, p1, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 382
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 383
    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "systemId"

    .prologue
    .line 1176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "systemId"
    .parameter "baseSystemId"

    .prologue
    .line 1334
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1387
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1339
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v15, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1340
    .local v15, uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    if-nez v15, :cond_0

    .line 1348
    .end local v15           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1351
    .local v14, id:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1352
    .local v12, base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    const/4 v15, 0x0

    .line 1354
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

    .line 1356
    :cond_2
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getUserDir()Ljava/lang/String;

    move-result-object v5

    .line 1357
    .local v5, dir:Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    const-string v3, "file"

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1377
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

    .line 1384
    .end local v16           #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v15       #uri:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :goto_3
    if-eqz v15, :cond_0

    .line 1387
    invoke-virtual {v15}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1361
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :cond_3
    :try_start_3
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_2

    .line 1363
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :catch_0
    move-exception v13

    .line 1364
    .local v13, e:Lcom/amazonaws/javax/xml/stream/xerces/util/URI$MalformedURIException;
    const/16 v3, 0x3a

    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1367
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;

    const-string v7, "file"

    const-string v8, ""

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/amazonaws/javax/xml/stream/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    .end local v12           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v2       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    goto :goto_2

    .line 1370
    .end local v2           #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    .restart local v12       #base:Lcom/amazonaws/javax/xml/stream/xerces/util/URI;
    :cond_4
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getUserDir()Ljava/lang/String;

    move-result-object v5

    .line 1371
    .restart local v5       #dir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1372
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

    .line 1379
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

    .line 1344
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

    .line 1776
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1779
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1780
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1782
    .local v1, ch1:C
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    .line 1783
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1784
    .local v0, ch0:C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 1785
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1795
    .end local v0           #ch0:C
    .end local v1           #ch1:C
    :cond_0
    :goto_0
    return-object p0

    .line 1789
    .restart local v1       #ch1:C
    :cond_1
    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1790
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
    .line 1224
    const-class v10, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    monitor-enter v10

    :try_start_0
    const-string v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    .local v8, userDir:Ljava/lang/String;
    :try_start_1
    const-string v9, "user.dir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1232
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 1233
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1315
    .end local v8           #userDir:Ljava/lang/String;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v5, i:I
    .local v6, len:I
    .local v7, separator:C
    :goto_1
    monitor-exit v10

    return-object v8

    .line 1237
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    .restart local v8       #userDir:Ljava/lang/String;
    :cond_0
    :try_start_3
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1238
    sget-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;

    goto :goto_1

    .line 1242
    :cond_1
    sput-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gUserDir:Ljava/lang/String;

    .line 1244
    sget-char v7, Ljava/io/File;->separatorChar:C

    .line 1245
    .restart local v7       #separator:C
    const/16 v9, 0x2f

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 1247
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1248
    .restart local v6       #len:I
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v6, 0x3

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1250
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    const/4 v9, 0x2

    if-lt v6, v9, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3a

    if-ne v9, v11, :cond_2

    .line 1251
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1252
    .local v3, ch:I
    const/16 v9, 0x41

    if-lt v3, v9, :cond_2

    const/16 v9, 0x5a

    if-gt v3, v9, :cond_2

    .line 1253
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1258
    .end local v3           #ch:I
    :cond_2
    const/4 v5, 0x0

    .line 1259
    .restart local v5       #i:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 1260
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 1262
    .restart local v3       #ch:I
    const/16 v9, 0x80

    if-lt v3, v9, :cond_4

    .line 1276
    .end local v3           #ch:I
    :cond_3
    if-ge v5, v6, :cond_8

    .line 1278
    const/4 v2, 0x0

    .line 1281
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

    .line 1286
    :try_start_5
    array-length v6, v2

    .line 1289
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_8

    .line 1290
    aget-byte v0, v2, v5

    .line 1292
    .local v0, b:B
    if-gez v0, :cond_6

    .line 1293
    add-int/lit16 v3, v0, 0x100

    .line 1294
    .restart local v3       #ch:I
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1295
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v11, v3, 0x4

    aget-char v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1296
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v11, v3, 0xf

    aget-char v9, v9, v11

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1289
    .end local v3           #ch:I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1264
    .end local v0           #b:B
    .end local v2           #bytes:[B
    .restart local v3       #ch:I
    :cond_4
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_5

    .line 1265
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1266
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1267
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1259
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1271
    :cond_5
    int-to-char v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1224
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #ch:I
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 1282
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #bytes:[B
    .restart local v5       #i:I
    .restart local v6       #len:I
    .restart local v7       #separator:C
    :catch_0
    move-exception v4

    .line 1284
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_1

    .line 1298
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #b:B
    :cond_6
    :try_start_6
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_7

    .line 1299
    const/16 v9, 0x25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1300
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1301
    sget-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1304
    :cond_7
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1310
    .end local v0           #b:B
    .end local v2           #bytes:[B
    :cond_8
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1311
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1313
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;

    .line 1315
    sget-object v8, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1228
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #separator:C
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public closeReaders()V
    .locals 2

    .prologue
    .line 872
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 881
    return-void

    .line 875
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 11
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "isBigEndian"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    if-nez p2, :cond_0

    .line 1504
    const-string p2, "UTF-8"

    .line 1508
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1509
    .local v6, ENCODING:Ljava/lang/String;
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fBufferSize:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 1592
    :goto_0
    return-object v0

    .line 1515
    :cond_1
    const-string v0, "US-ASCII"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fBufferSize:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    goto :goto_0

    .line 1521
    :cond_2
    const-string v0, "ISO-10646-UCS-4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1522
    if-eqz p3, :cond_4

    .line 1523
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1524
    .local v7, isBE:Z
    if-eqz v7, :cond_3

    .line 1525
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1527
    :cond_3
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1530
    .end local v7           #isBE:Z
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EncodingByteOrderUnsupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1536
    :cond_5
    const-string v0, "ISO-10646-UCS-2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1537
    if-eqz p3, :cond_7

    .line 1538
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1539
    .restart local v7       #isBE:Z
    if-eqz v7, :cond_6

    .line 1540
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1542
    :cond_6
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1545
    .end local v7           #isBE:Z
    :cond_7
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EncodingByteOrderUnsupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1553
    :cond_8
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v9

    .line 1554
    .local v9, validIANA:Z
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v10

    .line 1555
    .local v10, validJava:Z
    if-eqz v9, :cond_9

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v0, :cond_a

    if-nez v10, :cond_a

    .line 1556
    :cond_9
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EncodingDeclInvalid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1568
    const-string p2, "ISO-8859-1"

    .line 1572
    :cond_a
    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1573
    .local v8, javaEncoding:Ljava/lang/String;
    if-nez v8, :cond_b

    .line 1574
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v0, :cond_c

    .line 1575
    move-object v8, p2

    .line 1592
    :cond_b
    :goto_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/16 :goto_0

    .line 1577
    :cond_c
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EncodingDeclInvalid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1582
    const-string v8, "ISO8859_1"

    goto :goto_1
.end method

.method public endEntity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_1

    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    :goto_0
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 917
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->setCurrentEntity(Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;)V

    .line 934
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 915
    .end local v0           #ex:Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endExternalSubset()V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 734
    return-void
.end method

.method public getColumnNumber()I
    .locals 4

    .prologue
    .line 1742
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_2

    .line 1743
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1744
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1758
    :goto_0
    return v3

    .line 1748
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1749
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_2

    .line 1750
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 1751
    .local v0, firstExternalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1752
    iget v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_0

    .line 1749
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1758
    .end local v0           #firstExternalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    return-object v0
.end method

.method protected getEncodingName([BI)[Ljava/lang/Object;
    .locals 10
    .parameter "b4"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3c

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1408
    if-ge p2, v5, :cond_0

    .line 1409
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 1479
    :goto_0
    return-object v4

    .line 1413
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v0, v4, 0xff

    .line 1414
    .local v0, b0:I
    aget-byte v4, p1, v7

    and-int/lit16 v1, v4, 0xff

    .line 1415
    .local v1, b1:I
    const/16 v4, 0xfe

    if-ne v0, v4, :cond_1

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    .line 1417
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1419
    :cond_1
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    const/16 v4, 0xfe

    if-ne v1, v4, :cond_2

    .line 1421
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1426
    :cond_2
    const/4 v4, 0x3

    if-ge p2, v4, :cond_3

    .line 1427
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    goto :goto_0

    .line 1431
    :cond_3
    aget-byte v4, p1, v5

    and-int/lit16 v2, v4, 0xff

    .line 1432
    .local v2, b2:I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_4

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_4

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_4

    .line 1433
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    goto :goto_0

    .line 1438
    :cond_4
    const/4 v4, 0x4

    if-ge p2, v4, :cond_5

    .line 1439
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    goto :goto_0

    .line 1443
    :cond_5
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 1444
    .local v3, b3:I
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-ne v3, v8, :cond_6

    .line 1446
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1448
    :cond_6
    if-ne v0, v8, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 1450
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1452
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v8, :cond_8

    if-nez v3, :cond_8

    .line 1455
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v9, v4, v7

    goto/16 :goto_0

    .line 1457
    :cond_8
    if-nez v0, :cond_9

    if-ne v1, v8, :cond_9

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 1460
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v9, v4, v7

    goto/16 :goto_0

    .line 1462
    :cond_9
    if-nez v0, :cond_a

    if-ne v1, v8, :cond_a

    if-nez v2, :cond_a

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_a

    .line 1466
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1468
    :cond_a
    if-ne v0, v8, :cond_b

    if-nez v1, :cond_b

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_b

    if-nez v3, :cond_b

    .line 1471
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1473
    :cond_b
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_c

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_c

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_c

    const/16 v4, 0x94

    if-ne v3, v4, :cond_c

    .line 1476
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "CP037"

    aput-object v5, v4, v6

    aput-object v9, v4, v7

    goto/16 :goto_0

    .line 1479
    :cond_c
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    return-object v0
.end method

.method public getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1625
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_2

    .line 1626
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1628
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    .line 1644
    :goto_0
    return-object v3

    .line 1632
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1633
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1634
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 1637
    .local v0, externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1639
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1633
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1644
    .end local v0           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 1132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1133
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 1137
    :goto_1
    return-object v1

    .line 1132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLineNumber()I
    .locals 4

    .prologue
    .line 1699
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_2

    .line 1700
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1701
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1715
    :goto_0
    return v3

    .line 1705
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1706
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_2

    .line 1707
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 1708
    .local v0, firstExternalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1709
    iget v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    goto :goto_0

    .line 1706
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1715
    .end local v0           #firstExternalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1658
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_2

    .line 1659
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1661
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    .line 1677
    :goto_0
    return-object v3

    .line 1665
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1666
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1667
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 1670
    .local v0, externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1672
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1666
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1677
    .end local v0           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 1150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1151
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1155
    :goto_1
    return-object v1

    .line 1150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStandalone:Z

    return v0
.end method

.method final print()V
    .locals 0

    .prologue
    .line 1854
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 4
    .parameter "propertyManager"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 942
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 944
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 946
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 947
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 949
    :try_start_0
    const-string v1, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 958
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 959
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 960
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fValidation:Z

    .line 961
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    .line 962
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    .line 963
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 966
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    goto :goto_0
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 994
    :try_start_0
    const-string v4, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fValidation:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_0
    :try_start_1
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_1
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    :goto_1
    :try_start_2
    const-string v4, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_2
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1014
    :goto_2
    :try_start_3
    const-string v4, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_3
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1022
    :goto_3
    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 1023
    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 1025
    :try_start_4
    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityResolver:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;
    :try_end_4
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1032
    :goto_4
    :try_start_5
    const-string v4, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    invoke-interface {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;
    :try_end_5
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1039
    :goto_5
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStandalone:Z

    .line 1040
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1041
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->removeAllElements()V

    .line 1043
    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 1065
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    .line 1066
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1067
    .local v2, keys:Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1068
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 1069
    .local v1, key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1070
    .local v3, value:Ljava/lang/Object;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 996
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #keys:Ljava/util/Enumeration;
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fValidation:Z

    goto :goto_0

    .line 1002
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v0

    .line 1003
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    goto :goto_1

    .line 1008
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v0

    .line 1009
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    goto :goto_2

    .line 1016
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .line 1017
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_3

    .line 1027
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .line 1028
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityResolver:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;

    goto :goto_4

    .line 1034
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .line 1035
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    goto :goto_5

    .line 1074
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    return-void
.end method

.method public resolveEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    .locals 8
    .parameter "resourceIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 517
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 572
    :cond_0
    :goto_0
    return-object v6

    .line 518
    :cond_1
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, publicId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, literalSystemId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, baseSystemId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, expandedSystemId:Ljava/lang/String;
    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 532
    .local v3, needExpand:Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v7, :cond_2

    .line 533
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_2

    .line 535
    const/4 v3, 0x1

    .line 537
    :cond_2
    if-eqz v3, :cond_3

    .line 538
    invoke-static {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    :cond_3
    const/4 v6, 0x0

    .line 542
    .local v6, xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityResolver:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;

    if-eqz v7, :cond_4

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    instance-of v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    if-eqz v7, :cond_6

    move-object v5, p1

    .line 545
    check-cast v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    .line 551
    :goto_2
    invoke-virtual {v5, v4, v2, v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityResolver:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v7, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-result-object v6

    .line 560
    .end local v5           #ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :cond_4
    if-nez v6, :cond_0

    .line 564
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .end local v6           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-direct {v6, v4, v2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6       #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    goto :goto_0

    .line 528
    .end local v3           #needExpand:Z
    .end local v6           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 548
    .restart local v3       #needExpand:Z
    .restart local v5       #ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    .restart local v6       #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    :cond_6
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 549
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    goto :goto_2
.end method

.method public resolveEntityAsPerStax(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    .locals 8
    .parameter "resourceIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v6

    .line 432
    :cond_1
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, publicId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, literalSystemId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, baseSystemId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, expandedSystemId:Ljava/lang/String;
    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 446
    .local v3, needExpand:Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v7, :cond_2

    .line 447
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_2

    .line 449
    const/4 v3, 0x1

    .line 451
    :cond_2
    if-eqz v3, :cond_3

    .line 452
    invoke-static {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    :cond_3
    const/4 v6, 0x0

    .line 456
    .local v6, xmlInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    if-eqz v7, :cond_4

    .line 460
    const/4 v5, 0x0

    .line 461
    .local v5, ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    instance-of v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    if-eqz v7, :cond_6

    move-object v5, p1

    .line 462
    check-cast v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    .line 468
    :goto_2
    invoke-virtual {v5, v4, v2, v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    invoke-virtual {v7, v5}, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->resolveEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    move-result-object v6

    .line 476
    .end local v5           #ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :cond_4
    if-nez v6, :cond_7

    .line 480
    new-instance v6, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    .end local v6           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    new-instance v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    invoke-direct {v7, v4, v2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 481
    .restart local v6       #xmlInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    goto :goto_0

    .line 442
    .end local v3           #needExpand:Z
    .end local v6           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 465
    .restart local v3       #needExpand:Z
    .restart local v5       #ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    .restart local v6       #xmlInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    :cond_6
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 466
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    goto :goto_2

    .line 481
    .end local v5           #ri:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :cond_7
    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->hasXMLStreamOrXMLEventReader()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0
.end method

.method public setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V
    .locals 0
    .parameter "entityHandler"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    .line 425
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "featureId"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1104
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, feature:Ljava/lang/String;
    const-string v1, "allow-java-encodings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 1111
    .end local v0           #feature:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1113
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0
    .parameter "standalone"

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fStandalone:Z

    .line 408
    return-void
.end method

.method public startDTDEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .parameter "xmlInputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 723
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 724
    return-void
.end method

.method public startDocumentEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .parameter "xmlInputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 708
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 709
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 26
    .parameter "name"
    .parameter "xmlInputSource"
    .parameter "literal"
    .parameter "isExternal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v24

    .line 757
    .local v24, publicId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    .line 758
    .local v22, literalSystemId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v17

    .line 759
    .local v17, baseSystemId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, encoding:Ljava/lang/String;
    const/16 v21, 0x0

    .line 763
    .local v21, isBigEndian:Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 764
    .local v7, stream:Ljava/io/InputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v8

    .line 765
    .local v8, reader:Ljava/io/Reader;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 766
    .local v20, expandedSystemId:Ljava/lang/String;
    if-nez v17, :cond_0

    .line 767
    move-object/from16 v17, v20

    .line 769
    :cond_0
    if-nez v8, :cond_4

    .line 770
    invoke-virtual/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v7

    .line 771
    if-nez v7, :cond_1

    .line 773
    new-instance v7, Ljava/io/BufferedInputStream;

    .end local v7           #stream:Ljava/io/InputStream;
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 776
    .restart local v7       #stream:Ljava/io/InputStream;
    :cond_1
    new-instance v25, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;Ljava/io/InputStream;)V

    .line 779
    .end local v7           #stream:Ljava/io/InputStream;
    .local v25, stream:Ljava/io/InputStream;
    if-nez v9, :cond_8

    .line 781
    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 782
    .local v16, b4:[B
    const/16 v18, 0x0

    .line 783
    .local v18, count:I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 784
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v16, v18

    .line 783
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 786
    :cond_2
    const/4 v4, 0x4

    move/from16 v0, v18

    if-ne v0, v4, :cond_7

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v19

    .line 788
    .local v19, encodingDesc:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v19, v4

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 789
    const/4 v4, 0x1

    aget-object v4, v19, v4

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v21, v4

    check-cast v21, Ljava/lang/Boolean;

    .line 790
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 791
    const/16 v23, 0x0

    .line 795
    .local v23, offset:I
    const/4 v4, 0x2

    move/from16 v0, v18

    if-le v0, v4, :cond_3

    const-string v4, "UTF-8"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 796
    const/4 v4, 0x0

    aget-byte v4, v16, v4

    and-int/lit16 v13, v4, 0xff

    .line 797
    .local v13, b0:I
    const/4 v4, 0x1

    aget-byte v4, v16, v4

    and-int/lit16 v14, v4, 0xff

    .line 798
    .local v14, b1:I
    const/4 v4, 0x2

    aget-byte v4, v16, v4

    and-int/lit16 v15, v4, 0xff

    .line 800
    .local v15, b2:I
    const/16 v4, 0xef

    if-ne v13, v4, :cond_3

    const/16 v4, 0xbb

    if-ne v14, v4, :cond_3

    const/16 v4, 0xbf

    if-ne v15, v4, :cond_3

    .line 802
    const-wide/16 v4, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 805
    .end local v13           #b0:I
    .end local v14           #b1:I
    .end local v15           #b2:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v8

    .end local v19           #encodingDesc:[Ljava/lang/Object;
    .end local v23           #offset:I
    :goto_1
    move-object/from16 v7, v25

    .line 831
    .end local v16           #b4:[B
    .end local v18           #count:I
    .end local v25           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_5

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_5
    new-instance v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v12, p4

    invoke-direct/range {v4 .. v12}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityReader:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->setCurrentEntity(Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    if-eqz v4, :cond_6

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 853
    :cond_6
    return-void

    .line 808
    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v16       #b4:[B
    .restart local v18       #count:I
    .restart local v25       #stream:Ljava/io/InputStream;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v8

    goto :goto_1

    .line 814
    .end local v16           #b4:[B
    .end local v18           #count:I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v8

    move-object/from16 v7, v25

    .end local v25           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 26
    .parameter "entityName"
    .parameter "literal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 591
    .local v11, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v11, :cond_1

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 593
    const/4 v10, 0x0

    .line 594
    .local v10, encoding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 695
    .end local v10           #encoding:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/Entity;->isExternal()Z

    move-result v15

    .line 603
    .local v15, external:Z
    if-eqz v15, :cond_8

    .line 604
    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/Entity;->isUnparsed()Z

    move-result v25

    .line 605
    .local v25, unparsed:Z
    const-string v4, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 606
    .local v21, parameter:Z
    if-nez v21, :cond_4

    const/16 v17, 0x1

    .line 607
    .local v17, general:Z
    :goto_1
    if-nez v25, :cond_3

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    if-nez v4, :cond_8

    .line 610
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 612
    const/4 v10, 0x0

    .restart local v10       #encoding:Ljava/lang/String;
    move-object/from16 v16, v11

    .line 613
    check-cast v16, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .line 617
    .local v16, externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_5

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v14

    .line 618
    .local v14, extLitSysId:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_6

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    .line 619
    .local v13, extBaseSysId:Ljava/lang/String;
    :goto_3
    invoke-static {v14, v13}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 620
    .local v12, expandedSystemId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4, v14, v13, v12}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    .end local v10           #encoding:Ljava/lang/String;
    .end local v12           #expandedSystemId:Ljava/lang/String;
    .end local v13           #extBaseSysId:Ljava/lang/String;
    .end local v14           #extLitSysId:Ljava/lang/String;
    .end local v16           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    .end local v17           #general:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 617
    .restart local v10       #encoding:Ljava/lang/String;
    .restart local v16       #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    .restart local v17       #general:Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 618
    .restart local v14       #extLitSysId:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 620
    .restart local v12       #expandedSystemId:Ljava/lang/String;
    .restart local v13       #extBaseSysId:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 631
    .end local v10           #encoding:Ljava/lang/String;
    .end local v12           #expandedSystemId:Ljava/lang/String;
    .end local v13           #extBaseSysId:Ljava/lang/String;
    .end local v14           #extLitSysId:Ljava/lang/String;
    .end local v16           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    .end local v17           #general:Z
    .end local v21           #parameter:Z
    .end local v25           #unparsed:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v23

    .line 632
    .local v23, size:I
    move/from16 v18, v23

    .local v18, i:I
    :goto_5
    if-ltz v18, :cond_10

    .line 633
    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 636
    .local v9, activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    :goto_6
    iget-object v4, v9, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_f

    .line 637
    move-object/from16 v22, p1

    .line 638
    .local v22, path:Ljava/lang/String;
    add-int/lit8 v20, v18, 0x1

    .local v20, j:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    check-cast v9, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 640
    .restart local v9       #activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v9, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 638
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 633
    .end local v9           #activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    .end local v20           #j:I
    .end local v22           #path:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/Entity;

    move-object v9, v4

    goto :goto_6

    .line 642
    .restart local v9       #activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    .restart local v20       #j:I
    .restart local v22       #path:Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 643
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "RecursiveReference"

    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    if-eqz v4, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 651
    const/4 v10, 0x0

    .line 652
    .restart local v10       #encoding:Ljava/lang/String;
    if-eqz v15, :cond_b

    move-object/from16 v16, v11

    .line 653
    check-cast v16, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .line 655
    .restart local v16       #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_c

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v14

    .line 656
    .restart local v14       #extLitSysId:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_d

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v13

    .line 657
    .restart local v13       #extBaseSysId:Ljava/lang/String;
    :goto_9
    invoke-static {v14, v13}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 658
    .restart local v12       #expandedSystemId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_e

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v5, v4, v14, v13, v12}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .end local v12           #expandedSystemId:Ljava/lang/String;
    .end local v13           #extBaseSysId:Ljava/lang/String;
    .end local v14           #extLitSysId:Ljava/lang/String;
    .end local v16           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    .restart local v16       #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    :cond_c
    const/4 v14, 0x0

    goto :goto_8

    .line 656
    .restart local v14       #extLitSysId:Ljava/lang/String;
    :cond_d
    const/4 v13, 0x0

    goto :goto_9

    .line 658
    .restart local v12       #expandedSystemId:Ljava/lang/String;
    .restart local v13       #extBaseSysId:Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto :goto_a

    .line 632
    .end local v10           #encoding:Ljava/lang/String;
    .end local v12           #expandedSystemId:Ljava/lang/String;
    .end local v13           #extBaseSysId:Ljava/lang/String;
    .end local v14           #extLitSysId:Ljava/lang/String;
    .end local v16           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    .end local v20           #j:I
    .end local v22           #path:Ljava/lang/String;
    :cond_f
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_5

    .line 672
    .end local v9           #activeEntity:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_10
    const/16 v24, 0x0

    .line 673
    .local v24, staxInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    const/4 v3, 0x0

    .line 675
    .local v3, xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    if-eqz v15, :cond_11

    move-object/from16 v16, v11

    .line 676
    check-cast v16, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .line 677
    .restart local v16       #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->resolveEntityAsPerStax(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    move-result-object v24

    .line 683
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->getXMLInputSource()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    .line 693
    .end local v16           #externalEntity:Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2, v15}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;ZZ)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v19, v11

    .line 687
    check-cast v19, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;

    .line 688
    .local v19, internalEntity:Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 689
    .local v7, reader:Ljava/io/Reader;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .end local v3           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .restart local v3       #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    goto :goto_b
.end method

.method public startExternalSubset()V
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 730
    return-void
.end method

.method public test()V
    .locals 5

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "entityUsecase1"

    const/4 v2, 0x0

    const-string v3, "/space/home/stax/sun/6thJan2004/zephyr/data/test.txt"

    const-string v4, "/space/home/stax/sun/6thJan2004/zephyr/data/entity.xml"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "entityUsecase2"

    const-string v2, "<Test>value</Test>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "entityUsecase3"

    const-string v2, "value3"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "text"

    const-string v2, "Hello World."

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "empty-element"

    const-string v2, "<foo/>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "balanced-element"

    const-string v2, "<foo></foo>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "balanced-element-with-text"

    const-string v2, "<foo>Hello, World</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "balanced-element-with-entity"

    const-string v2, "<foo>&text;</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "unbalanced-entity"

    const-string v2, "<foo>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "recursive-entity"

    const-string v2, "<foo>&recursive-entity2;</foo>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "recursive-entity2"

    const-string v2, "<bar>&recursive-entity3;</bar>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "recursive-entity3"

    const-string v2, "<baz>&recursive-entity;</baz>"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "ch"

    const-string v2, "&#x00A9;"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "ch1"

    const-string v2, "&#84;"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    const-string v1, "% ch2"

    const-string v2, "param"

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    return-void
.end method
