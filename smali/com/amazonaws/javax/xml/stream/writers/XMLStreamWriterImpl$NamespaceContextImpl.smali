.class Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
.super Ljava/lang/Object;
.source "XMLStreamWriterImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NamespaceContextImpl"
.end annotation


# instance fields
.field internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

.field userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2068
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2070
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    .line 2073
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 2076
    const/4 v0, 0x0

    .line 2078
    .local v0, uri:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2079
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    #getter for: Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2082
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    if-eqz v1, :cond_1

    .line 2083
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2085
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2096
    :goto_0
    return-object v1

    .line 2090
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_2

    .line 2091
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2093
    goto :goto_0

    .line 2096
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 2100
    const/4 v0, 0x0

    .line 2102
    .local v0, prefix:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2103
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    #getter for: Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2106
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    if-eqz v1, :cond_1

    .line 2107
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2118
    :goto_0
    return-object v1

    .line 2114
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_2

    .line 2115
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2118
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .parameter "uri"

    .prologue
    .line 2122
    const/4 v2, 0x0

    .line 2123
    .local v2, prefixes:Ljava/util/Vector;
    const/4 v0, 0x0

    .line 2125
    .local v0, itr:Ljava/util/Iterator;
    if-eqz p1, :cond_0

    .line 2126
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    #getter for: Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2129
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    if-eqz v3, :cond_1

    .line 2130
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    invoke-interface {v3, p1}, Lcom/amazonaws/javax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 2133
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    if-eqz v3, :cond_2

    .line 2134
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getPrefixes(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 2137
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 2159
    .end local v0           #itr:Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 2139
    .restart local v0       #itr:Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 2140
    new-instance v0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    .end local v0           #itr:Ljava/util/Iterator;
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 2141
    .restart local v0       #itr:Ljava/util/Iterator;
    :cond_4
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 2142
    const/4 v1, 0x0

    .line 2144
    .local v1, ob:Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ob:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 2147
    .restart local v1       #ob:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 2148
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    #getter for: Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2151
    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2152
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2156
    :cond_7
    new-instance v0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    .end local v0           #itr:Ljava/util/Iterator;
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 2159
    .end local v1           #ob:Ljava/lang/String;
    .restart local v0       #itr:Ljava/util/Iterator;
    :cond_8
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    #getter for: Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->fReadOnlyIterator:Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;
    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->access$100(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    move-result-object v0

    goto :goto_0
.end method
