.class public final Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
.super Ljava/util/AbstractMap;
.source "XMLStreamWriterImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;,
        Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;,
        Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;,
        Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    }
.end annotation


# static fields
.field public static final CLOSE_EMPTY_ELEMENT:Ljava/lang/String; = "/>"

.field public static final CLOSE_END_TAG:C = '>'

.field public static final CLOSE_START_TAG:C = '>'

.field public static final DEFAULT_ENCODING:Ljava/lang/String; = " encoding=\"utf-8\""

.field public static final DEFAULT_XMLDECL:Ljava/lang/String; = "<?xml version=\"1.0\" ?>"

.field public static final DEFAULT_XML_VERSION:Ljava/lang/String; = "1.0"

.field public static final END_CDATA:Ljava/lang/String; = "]]>"

.field public static final END_COMMENT:Ljava/lang/String; = "-->"

.field public static final OPEN_END_TAG:Ljava/lang/String; = "</"

.field public static final OPEN_START_TAG:C = '<'

.field public static final OUTPUTSTREAM_PROPERTY:Ljava/lang/String; = "sjsxp-outputstream"

.field public static final SPACE:Ljava/lang/String; = " "

.field public static final START_CDATA:Ljava/lang/String; = "<![CDATA["

.field public static final START_COMMENT:Ljava/lang/String; = "<!--"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final DEFAULT_PREFIX:Ljava/lang/String;

.field fAttrNamespace:Ljava/util/HashMap;

.field private fAttributeCache:Ljava/util/ArrayList;

.field private fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

.field private fEncoder:Ljava/nio/charset/CharsetEncoder;

.field fEscapeCharacters:Z

.field private fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

.field private fIsRepairingNamespace:Z

.field private fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

.field private fNamespaceDecls:Ljava/util/ArrayList;

.field private fOutputStream:Ljava/io/OutputStream;

.field private fPrefixGen:Ljava/util/Random;

.field private fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field private final fReadOnlyIterator:Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

.field private fReuse:Z

.field private fStartTagOpened:Z

.field private fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field private fWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 3
    .parameter "sr"
    .parameter "encoding"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    .line 131
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 142
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 158
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    .line 160
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    .line 162
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    .line 167
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 172
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 179
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 181
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    .line 183
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReadOnlyIterator:Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    .line 193
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 200
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setOutput(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)V

    .line 252
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 253
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->init()V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 1
    .parameter "outputStream"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;-><init>(Ljava/io/Writer;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 1
    .parameter "outputStream"
    .parameter "encoding"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;-><init>(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "writer"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;-><init>(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReadOnlyIterator:Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    return-object v0
.end method

.method private addAttrNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    return-void
.end method

.method private checkUserNamespaceContext(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_0

    .line 1718
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, tmpURI:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1721
    const/4 v1, 0x1

    .line 1725
    .end local v0           #tmpURI:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private closeStartTag()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1522
    :try_start_0
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->peek()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v1

    .line 1524
    .local v1, currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    iget-boolean v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v8, :cond_7

    .line 1525
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->repair()V

    .line 1526
    const/4 v8, 0x1

    invoke-direct {p0, v1, v8}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)V

    .line 1528
    iget-object v8, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_0

    .line 1530
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v9, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1531
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1534
    :cond_0
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v9, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1536
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1537
    .local v5, len:I
    const/4 v6, 0x0

    .line 1539
    .local v6, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1540
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1542
    .restart local v6       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v6, :cond_1

    .line 1543
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v9, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v10, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1545
    iget-object v8, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v9, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1550
    :cond_2
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1552
    const/4 v0, 0x0

    .line 1554
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 1555
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1557
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1558
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1559
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1561
    .local v7, tmp:Ljava/lang/String;
    if-eqz v7, :cond_3

    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eq v7, v8, :cond_4

    .line 1562
    :cond_3
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1563
    if-nez v7, :cond_5

    .line 1564
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1566
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    .end local v7           #tmp:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->localpart:Ljava/lang/String;

    iget-object v10, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->value:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1569
    .restart local v7       #tmp:Ljava/lang/String;
    :cond_5
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1591
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .end local v1           #currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #len:I
    .end local v6           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v7           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1592
    .local v2, ex:Ljava/io/IOException;
    iput-boolean v11, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1593
    new-instance v8, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v8, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1578
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .restart local v1       #currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #len:I
    .restart local v6       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_6
    const/4 v8, 0x0

    :try_start_1
    iput-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    .line 1579
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1582
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #len:I
    .end local v6           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_7
    iget-boolean v8, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-eqz v8, :cond_8

    .line 1583
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1584
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->popContext()V

    .line 1585
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v9, "/>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1590
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1595
    return-void

    .line 1587
    :cond_8
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)V
    .locals 11
    .parameter "attr"
    .parameter "type"

    .prologue
    const/4 v10, 0x1

    .line 1611
    const/4 v6, 0x0

    .line 1614
    .local v6, tmpPrefix:Ljava/lang/String;
    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1615
    .local v4, prefix:Ljava/lang/String;
    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1616
    .local v7, uri:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1618
    .local v3, isSpecialCaseURI:Z
    if-eqz v4, :cond_0

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1619
    :cond_0
    if-nez v7, :cond_2

    .line 1680
    :cond_1
    :goto_0
    return-void

    .line 1623
    :cond_2
    const-string v8, ""

    if-ne v4, v8, :cond_3

    const-string v8, ""

    if-eq v7, v8, :cond_1

    .line 1626
    :cond_3
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v8, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1628
    const/4 v0, 0x0

    .line 1630
    .local v0, decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 1631
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1633
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_4

    .line 1634
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v8, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_0

    .line 1630
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1640
    :cond_5
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-virtual {v8, v7}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1642
    const-string v8, ""

    if-ne v6, v8, :cond_6

    .line 1643
    if-eq p2, v10, :cond_1

    .line 1646
    const/16 v8, 0xa

    if-ne p2, v8, :cond_6

    .line 1648
    invoke-direct {p0, v7}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1649
    const/4 v3, 0x1

    .line 1653
    :cond_6
    if-nez v6, :cond_9

    .line 1654
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v8, "zdef"

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v1, genPrefix:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_7

    .line 1657
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1656
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1660
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1661
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v8, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1666
    .end local v1           #genPrefix:Ljava/lang/StringBuffer;
    :goto_3
    if-nez v6, :cond_8

    .line 1667
    if-eqz v3, :cond_a

    .line 1668
    invoke-direct {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->addAttrNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v2           #i:I
    :cond_8
    :goto_4
    iput-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_0

    .line 1663
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v2       #i:I
    :cond_9
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v8, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1670
    :cond_a
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 1671
    .local v5, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const-string v8, "xmlns"

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v9, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4
.end method

.method private getAttrPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttrNamespace:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1689
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    .line 263
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    .line 264
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    .line 265
    new-instance v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-direct {v1, p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    .line 266
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    .line 269
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v2, "com.amazonaws.javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 270
    .local v0, ob:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 271
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v2, "escapeCharacters"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ob:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 273
    .restart local v0       #ob:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setEscapeCharacters(Z)V

    .line 274
    return-void
.end method

.method private isDefaultNamespace(Ljava/lang/String;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 1702
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, defaultNamespace:Ljava/lang/String;
    if-ne p1, v0, :cond_0

    .line 1705
    const/4 v1, 0x1

    .line 1708
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openStartTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 1602
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1603
    return-void
.end method

.method private setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 363
    if-eqz p2, :cond_1

    .line 364
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 379
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 369
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    .line 372
    :cond_1
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 373
    if-eqz p2, :cond_2

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    goto :goto_0
.end method

.method private setOutputUsingWriter(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 343
    instance-of v1, p1, Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_0

    .line 344
    check-cast p1, Ljava/io/OutputStreamWriter;

    .end local p1
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 349
    .end local v0           #charset:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 619
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 621
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, p3, v2, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 631
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private writeXMLContent(Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1437
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 1441
    :cond_0
    return-void
.end method

.method private writeXMLContent(Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "content"
    .parameter "escapeChars"
    .parameter "escapeDoubleQuotes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1453
    if-nez p2, :cond_0

    .line 1454
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1515
    :goto_0
    return-void

    .line 1460
    :cond_0
    const/4 v3, 0x0

    .line 1462
    .local v3, startWritePos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1464
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1465
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1467
    .local v0, ch:C
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1468
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1471
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&#x"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1472
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1473
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 1474
    add-int/lit8 v3, v2, 0x1

    .line 1464
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1478
    :cond_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 1501
    :sswitch_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1502
    if-eqz p3, :cond_2

    .line 1503
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&quot;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1507
    :goto_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    .line 1480
    :sswitch_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1481
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&lt;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1482
    add-int/lit8 v3, v2, 0x1

    .line 1484
    goto :goto_2

    .line 1487
    :sswitch_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1488
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1489
    add-int/lit8 v3, v2, 0x1

    .line 1491
    goto :goto_2

    .line 1494
    :sswitch_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1495
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&gt;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1496
    add-int/lit8 v3, v2, 0x1

    .line 1498
    goto :goto_2

    .line 1505
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 1514
    .end local v0           #ch:C
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v1, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1478
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private writeXMLContent([CIIZ)V
    .locals 6
    .parameter "content"
    .parameter "start"
    .parameter "length"
    .parameter "escapeChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    if-nez p4, :cond_0

    .line 1383
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 1433
    :goto_0
    return-void

    .line 1389
    :cond_0
    move v3, p2

    .line 1391
    .local v3, startWritePos:I
    add-int v1, p2, p3

    .line 1393
    .local v1, end:I
    move v2, p2

    .local v2, index:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1394
    aget-char v0, p1, v2

    .line 1396
    .local v0, ch:C
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1397
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    .line 1400
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&#x"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1401
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1402
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 1403
    add-int/lit8 v3, v2, 0x1

    .line 1393
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1407
    :cond_1
    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 1416
    :sswitch_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    .line 1417
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1418
    add-int/lit8 v3, v2, 0x1

    .line 1420
    goto :goto_2

    .line 1409
    :sswitch_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    .line 1410
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&lt;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1411
    add-int/lit8 v3, v2, 0x1

    .line 1413
    goto :goto_2

    .line 1423
    :sswitch_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v2, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    .line 1424
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v5, "&gt;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1425
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    .line 1432
    .end local v0           #ch:C
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    sub-int v5, v1, v3

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1407
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1080
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, " xmlns"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1082
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0, p2, v2, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 1092
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    return v0
.end method

.method checkForNull(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 1845
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1846
    :cond_0
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1847
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    .line 410
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 411
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->clear()V

    .line 414
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->reset()V

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 416
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2174
    const-string v0, "sjsxp-outputstream"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 10
    .parameter "attr1"
    .parameter "attr2"

    .prologue
    .line 1801
    const/4 v6, 0x0

    .line 1802
    .local v6, tmpPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1803
    .local v0, decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v1, 0x0

    .line 1805
    .local v1, done:Z
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->checkForNull(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1806
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->checkForNull(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1808
    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v8, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1810
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v8, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1812
    if-eqz v6, :cond_1

    .line 1813
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v7, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    const/4 v0, 0x0

    .line 1816
    const/4 v4, 0x0

    .local v4, n:I
    :goto_1
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1817
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1818
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v7, v8, :cond_2

    .line 1819
    iget-object v7, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v7, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    goto :goto_0

    .line 1816
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1826
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, "zdef"

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v2, genPrefix:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    const/4 v7, 0x1

    if-ge v3, v7, :cond_4

    .line 1829
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPrefixGen:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1828
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1832
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1833
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v7, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1834
    iput-object v6, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 1836
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 1837
    .local v5, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const-string v7, "xmlns"

    const/4 v8, 0x0

    iget-object v9, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 2214
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 2182
    const-string v0, "sjsxp-outputstream"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 2185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEscapeCharacters()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    return v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    const-string v0, "http://java.sun.com/xml/stream/properties/outputstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fOutputStream:Ljava/io/OutputStream;

    .line 469
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isDeclared(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 5
    .parameter "attr"

    .prologue
    const/4 v2, 0x1

    .line 1900
    const/4 v0, 0x0

    .line 1902
    .local v0, decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1903
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1905
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 1917
    :cond_0
    :goto_1
    return v2

    .line 1902
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    :cond_2
    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1912
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1917
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2170
    const/4 v0, 0x0

    return v0
.end method

.method removeDuplicateDecls()V
    .locals 6

    .prologue
    .line 1851
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1852
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1853
    .local v0, decl1:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v0, :cond_1

    .line 1854
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1855
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1858
    .local v1, decl2:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1859
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1854
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1851
    .end local v1           #decl2:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1863
    .end local v0           #decl1:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_2
    return-void
.end method

.method protected repair()V
    .locals 9

    .prologue
    .line 1732
    const/4 v0, 0x0

    .line 1733
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v1, 0x0

    .line 1734
    .local v1, attr2:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->peek()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v2

    .line 1735
    .local v2, currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->removeDuplicateDecls()V

    .line 1737
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1738
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1739
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1740
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1737
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1744
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->isDeclared(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1745
    iget-object v6, v2, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->uri:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1747
    iget-object v6, v2, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1748
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_4
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1754
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1755
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    add-int/lit8 v4, v3, 0x1

    .local v4, j:I
    :goto_2
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 1756
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #attr2:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1757
    .restart local v1       #attr2:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const-string v6, ""

    iget-object v7, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, ""

    iget-object v7, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1758
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1755
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1753
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1763
    .end local v4           #j:I
    :cond_7
    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->repairNamespaceDecl(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1765
    const/4 v3, 0x0

    .line 1767
    const/4 v3, 0x0

    :goto_3
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 1768
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1772
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->prefix:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1773
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->repairNamespaceDecl(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1767
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1777
    :cond_9
    const/4 v5, 0x0

    .line 1779
    .local v5, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v3, 0x0

    :goto_4
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 1780
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1782
    .restart local v5       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v5, :cond_a

    .line 1783
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v7, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v8, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1779
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1787
    :cond_b
    const/4 v3, 0x0

    :goto_5
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 1788
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    .line 1789
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/16 v6, 0xa

    invoke-direct {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->correctPrefix(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)V

    .line 1787
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1791
    :cond_c
    return-void
.end method

.method repairNamespaceDecl(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 5
    .parameter "attr"

    .prologue
    .line 1873
    const/4 v0, 0x0

    .line 1877
    .local v0, decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1878
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1880
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v0, :cond_0

    .line 1881
    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1884
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1887
    .local v2, tmpURI:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1888
    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1889
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1877
    .end local v2           #tmpURI:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1891
    .restart local v2       #tmpURI:Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_1

    .line 1897
    .end local v2           #tmpURI:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->reset(Z)V

    .line 283
    return-void
.end method

.method reset(Z)V
    .locals 3
    .parameter "resetProperties"

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "close() Must be called before calling reset()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReuse:Z

    .line 298
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->clear()V

    .line 303
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->reset()V

    .line 305
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    .line 306
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    .line 308
    if-eqz p1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v2, "com.amazonaws.javax.xml.stream.isRepairingNamespaces"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 310
    .local v0, ob:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    .line 311
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v2, "escapeCharacters"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ob:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 312
    .restart local v0       #ob:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setEscapeCharacters(Z)V

    .line 314
    .end local v0           #ob:Ljava/lang/Boolean;
    :cond_2
    return-void
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    :cond_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v1, :cond_2

    .line 483
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 488
    .local v0, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    const-string v2, "xmlns"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    .end local v0           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->DEFAULT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setEscapeCharacters(Z)V
    .locals 0
    .parameter "escape"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    .line 391
    return-void
.end method

.method public setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V
    .locals 1
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    iput-object p1, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    .line 513
    return-void
.end method

.method public setOutput(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)V
    .locals 2
    .parameter "sr"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setOutputUsingStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Prefix cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    :cond_0
    if-nez p2, :cond_1

    .line 531
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "URI cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v2, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 537
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v2, :cond_4

    .line 538
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, tmpURI:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-ne v1, p2, :cond_3

    .line 554
    .end local v1           #tmpURI:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 544
    .restart local v1       #tmpURI:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->checkUserNamespaceContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 546
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 547
    .local v0, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const-string v2, "xmlns"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    .end local v0           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v1           #tmpURI:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2166
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2199
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v2, :cond_0

    .line 560
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Attribute not associated with any element"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 564
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v2, :cond_1

    .line 565
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    invoke-direct {v0, p0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    .line 566
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p2, v2, v3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;ZZ)V

    .line 579
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v3, :cond_0

    .line 589
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Attribute not associated with any element"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 593
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    if-nez p1, :cond_1

    .line 594
    :try_start_1
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "NamespaceURI cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 599
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, prefix:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v3, :cond_3

    .line 602
    if-nez v2, :cond_2

    .line 603
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Prefix cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_2
    invoke-direct {p0, v2, p2, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 608
    :cond_3
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    invoke-direct {v0, p0, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    .line 609
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "prefix"
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v3, :cond_0

    .line 638
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Attribute not associated with any element"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 642
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    if-nez p2, :cond_1

    .line 643
    :try_start_1
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "NamespaceURI cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 646
    :cond_1
    if-nez p3, :cond_2

    .line 647
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Local name cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 650
    :cond_2
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v3, :cond_9

    .line 651
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 652
    :cond_3
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 653
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "prefix cannot be null or empty"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 655
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3, p3, p4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 660
    :cond_5
    const-string v3, "xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 662
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 663
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 665
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 667
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, tmpURI:Ljava/lang/String;
    if-eqz v2, :cond_7

    if-eq v2, p2, :cond_7

    .line 670
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Prefix "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "already bound to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ". Trying to rebind it to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is an error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    .end local v2           #tmpURI:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v3, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    :cond_8
    invoke-direct {p0, p1, p3, p4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeAttributeWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_9
    if-eqz p1, :cond_a

    .line 680
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    :cond_a
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 685
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;

    invoke-direct {v0, p0, p4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V

    .line 686
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p3, v3, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fAttributeCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 3
    .parameter "cdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    :try_start_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "cdata cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 700
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 714
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 718
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeCharacters([CII)V
    .locals 2
    .parameter "data"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 727
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 728
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 731
    :cond_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fEscapeCharacters:Z

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeXMLContent([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 739
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<!--"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 745
    if-eqz p1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 2
    .parameter "dtd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 757
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 7
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, namespaceURINormalized:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 787
    const-string v1, ""

    .line 793
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v4, :cond_1

    .line 794
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Namespace Attribute not associated with any element"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 789
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 798
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v4, :cond_2

    .line 799
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 800
    .local v2, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const-string v4, ""

    const-string v5, "xmlns"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v2           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :goto_1
    return-void

    .line 807
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v4, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 811
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, tmp:Ljava/lang/String;
    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_3

    .line 814
    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "xmlns has been already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ". Rebinding it to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is an error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 820
    .end local v3           #tmp:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    const-string v5, ""

    invoke-virtual {v4, v5, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 823
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 7
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 831
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 836
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 837
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 839
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :cond_1
    return-void

    .line 842
    :catch_0
    move-exception v6

    .line 843
    .local v6, e:Ljava/io/IOException;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 849
    if-nez p1, :cond_0

    .line 850
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "NamespaceURI cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 855
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, prefix:Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "prefix"
    .parameter "localName"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 862
    if-nez p2, :cond_0

    .line 863
    :try_start_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Local Name cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :catch_0
    move-exception v6

    .line 901
    .local v6, e:Ljava/io/IOException;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 866
    .end local v6           #e:Ljava/io/IOException;
    :cond_0
    if-nez p3, :cond_1

    .line 867
    :try_start_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "NamespaceURI cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_1
    if-eqz p1, :cond_2

    .line 871
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 876
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v0, :cond_3

    .line 877
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 880
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 882
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 883
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 885
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v0, :cond_6

    .line 886
    if-nez p1, :cond_4

    .line 887
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NamespaceURI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " has not been bound to any prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_4
    if-eqz p1, :cond_5

    const-string v0, ""

    if-eq p1, v0, :cond_5

    .line 895
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 899
    :cond_5
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    :cond_6
    return-void
.end method

.method public writeEndDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 907
    :try_start_0
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v2, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 911
    :cond_0
    const/4 v1, 0x0

    .line 913
    .local v1, elem:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 914
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v1

    .line 915
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->popContext()V

    .line 917
    iget-boolean v2, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-nez v2, :cond_1

    .line 920
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 922
    iget-object v2, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 923
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v3, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 927
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v3, v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 931
    .end local v1           #elem:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 933
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 934
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "No more elements to write"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1       #elem:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :cond_3
    return-void
.end method

.method public writeEndElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 940
    :try_start_0
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v2, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 944
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->pop()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-result-object v0

    .line 946
    .local v0, currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    if-nez v0, :cond_1

    .line 947
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "No element was found to write"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 966
    .end local v0           #currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_0
    move-exception v1

    .line 967
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 950
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :cond_1
    :try_start_1
    iget-boolean v2, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    if-eqz v2, :cond_2

    .line 973
    :goto_0
    return-void

    .line 955
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 957
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 959
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 960
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 963
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 965
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->popContext()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 968
    .end local v0           #currentElement:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    :catch_1
    move-exception v1

    .line 969
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No element was found to write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 3
    .parameter "refName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 977
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 982
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "prefix"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1008
    const/4 v1, 0x0

    .line 1009
    .local v1, namespaceURINormalized:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1010
    const-string v1, ""

    .line 1016
    :goto_0
    const/4 v2, 0x0

    .line 1018
    .local v2, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :try_start_0
    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-nez v6, :cond_1

    .line 1019
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid state: start tag is not opened at writeNamespace("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Ljava/io/IOException;
    :goto_1
    new-instance v6, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1012
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_0
    move-object v1, p2

    goto :goto_0

    .line 1028
    .restart local v2       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "xmlns"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1031
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 1076
    :cond_3
    :goto_2
    return-void

    .line 1035
    :cond_4
    const-string v6, "xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1038
    :cond_5
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v6, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1039
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v6, :cond_7

    .line 1042
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1044
    .local v5, tmpURI:Ljava/lang/String;
    if-eqz v5, :cond_6

    if-eq v5, v1, :cond_3

    .line 1048
    :cond_6
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1049
    .end local v2           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .local v3, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :try_start_2
    const-string v6, "xmlns"

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v6, v7, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 1053
    .end local v3           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v2       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    goto :goto_2

    .line 1057
    .end local v5           #tmpURI:Ljava/lang/String;
    :cond_7
    :try_start_3
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1059
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    .local v4, tmp:Ljava/lang/String;
    if-eqz v4, :cond_8

    if-eq v4, v1, :cond_8

    .line 1063
    new-instance v6, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "prefix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " has been already bound to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ". Rebinding it to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is an error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1070
    .end local v4           #tmp:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1071
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writenamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1073
    .end local v2           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v3       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v5       #tmpURI:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v2       #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    goto/16 :goto_1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 3
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1098
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 1099
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1102
    :cond_0
    if-eqz p1, :cond_1

    .line 1103
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1113
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "PI target cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1124
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v1, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1128
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1129
    :cond_1
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "PI target cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1132
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1140
    return-void
.end method

.method public writeStartDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\" ?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    return-void

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 3
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument()V

    .line 1174
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "<?xml version=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "encoding"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1185
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1186
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument()V

    .line 1244
    :goto_0
    return-void

    .line 1191
    :cond_0
    if-nez p1, :cond_1

    .line 1192
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeStartDocument(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v1

    .line 1242
    .local v1, ex:Ljava/io/IOException;
    new-instance v5, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v5, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1197
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    .line 1198
    .local v4, streamEncoding:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v5, v5, Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_4

    .line 1199
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1208
    :cond_2
    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1210
    const/4 v2, 0x0

    .line 1211
    .local v2, foundAlias:Z
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v0

    .line 1212
    .local v0, aliases:Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_3
    :goto_2
    if-nez v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1214
    const/4 v2, 0x1

    .line 1215
    goto :goto_2

    .line 1201
    .end local v0           #aliases:Ljava/util/Set;
    .end local v2           #foundAlias:Z
    .end local v3           #it:Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v5, v5, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;

    if-eqz v5, :cond_5

    .line 1202
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v5, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/writers/UTF8OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1203
    goto :goto_1

    .line 1204
    :cond_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    instance-of v5, v5, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;

    if-eqz v5, :cond_2

    .line 1205
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    check-cast v5, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLWriter;->getWriter()Ljava/io/Writer;

    move-result-object v5

    check-cast v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1218
    .restart local v0       #aliases:Ljava/util/Set;
    .restart local v2       #foundAlias:Z
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_6
    if-nez v2, :cond_7

    .line 1219
    new-instance v5, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Underlying stream encoding \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' and input paramter for writeStartDocument() method \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' do not match."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1227
    .end local v0           #aliases:Ljava/util/Set;
    .end local v2           #foundAlias:Z
    .end local v3           #it:Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v6, "<?xml version=\""

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1229
    if-eqz p2, :cond_8

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1230
    :cond_8
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v6, "1.0"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1235
    :goto_3
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1236
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v6, "\" encoding=\""

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1237
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v5, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1240
    :cond_9
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v6, "\"?>"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1232
    :cond_a
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v5, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 7
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1252
    if-nez p1, :cond_0

    .line 1253
    :try_start_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Local Name cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :catch_0
    move-exception v6

    .line 1270
    .local v6, ex:Ljava/io/IOException;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1256
    .end local v6           #ex:Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v0, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1260
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 1261
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1262
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 1264
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v0, :cond_2

    .line 1272
    :goto_0
    return-void

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1281
    if-nez p2, :cond_0

    .line 1282
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "Local Name cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1285
    :cond_0
    if-nez p1, :cond_1

    .line 1286
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "NamespaceURI cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1291
    const/4 v0, 0x0

    .line 1293
    .local v0, prefix:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v1, :cond_2

    .line 1294
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    :cond_2
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "prefix"
    .parameter "localName"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1313
    if-nez p2, :cond_0

    .line 1314
    :try_start_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Local Name cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :catch_0
    move-exception v6

    .line 1372
    .local v6, ex:Ljava/io/IOException;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1317
    .end local v6           #ex:Ljava/io/IOException;
    :cond_0
    if-nez p3, :cond_1

    .line 1318
    :try_start_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "NamespaceURI cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-nez v0, :cond_2

    .line 1322
    if-nez p1, :cond_2

    .line 1323
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Prefix cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_2
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fStartTagOpened:Z

    if-eqz v0, :cond_3

    .line 1328
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->closeStartTag()V

    .line 1331
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->openStartTag()V

    .line 1332
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1334
    if-eqz p1, :cond_4

    .line 1335
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1338
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1339
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 1341
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;

    invoke-virtual {v0, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1344
    .local v8, tmpPrefix:Ljava/lang/String;
    if-eqz p1, :cond_6

    if-eqz v8, :cond_5

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1346
    :cond_5
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fInternalNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v0, p1, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1350
    :cond_6
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fIsRepairingNamespace:Z

    if-eqz v0, :cond_9

    .line 1351
    if-eqz p1, :cond_7

    if-eqz v8, :cond_8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1374
    :cond_7
    :goto_0
    return-void

    .line 1356
    :cond_8
    new-instance v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 1357
    .local v7, qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    const-string v0, "xmlns"

    const/4 v1, 0x0

    invoke-virtual {v7, p1, v0, v1, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fNamespaceDecls:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1364
    .end local v7           #qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_9
    if-eqz p1, :cond_a

    const-string v0, ""

    if-eq p1, v0, :cond_a

    .line 1365
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fWriter:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
