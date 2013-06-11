.class public Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;
.super Ljava/lang/Object;
.source "XMLDOMWriterImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;


# static fields
.field static synthetic class$java$lang$String:Ljava/lang/Class;


# instance fields
.field private currentNode:Lorg/w3c/dom/Node;

.field private depth:I

.field private mXmlVersion:Ljava/lang/reflect/Method;

.field private namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

.field private needContextPop:[Z

.field private node:Lorg/w3c/dom/Node;

.field private ownerDoc:Lorg/w3c/dom/Document;

.field private resizeValue:I

.field private stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/transform/dom/DOMResult;)V
    .locals 2
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 80
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 81
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    .line 82
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 83
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    .line 84
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    .line 85
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    .line 86
    const/16 v0, 0x14

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 94
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    .line 95
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 97
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getDLThreeMethods()V

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    .line 104
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    .line 105
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 106
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 100
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getDLThreeMethods()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setXmlVersion"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v2, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    .line 118
    :goto_1
    return-void

    .line 110
    :cond_0
    sget-object v2, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, mex:Ljava/lang/NoSuchMethodException;
    iput-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 114
    .end local v0           #mex:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, se:Ljava/lang/SecurityException;
    iput-object v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method private getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 747
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method private getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "localName"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 737
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 127
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, prefix:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 179
    :cond_0
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
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Prefix cannot be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 204
    :cond_1
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 216
    .local v0, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 223
    return-void

    .line 220
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Current DOM Node type  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "and does not allow attributes to be set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 236
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "NamespaceURI cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_0
    if-nez p2, :cond_1

    .line 239
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Local name cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_2
    if-nez v1, :cond_3

    .line 246
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Namespace URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "is not bound to any prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_3
    const/4 v2, 0x0

    .line 251
    .local v2, qualifiedName:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    move-object v2, p2

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 257
    .local v0, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 264
    return-void

    .line 254
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 261
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #qualifiedName:Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Current DOM Node type  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "and does not allow attributes to be set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    .line 275
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 276
    if-nez p2, :cond_0

    .line 277
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "NamespaceURI cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_0
    if-nez p3, :cond_1

    .line 280
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Local name cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_1
    if-nez p1, :cond_2

    .line 283
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "prefix cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_2
    const/4 v1, 0x0

    .line 286
    .local v1, qualifiedName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    move-object v1, p3

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p2, v1}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 293
    .local v0, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v0, p4}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 301
    return-void

    .line 290
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 297
    .end local v1           #qualifiedName:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Current DOM Node type  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "and does not allow attributes to be set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "CDATA cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 314
    .local v0, cdata:Lorg/w3c/dom/CDATASection;
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 315
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 2
    .parameter "charData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 325
    .local v0, text:Lorg/w3c/dom/Text;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 326
    return-void
.end method

.method public writeCharacters([CII)V
    .locals 3
    .parameter "values"
    .parameter "param"
    .parameter "param2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 339
    .local v0, text:Lorg/w3c/dom/Text;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 340
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    .line 350
    .local v0, comment:Lorg/w3c/dom/Comment;
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 351
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 4
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 369
    const-string v0, "xmlns"

    .line 370
    .local v0, qname:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1, v2, v0, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 373
    .end local v0           #qname:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Current DOM Node type  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "and does not allow attributes to be set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 2
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 386
    .local v0, element:Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 393
    .end local v0           #element:Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v0       #element:Lorg/w3c/dom/Element;
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_4

    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, qualifiedName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 405
    .local v1, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 406
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "NamespaceURI cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_0
    if-nez p2, :cond_1

    .line 409
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Local name cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    :cond_2
    if-nez v1, :cond_3

    .line 416
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Namespace URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "is not bound to any prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    :cond_3
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 420
    move-object v2, p2

    .line 426
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 427
    .local v0, element:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_6

    .line 428
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 434
    .end local v0           #element:Lorg/w3c/dom/Element;
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #qualifiedName:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 423
    .restart local v1       #prefix:Ljava/lang/String;
    .restart local v2       #qualifiedName:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 430
    .restart local v0       #element:Lorg/w3c/dom/Element;
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"
    .parameter "localName"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_3

    .line 445
    if-nez p3, :cond_0

    .line 446
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "NamespaceURI cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_0
    if-nez p2, :cond_1

    .line 449
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Local name cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_1
    if-nez p1, :cond_2

    .line 452
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Prefix cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_2
    const/4 v1, 0x0

    .line 455
    .local v1, qualifiedName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    move-object v1, p2

    .line 460
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p3, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 461
    .local v0, el:Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_5

    .line 462
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 468
    .end local v0           #el:Lorg/w3c/dom/Element;
    .end local v1           #qualifiedName:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 458
    .restart local v1       #qualifiedName:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 464
    .restart local v0       #el:Lorg/w3c/dom/Element;
    :cond_5
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method

.method public writeEndDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 477
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aput-boolean v3, v1, v2

    .line 480
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 482
    :cond_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_1
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 485
    return-void
.end method

.method public writeEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 493
    .local v0, node:Lorg/w3c/dom/Node;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 500
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 502
    :cond_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 503
    return-void

    .line 496
    :cond_1
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    .line 512
    .local v0, er:Lorg/w3c/dom/EntityReference;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 513
    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "prefix cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_0
    if-nez p2, :cond_1

    .line 529
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "NamespaceURI cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_1
    const/4 v0, 0x0

    .line 534
    .local v0, qname:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    const-string v0, "xmlns"

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1, v2, v0, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void

    .line 537
    :cond_2
    const-string v1, "xmlns"

    invoke-direct {p0, v1, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 553
    .local v0, pi:Lorg/w3c/dom/ProcessingInstruction;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 554
    return-void
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
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "Target cannot be null"

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 567
    .local v0, pi:Lorg/w3c/dom/ProcessingInstruction;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 568
    return-void
.end method

.method public writeStartDocument()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.0"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    :cond_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, iae:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 582
    .end local v0           #iae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 583
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 6
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    :cond_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, iae:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 600
    .end local v0           #iae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "encoding"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 614
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :cond_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, iae:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 619
    .end local v0           #iae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 620
    .local v1, ite:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 3
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 633
    .local v0, element:Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 638
    :goto_0
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 640
    .end local v0           #element:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 643
    :cond_1
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 644
    return-void

    .line 636
    .restart local v0       #element:Lorg/w3c/dom/Element;
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_4

    .line 654
    const/4 v2, 0x0

    .line 655
    .local v2, qualifiedName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 657
    .local v1, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 658
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "NamespaceURI cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 660
    :cond_0
    if-nez p2, :cond_1

    .line 661
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v4, "Local name cannot be null"

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 664
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v3, :cond_2

    .line 665
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    :cond_2
    if-nez v1, :cond_3

    .line 668
    new-instance v3, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Namespace URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "is not bound to any prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 671
    :cond_3
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 672
    move-object v2, p2

    .line 677
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 679
    .local v0, element:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_7

    .line 680
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 684
    :goto_1
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 686
    .end local v0           #element:Lorg/w3c/dom/Element;
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #qualifiedName:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_5

    .line 687
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 689
    :cond_5
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 690
    return-void

    .line 674
    .restart local v1       #prefix:Ljava/lang/String;
    .restart local v2       #qualifiedName:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 682
    .restart local v0       #element:Lorg/w3c/dom/Element;
    :cond_7
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"
    .parameter "localName"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 701
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_4

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, qname:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 704
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "NamespaceURI cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_0
    if-nez p2, :cond_1

    .line 707
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Local name cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_1
    if-nez p1, :cond_2

    .line 710
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "Prefix cannot be null"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    :cond_2
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 714
    move-object v1, p2

    .line 719
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p3, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 721
    .local v0, el:Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_6

    .line 722
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 726
    :goto_1
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 727
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 730
    :cond_3
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 733
    .end local v0           #el:Lorg/w3c/dom/Element;
    .end local v1           #qname:Ljava/lang/String;
    :cond_4
    return-void

    .line 716
    .restart local v1       #qname:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 724
    .restart local v0       #el:Lorg/w3c/dom/Element;
    :cond_6
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method
