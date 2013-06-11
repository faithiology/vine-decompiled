.class public Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;
.super Lcom/amazonaws/javax/xml/stream/XMLEntityReader;
.source "XMLEntityReaderImpl.java"


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_SKIP_STRING:Z = false

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final validContent:[Z

.field public static final validNames:[Z


# instance fields
.field protected fAllowJavaEncodings:Z

.field protected fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

.field protected fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

.field protected fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field isExternal:Z

.field private listeners:Ljava/util/Vector;

.field scannedName:[C

.field whiteSpaceInfoNeeded:Z

.field whiteSpaceLen:I

.field whiteSpaceLookup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0x7f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    new-array v1, v2, [Z

    sput-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    .line 142
    new-array v1, v2, [Z

    sput-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    .line 185
    const/16 v0, 0x20

    .local v0, i:C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 186
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    aput-boolean v3, v1, v0

    .line 185
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 188
    :cond_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 189
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x26

    aput-boolean v4, v1, v2

    .line 190
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    .line 191
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x5d

    aput-boolean v4, v1, v2

    .line 193
    const/16 v0, 0x41

    .local v0, i:I
    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 194
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aput-boolean v3, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 197
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aput-boolean v3, v1, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 199
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 200
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aput-boolean v3, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 202
    :cond_3
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    .line 203
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x2e

    aput-boolean v3, v1, v2

    .line 204
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x3a

    aput-boolean v3, v1, v2

    .line 205
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x5f

    aput-boolean v3, v1, v2

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V
    .locals 3
    .parameter "propertyManager"
    .parameter "entityManager"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReader;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    .line 152
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 153
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 154
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 157
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 159
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 181
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 183
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 227
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V
    .locals 3
    .parameter "entityManager"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReader;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    .line 152
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 153
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 154
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 157
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 159
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 181
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 183
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 218
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 219
    return-void
.end method

.method private invokeListeners(I)V
    .locals 3
    .parameter "loadPos"

    .prologue
    .line 2059
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2060
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLBufferListener;

    .line 2061
    .local v1, listener:Lcom/amazonaws/javax/xml/stream/XMLBufferListener;
    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLBufferListener;->refresh(I)V

    .line 2059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2063
    .end local v1           #listener:Lcom/amazonaws/javax/xml/stream/XMLBufferListener;
    :cond_0
    return-void
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
    .line 1576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v0

    return v0
.end method

.method public arrangeCapacity(IZ)Z
    .locals 9
    .parameter "length"
    .parameter "changeEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1591
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    if-lt v4, p1, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return v2

    .line 1600
    :cond_1
    const/4 v0, 0x0

    .line 1602
    .local v0, entityChanged:Z
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_4

    .line 1603
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    array-length v4, v4

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_3

    .line 1604
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1605
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1606
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    .line 1607
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1610
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_2

    .line 1611
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1612
    .local v1, pos:I
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1613
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    invoke-virtual {p0, v4, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v0

    .line 1614
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v1, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1615
    if-eqz v0, :cond_2

    .line 1627
    .end local v1           #pos:I
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_0

    move v2, v3

    .line 1631
    goto :goto_0
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 12
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "isBigEndian"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1802
    if-nez p2, :cond_0

    .line 1803
    const-string p2, "UTF-8"

    .line 1807
    :cond_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    .local v0, ENCODING:Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1812
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 1891
    :goto_0
    return-object v5

    .line 1814
    :cond_1
    const-string v5, "US-ASCII"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1818
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    goto :goto_0

    .line 1820
    :cond_2
    const-string v5, "ISO-10646-UCS-4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1821
    if-eqz p3, :cond_4

    .line 1822
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1823
    .local v1, isBE:Z
    if-eqz v1, :cond_3

    .line 1824
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/16 v6, 0x8

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1826
    :cond_3
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    const/4 v6, 0x4

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1829
    .end local v1           #isBE:Z
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "EncodingByteOrderUnsupported"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1835
    :cond_5
    const-string v5, "ISO-10646-UCS-2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1836
    if-eqz p3, :cond_7

    .line 1837
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1838
    .restart local v1       #isBE:Z
    if-eqz v1, :cond_6

    .line 1839
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    invoke-direct {v5, p1, v10}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1841
    :cond_6
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    invoke-direct {v5, p1, v9}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    goto :goto_0

    .line 1844
    .end local v1           #isBE:Z
    :cond_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "EncodingByteOrderUnsupported"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1852
    :cond_8
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v3

    .line 1853
    .local v3, validIANA:Z
    invoke-static {p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v4

    .line 1854
    .local v4, validJava:Z
    if-eqz v3, :cond_9

    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    .line 1855
    :cond_9
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "EncodingDeclInvalid"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1867
    const-string p2, "ISO-8859-1"

    .line 1871
    :cond_a
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1872
    .local v2, javaEncoding:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 1873
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    if-eqz v5, :cond_c

    .line 1874
    move-object v2, p2

    .line 1891
    :cond_b
    :goto_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1876
    :cond_c
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "EncodingDeclInvalid"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p2, v8, v11

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1881
    const-string v2, "ISO8859_1"

    goto :goto_1
.end method

.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChar(I)I
    .locals 2
    .parameter "relative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharacterOffset()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    return-object v0
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

    .line 1907
    if-ge p2, v5, :cond_0

    .line 1908
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    .line 1979
    :goto_0
    return-object v4

    .line 1912
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v0, v4, 0xff

    .line 1913
    .local v0, b0:I
    aget-byte v4, p1, v7

    and-int/lit16 v1, v4, 0xff

    .line 1914
    .local v1, b1:I
    const/16 v4, 0xfe

    if-ne v0, v4, :cond_1

    const/16 v4, 0xff

    if-ne v1, v4, :cond_1

    .line 1916
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1918
    :cond_1
    const/16 v4, 0xff

    if-ne v0, v4, :cond_2

    const/16 v4, 0xfe

    if-ne v1, v4, :cond_2

    .line 1920
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1925
    :cond_2
    const/4 v4, 0x3

    if-ge p2, v4, :cond_3

    .line 1926
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 1930
    :cond_3
    aget-byte v4, p1, v5

    and-int/lit16 v2, v4, 0xff

    .line 1931
    .local v2, b2:I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_4

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_4

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_4

    .line 1932
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 1937
    :cond_4
    const/4 v4, 0x4

    if-ge p2, v4, :cond_5

    .line 1938
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto :goto_0

    .line 1942
    :cond_5
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 1943
    .local v3, b3:I
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-ne v3, v9, :cond_6

    .line 1945
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto :goto_0

    .line 1947
    :cond_6
    if-ne v0, v9, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 1949
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1951
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v9, :cond_8

    if-nez v3, :cond_8

    .line 1954
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 1956
    :cond_8
    if-nez v0, :cond_9

    if-ne v1, v9, :cond_9

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 1959
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "ISO-10646-UCS-4"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 1961
    :cond_9
    if-nez v0, :cond_a

    if-ne v1, v9, :cond_a

    if-nez v2, :cond_a

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_a

    .line 1965
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16BE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1967
    :cond_a
    if-ne v0, v9, :cond_b

    if-nez v1, :cond_b

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_b

    if-nez v3, :cond_b

    .line 1970
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-16LE"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    goto/16 :goto_0

    .line 1972
    :cond_b
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_c

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_c

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_c

    const/16 v4, 0x94

    if-ne v3, v4, :cond_c

    .line 1975
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "CP037"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0

    .line 1979
    :cond_c
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "UTF-8"

    aput-object v5, v4, v6

    aput-object v8, v4, v7

    goto/16 :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isSpace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1460
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final load(IZ)Z
    .locals 7
    .parameter "offset"
    .parameter "changeEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1733
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fLastCount:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    .line 1736
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    array-length v4, v4

    sub-int v2, v4, p1

    .line 1739
    .local v2, length:I
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v4, v5, p1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 1743
    .local v0, count:I
    const/4 v1, 0x0

    .line 1744
    .local v1, entityChanged:Z
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1745
    if-eqz v0, :cond_0

    .line 1747
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v0, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fLastCount:I

    .line 1748
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    add-int v4, v0, p1

    iput v4, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    .line 1749
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput p1, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    :cond_0
    :goto_1
    move v3, v1

    .line 1778
    :cond_1
    return v3

    .line 1736
    .end local v0           #count:I
    .end local v1           #entityChanged:Z
    .end local v2           #length:I
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/16 v2, 0x40

    goto :goto_0

    .line 1754
    .restart local v0       #count:I
    .restart local v1       #entityChanged:Z
    .restart local v2       #length:I
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput p1, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    .line 1755
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput p1, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1756
    const/4 v1, 0x1

    .line 1758
    if-eqz p2, :cond_0

    .line 1760
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->endEntity()V

    .line 1762
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_1

    .line 1766
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v4, v5, :cond_0

    .line 1767
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    goto :goto_1
.end method

.method public peekChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v1, v2, :cond_0

    .line 456
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v1, v2

    .line 474
    .local v0, c:I
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v1, :cond_1

    .line 475
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    .line 478
    .end local v0           #c:I
    :cond_1
    :goto_0
    return v0

    .line 475
    .restart local v0       #c:I
    :cond_2
    const/16 v0, 0xa

    goto :goto_0
.end method

.method final print()V
    .locals 0

    .prologue
    .line 2042
    return-void
.end method

.method public registerListener(Lcom/amazonaws/javax/xml/stream/XMLBufferListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2052
    :cond_0
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"

    .prologue
    const/4 v1, 0x0

    .line 236
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 237
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 238
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 241
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 242
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 243
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
    .line 263
    :try_start_0
    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 271
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 273
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    goto :goto_0
.end method

.method public scanChar()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 499
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v1, v2, :cond_0

    .line 500
    invoke-direct {p0, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 501
    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v1, v3

    .line 506
    .local v0, c:I
    if-eq v0, v7, :cond_1

    if-ne v0, v8, :cond_4

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v1, :cond_4

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 509
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v6, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 510
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v1, v2, :cond_2

    .line 511
    invoke-direct {p0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 512
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    int-to-char v2, v0

    aput-char v2, v1, v5

    .line 513
    invoke-virtual {p0, v6, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 515
    :cond_2
    if-ne v0, v8, :cond_4

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v1, :cond_4

    .line 516
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v1, v1, v3

    if-eq v1, v7, :cond_3

    .line 517
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 519
    :cond_3
    const/16 v0, 0xa

    .line 529
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 530
    return v0
.end method

.method public scanContent(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I
    .locals 14
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 887
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_2

    .line 888
    invoke-direct {p0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 889
    invoke-virtual {p0, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 899
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 900
    .local v4, offset:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v0, v6, v4

    .line 901
    .local v0, c:I
    const/4 v3, 0x0

    .line 902
    .local v3, newlines:I
    if-eq v0, v12, :cond_1

    if-ne v0, v13, :cond_9

    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v6, :cond_9

    .line 909
    :cond_1
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 910
    if-ne v0, v13, :cond_6

    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v6, :cond_6

    .line 911
    add-int/lit8 v3, v3, 0x1

    .line 912
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 913
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v11, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 914
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_3

    .line 915
    const/4 v4, 0x0

    .line 916
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 917
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 918
    invoke-virtual {p0, v3, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 949
    :goto_1
    move v1, v4

    .local v1, i:I
    :goto_2
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v1, v6, :cond_8

    .line 950
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aput-char v12, v6, v1

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 891
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v3           #newlines:I
    .end local v4           #offset:I
    :cond_2
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 892
    invoke-direct {p0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 893
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    aget-char v7, v7, v8

    aput-char v7, v6, v10

    .line 894
    invoke-virtual {p0, v11, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 895
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v10, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 922
    .restart local v0       #c:I
    .restart local v3       #newlines:I
    .restart local v4       #offset:I
    :cond_3
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v6, v6, v7

    if-ne v6, v12, :cond_5

    .line 923
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 924
    add-int/lit8 v4, v4, 0x1

    .line 948
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_1

    goto :goto_1

    .line 928
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 930
    goto :goto_3

    .line 931
    :cond_6
    if-ne v0, v12, :cond_7

    .line 932
    add-int/lit8 v3, v3, 0x1

    .line 933
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 934
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v11, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 935
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_4

    .line 936
    const/4 v4, 0x0

    .line 937
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 938
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 939
    invoke-virtual {p0, v3, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    .line 945
    :cond_7
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_1

    .line 952
    .restart local v1       #i:I
    :cond_8
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v2, v6, v4

    .line 953
    .local v2, length:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_9

    .line 956
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 963
    const/4 v6, -0x1

    .line 1007
    .end local v1           #i:I
    :goto_4
    return v6

    .line 973
    .end local v2           #length:I
    :cond_9
    const/4 v5, 0x0

    .line 974
    .local v5, vc:Z
    :cond_a
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v6, v7, :cond_b

    .line 975
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v6, v8

    .line 976
    const/16 v6, 0x7f

    if-ge v0, v6, :cond_d

    .line 977
    sget-object v6, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    aget-boolean v5, v6, v0

    .line 980
    :goto_5
    if-nez v5, :cond_a

    .line 981
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 985
    :cond_b
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v2, v6, v4

    .line 986
    .restart local v2       #length:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    sub-int v8, v2, v3

    add-int/2addr v7, v8

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 988
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {p1, v6, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 991
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-eq v6, v7, :cond_e

    .line 992
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 995
    if-ne v0, v13, :cond_c

    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v6, :cond_c

    .line 996
    const/16 v0, 0xa

    :cond_c
    :goto_6
    move v6, v0

    .line 1007
    goto :goto_4

    .line 979
    .end local v2           #length:I
    :cond_d
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isContent(I)Z

    move-result v5

    goto :goto_5

    .line 1000
    .restart local v2       #length:I
    :cond_e
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z
    .locals 16
    .parameter "delimiter"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v5, 0x0

    .line 1227
    .local v5, done:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1228
    .local v3, delimLen:I
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1238
    .local v2, charAt0:C
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v10, v11, :cond_2

    .line 1239
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1240
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1249
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    sub-int/2addr v11, v3

    if-lt v10, v11, :cond_3

    .line 1251
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v7, v10, v11

    .line 1253
    .local v7, length:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/2addr v11, v12

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1255
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1256
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1257
    const/4 v10, 0x0

    .line 1380
    :goto_1
    return v10

    .line 1242
    .end local v7           #length:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    sub-int/2addr v11, v3

    if-lt v10, v11, :cond_1

    .line 1243
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v15, v15, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v14, v15

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v11, 0x0

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 1261
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v9, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1262
    .local v9, offset:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v1, v10, v9

    .line 1263
    .local v1, c:I
    const/4 v8, 0x0

    .line 1264
    .local v8, newlines:I
    const/16 v10, 0xa

    if-eq v1, v10, :cond_4

    const/16 v10, 0xd

    if-ne v1, v10, :cond_b

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v10, :cond_b

    .line 1271
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v12, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v1, v10, v12

    .line 1272
    const/16 v10, 0xd

    if-ne v1, v10, :cond_8

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v10, :cond_8

    .line 1273
    add-int/lit8 v8, v8, 0x1

    .line 1274
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1275
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v11, 0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1276
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v10, v11, :cond_5

    .line 1277
    const/4 v9, 0x0

    .line 1278
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v8, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1280
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1312
    :goto_2
    move v6, v9

    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v6, v10, :cond_a

    .line 1313
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/16 v11, 0xa

    aput-char v11, v10, v6

    .line 1312
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1284
    .end local v6           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v10, v10, v11

    const/16 v11, 0xa

    if-ne v10, v11, :cond_7

    .line 1285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1286
    add-int/lit8 v9, v9, 0x1

    .line 1311
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_4

    goto :goto_2

    .line 1290
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 1292
    goto :goto_4

    .line 1293
    :cond_8
    const/16 v10, 0xa

    if-ne v1, v10, :cond_9

    .line 1294
    add-int/lit8 v8, v8, 0x1

    .line 1295
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1296
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v11, 0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1297
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v10, v11, :cond_6

    .line 1298
    const/4 v9, 0x0

    .line 1299
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v8, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v8, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    .line 1302
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_2

    .line 1308
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_2

    .line 1315
    .restart local v6       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v7, v10, v9

    .line 1316
    .restart local v7       #length:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_b

    .line 1317
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1323
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1333
    .end local v6           #i:I
    .end local v7           #length:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v10, v11, :cond_c

    .line 1334
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v12, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v1, v10, v12

    .line 1335
    if-ne v1, v2, :cond_11

    .line 1337
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v4, v10, -0x1

    .line 1338
    .local v4, delimOffset:I
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_5
    if-ge v6, v3, :cond_f

    .line 1339
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v10, v11, :cond_e

    .line 1340
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v11, v6

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1366
    .end local v4           #delimOffset:I
    .end local v6           #i:I
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v7, v10, v9

    .line 1367
    .restart local v7       #length:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    sub-int v12, v7, v8

    add-int/2addr v11, v12

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1368
    if-eqz v5, :cond_d

    .line 1369
    sub-int/2addr v7, v3

    .line 1371
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1379
    if-eqz v5, :cond_0

    .line 1380
    if-nez v5, :cond_14

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1343
    .end local v7           #length:I
    .restart local v4       #delimOffset:I
    .restart local v6       #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v12, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v1, v10, v12

    .line 1344
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v1, :cond_10

    .line 1345
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v11, v6

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1349
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int v11, v4, v3

    if-ne v10, v11, :cond_b

    .line 1350
    const/4 v5, 0x1

    .line 1351
    goto :goto_6

    .line 1338
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1354
    .end local v4           #delimOffset:I
    .end local v6           #i:I
    :cond_11
    const/16 v10, 0xa

    if-eq v1, v10, :cond_12

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v10, :cond_13

    const/16 v10, 0xd

    if-ne v1, v10, :cond_13

    .line 1355
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto :goto_6

    .line 1358
    :cond_13
    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1359
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1360
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v7, v10, v9

    .line 1361
    .restart local v7       #length:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    sub-int v12, v7, v8

    add-int/2addr v11, v12

    iput v11, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1362
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1363
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1380
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I
    .locals 11
    .parameter "quote"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_3

    .line 1048
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1049
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1060
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1061
    .local v4, offset:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v0, v7, v4

    .line 1062
    .local v0, c:I
    const/4 v3, 0x0

    .line 1063
    .local v3, newlines:I
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    if-eqz v7, :cond_1

    .line 1064
    const/4 v7, 0x0

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 1065
    :cond_1
    const/16 v7, 0xa

    if-eq v0, v7, :cond_2

    const/16 v7, 0xd

    if-ne v0, v7, :cond_a

    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v7, :cond_a

    .line 1072
    :cond_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v9, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 1073
    const/16 v7, 0xd

    if-ne v0, v7, :cond_7

    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v7, :cond_7

    .line 1074
    add-int/lit8 v3, v3, 0x1

    .line 1075
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1076
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1077
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_4

    .line 1078
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1079
    const/4 v4, 0x0

    .line 1080
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1081
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1120
    :goto_1
    const/4 v1, 0x0

    .line 1121
    .local v1, i:I
    move v1, v4

    :goto_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v1, v7, :cond_9

    .line 1122
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/16 v8, 0xa

    aput-char v8, v7, v1

    .line 1123
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    iget v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    aput v1, v7, v8

    .line 1121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1051
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v3           #newlines:I
    .end local v4           #offset:I
    :cond_3
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1052
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1053
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v10, v10, -0x1

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 1055
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1056
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 1085
    .restart local v0       #c:I
    .restart local v3       #newlines:I
    .restart local v4       #offset:I
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v7, v7, v8

    const/16 v8, 0xa

    if-ne v7, v8, :cond_6

    .line 1086
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1087
    add-int/lit8 v4, v4, 0x1

    .line 1119
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    goto :goto_1

    .line 1091
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1094
    goto :goto_3

    .line 1095
    :cond_7
    const/16 v7, 0xa

    if-ne v0, v7, :cond_8

    .line 1096
    add-int/lit8 v3, v3, 0x1

    .line 1097
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1098
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1099
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_5

    .line 1100
    const/4 v4, 0x0

    .line 1101
    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1102
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1103
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    .line 1116
    :cond_8
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_1

    .line 1126
    .restart local v1       #i:I
    :cond_9
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v2, v7, v4

    .line 1127
    .local v2, length:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_a

    .line 1128
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 1134
    const/4 v7, -0x1

    .line 1195
    .end local v1           #i:I
    :goto_4
    return v7

    .line 1144
    .end local v2           #length:I
    :cond_a
    const/4 v6, 0x1

    .line 1145
    .local v6, vc:Z
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v7, v8, :cond_e

    .line 1146
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v9, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 1147
    if-ne v0, p1, :cond_c

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->literal:Z

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-nez v7, :cond_d

    :cond_c
    const/16 v7, 0x25

    if-ne v0, v7, :cond_10

    .line 1148
    :cond_d
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1173
    :cond_e
    :goto_6
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v2, v7, v4

    .line 1174
    .restart local v2       #length:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    sub-int v9, v2, v3

    add-int/2addr v8, v9

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1175
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 1178
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-eq v7, v8, :cond_15

    .line 1179
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v7, v8

    .line 1183
    if-ne v0, p1, :cond_f

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->literal:Z

    if-eqz v7, :cond_f

    .line 1184
    const/4 v0, -0x1

    :cond_f
    :goto_7
    move v7, v0

    .line 1195
    goto :goto_4

    .line 1151
    .end local v2           #length:I
    :cond_10
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_11

    .line 1152
    sget-object v7, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    aget-boolean v6, v7, v0

    .line 1155
    :goto_8
    if-nez v6, :cond_12

    .line 1156
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    goto :goto_6

    .line 1154
    :cond_11
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isContent(I)Z

    move-result v6

    goto :goto_8

    .line 1160
    :cond_12
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    if-eqz v7, :cond_b

    .line 1161
    const/16 v7, 0x20

    if-eq v0, v7, :cond_13

    const/16 v7, 0x9

    if-ne v0, v7, :cond_b

    .line 1162
    :cond_13
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v8, v8

    if-ge v7, v8, :cond_14

    .line 1163
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    iget v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    goto/16 :goto_5

    .line 1165
    :cond_14
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x14

    new-array v5, v7, [I

    .line 1166
    .local v5, tmp:[I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v10, v10

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1167
    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 1168
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    iget v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    goto/16 :goto_5

    .line 1188
    .end local v5           #tmp:[I
    .restart local v2       #length:I
    :cond_15
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public scanName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 638
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_0

    .line 639
    invoke-direct {p0, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 640
    invoke-virtual {p0, v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 644
    :cond_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 645
    .local v2, offset:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v6, v6, v2

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 646
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    .line 647
    invoke-direct {p0, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 648
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v7, v7, v2

    aput-char v7, v6, v8

    .line 649
    const/4 v2, 0x0

    .line 650
    invoke-virtual {p0, v9, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 651
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 652
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, symbol:Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 708
    :cond_1
    :goto_0
    return-object v3

    .line 662
    .end local v3           #symbol:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 665
    .local v5, vc:Z
    :cond_3
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 666
    .local v0, c:C
    const/16 v6, 0x7f

    if-ge v0, v6, :cond_5

    .line 667
    sget-object v6, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aget-boolean v5, v6, v0

    .line 671
    :goto_1
    if-nez v5, :cond_6

    .line 694
    .end local v0           #c:C
    .end local v5           #vc:Z
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v1, v6, v2

    .line 695
    .local v1, length:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 698
    const/4 v3, 0x0

    .line 699
    .restart local v3       #symbol:Ljava/lang/String;
    if-lez v1, :cond_1

    .line 700
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    .line 701
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    goto :goto_0

    .line 669
    .end local v1           #length:I
    .end local v3           #symbol:Ljava/lang/String;
    .restart local v0       #c:C
    .restart local v5       #vc:Z
    :cond_5
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v5

    goto :goto_1

    .line 672
    :cond_6
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v6, :cond_3

    .line 673
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v1, v6, v2

    .line 674
    .restart local v1       #length:I
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 675
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v1, v6, :cond_7

    .line 677
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [C

    .line 678
    .local v4, tmp:[C
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-static {v6, v2, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-object v4, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 681
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 687
    .end local v4           #tmp:[C
    :goto_3
    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0, v1, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 684
    :cond_7
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-static {v6, v2, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 557
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_0

    .line 558
    invoke-direct {p0, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 559
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 563
    :cond_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 564
    .local v2, offset:I
    const/4 v5, 0x0

    .line 568
    .local v5, vc:Z
    :cond_1
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 569
    .local v0, c:C
    const/16 v6, 0x7f

    if-ge v0, v6, :cond_3

    .line 570
    sget-object v6, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aget-boolean v5, v6, v0

    .line 574
    :goto_0
    if-nez v5, :cond_4

    .line 597
    :goto_1
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v1, v6, v2

    .line 598
    .local v1, length:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 601
    const/4 v3, 0x0

    .line 602
    .local v3, symbol:Ljava/lang/String;
    if-lez v1, :cond_2

    .line 603
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    .line 610
    :cond_2
    return-object v3

    .line 572
    .end local v1           #length:I
    .end local v3           #symbol:Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v5

    goto :goto_0

    .line 576
    :cond_4
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v6, :cond_1

    .line 577
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v1, v6, v2

    .line 578
    .restart local v1       #length:I
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 579
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v1, v6, :cond_5

    .line 581
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [C

    .line 582
    .local v4, tmp:[C
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-static {v6, v2, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-object v4, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 585
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 591
    .end local v4           #tmp:[C
    :goto_2
    const/4 v2, 0x0

    .line 592
    invoke-virtual {p0, v1, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 588
    :cond_5
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-static {v6, v2, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 17
    .parameter "qname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v13, v14, :cond_0

    .line 743
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 744
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 754
    .local v7, offset:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v13, v13, v7

    invoke-static {v13}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v14, v13, :cond_1

    .line 756
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v15, v15, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v15, v15, v7

    aput-char v15, v13, v14

    .line 758
    const/4 v7, 0x0

    .line 760
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    .line 765
    .local v6, name:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6, v6, v14}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v13}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    .line 772
    const/4 v13, 0x1

    .line 853
    .end local v6           #name:Ljava/lang/String;
    :goto_0
    return v13

    .line 775
    :cond_1
    const/4 v2, -0x1

    .line 776
    .local v2, index:I
    const/4 v12, 0x0

    .line 780
    .local v12, vc:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v1, v13, v14

    .line 781
    .local v1, c:C
    const/16 v13, 0x7f

    if-ge v1, v13, :cond_4

    .line 782
    sget-object v13, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    aget-boolean v12, v13, v1

    .line 786
    :goto_1
    if-nez v12, :cond_5

    .line 817
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v4, v13, v7

    .line 818
    .local v4, length:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 819
    if-lez v4, :cond_a

    .line 820
    const/4 v8, 0x0

    .line 821
    .local v8, prefix:Ljava/lang/String;
    const/4 v5, 0x0

    .line 822
    .local v5, localpart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v10

    .line 824
    .local v10, rawname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v13}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    .line 825
    const/4 v13, -0x1

    if-eq v2, v13, :cond_9

    .line 826
    sub-int v9, v2, v7

    .line 827
    .local v9, prefixLength:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v13, v14, v7, v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    .line 829
    sub-int v13, v4, v9

    add-int/lit8 v3, v13, -0x1

    .line 830
    .local v3, len:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v13, v14, v15, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    .line 837
    .end local v3           #len:I
    .end local v9           #prefixLength:I
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5, v10, v13}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v13, 0x1

    goto :goto_0

    .line 784
    .end local v4           #length:I
    .end local v5           #localpart:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .end local v10           #rawname:Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v12

    goto :goto_1

    .line 787
    :cond_5
    const/16 v13, 0x3a

    if-ne v1, v13, :cond_6

    .line 788
    const/4 v13, -0x1

    if-ne v2, v13, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 793
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v14, v13, :cond_2

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    sub-int v4, v13, v7

    .line 795
    .restart local v4       #length:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v4, v13, :cond_8

    .line 798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v13, v13, 0x2

    new-array v11, v13, [C

    .line 799
    .local v11, tmp:[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v14, 0x0

    invoke-static {v13, v7, v11, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-object v11, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 802
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    mul-int/lit8 v14, v14, 0x2

    iput v14, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 808
    .end local v11           #tmp:[C
    :goto_4
    const/4 v13, -0x1

    if-eq v2, v13, :cond_7

    .line 809
    sub-int/2addr v2, v7

    .line 811
    :cond_7
    const/4 v7, 0x0

    .line 812
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_2

    .line 805
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    invoke-static {v13, v7, v14, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 835
    .restart local v5       #localpart:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    .restart local v10       #rawname:Ljava/lang/String;
    :cond_9
    move-object v5, v10

    goto/16 :goto_3

    .line 853
    .end local v1           #c:C
    .end local v2           #index:I
    .end local v4           #length:I
    .end local v5           #localpart:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    .end local v10           #rawname:Ljava/lang/String;
    .end local v12           #vc:Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public setCurrentEntity(Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;)V
    .locals 1
    .parameter "scannedEntity"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .line 283
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 288
    :cond_0
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, ENCODING:Ljava/lang/String;
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    .end local v0           #ENCODING:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 392
    .restart local v0       #ENCODING:Ljava/lang/String;
    :cond_2
    const-string v1, "ISO-10646-UCS-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 400
    :cond_4
    const-string v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 404
    :cond_5
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 416
    .end local v0           #ENCODING:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v2

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 417
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-object p1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-object p1, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public skipChar(I)Z
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1405
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    .line 1406
    invoke-direct {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1407
    invoke-virtual {p0, v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1411
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v3, v4

    .line 1412
    .local v0, cc:I
    if-ne v0, p1, :cond_2

    .line 1413
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1414
    if-ne p1, v5, :cond_1

    .line 1415
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1416
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v1, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1455
    :goto_0
    return v1

    .line 1419
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_0

    .line 1428
    :cond_2
    if-ne p1, v5, :cond_5

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v3, :cond_5

    .line 1430
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_3

    .line 1431
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1432
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    int-to-char v4, v0

    aput-char v4, v3, v2

    .line 1433
    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1435
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1436
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_4

    .line 1437
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1439
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1440
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v1, v2, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1455
    goto :goto_0
.end method

.method public skipSpaces()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1483
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v4, v5, :cond_0

    .line 1484
    invoke-direct {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1485
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1494
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-nez v4, :cond_2

    .line 1566
    :cond_1
    :goto_0
    return v2

    .line 1499
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v4, v5

    .line 1500
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    :cond_3
    const/4 v1, 0x0

    .line 1504
    .local v1, entityChanged:Z
    if-eq v0, v7, :cond_4

    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v4, :cond_9

    if-ne v0, v8, :cond_9

    .line 1505
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1506
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v3, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1507
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    .line 1508
    invoke-direct {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1509
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    int-to-char v5, v0

    aput-char v5, v4, v2

    .line 1510
    invoke-virtual {p0, v3, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v1

    .line 1511
    if-nez v1, :cond_8

    .line 1514
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput v2, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1519
    :cond_5
    if-ne v0, v8, :cond_6

    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v4, :cond_6

    .line 1522
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v4, v4, v6

    if-eq v4, v7, :cond_6

    .line 1523
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1531
    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 1532
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1535
    :cond_7
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v4, v5, :cond_a

    .line 1536
    invoke-direct {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1537
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    .line 1546
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-nez v4, :cond_a

    move v2, v3

    .line 1547
    goto/16 :goto_0

    .line 1515
    :cond_8
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-nez v4, :cond_5

    move v2, v3

    .line 1516
    goto/16 :goto_0

    .line 1528
    :cond_9
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_1

    .line 1551
    :cond_a
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v0, v4, v5

    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1557
    goto/16 :goto_0
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1650
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1653
    .local v5, length:I
    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1654
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v2, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1655
    .local v2, beforeSkip:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v7, v5

    add-int/lit8 v0, v7, -0x1

    .line 1662
    .local v0, afterSkip:I
    add-int/lit8 v3, v5, -0x1

    .line 1664
    .local v3, i:I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    aget-char v8, v8, v0

    if-ne v7, v8, :cond_0

    .line 1665
    add-int/lit8 v1, v0, -0x1

    .end local v0           #afterSkip:I
    .local v1, afterSkip:I
    if-ne v0, v2, :cond_1

    .line 1666
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1667
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1668
    const/4 v6, 0x1

    .line 1673
    .end local v1           #afterSkip:I
    .end local v2           #beforeSkip:I
    .end local v4           #i:I
    :cond_0
    return v6

    .restart local v1       #afterSkip:I
    .restart local v2       #beforeSkip:I
    .restart local v4       #i:I
    :cond_1
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    move v0, v1

    .end local v1           #afterSkip:I
    .restart local v0       #afterSkip:I
    goto :goto_0
.end method

.method public skipString([C)Z
    .locals 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1678
    array-length v4, p1

    .line 1681
    .local v4, length:I
    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1682
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1683
    .local v1, beforeSkip:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int v0, v6, v4

    .line 1689
    .local v0, afterSkip:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #beforeSkip:I
    .local v2, beforeSkip:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1690
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #beforeSkip:I
    .restart local v1       #beforeSkip:I
    aget-char v6, v6, v2

    aget-char v7, p1, v3

    if-eq v6, v7, :cond_1

    .line 1700
    .end local v0           #afterSkip:I
    .end local v1           #beforeSkip:I
    .end local v3           #i:I
    :cond_0
    :goto_1
    return v5

    .line 1689
    .restart local v0       #afterSkip:I
    .restart local v1       #beforeSkip:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #beforeSkip:I
    .restart local v2       #beforeSkip:I
    goto :goto_0

    .line 1694
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    .line 1695
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1696
    const/4 v5, 0x1

    goto :goto_1
.end method
