.class public Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;
.super Ljava/lang/Object;
.source "StaxEntityResolverWrapper.java"


# instance fields
.field fStaxResolver:Lcom/amazonaws/javax/xml/stream/XMLResolver;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Lcom/amazonaws/javax/xml/stream/XMLResolver;

    .line 63
    return-void
.end method


# virtual methods
.method public getStaxEntityResolver()Lcom/amazonaws/javax/xml/stream/XMLResolver;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Lcom/amazonaws/javax/xml/stream/XMLResolver;

    return-object v0
.end method

.method getStaxInputSource(Ljava/lang/Object;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    .locals 7
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 97
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 88
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 89
    new-instance v6, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-object v4, p1

    check-cast v4, Ljava/io/InputStream;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    move-object v1, v6

    goto :goto_0

    .line 91
    :cond_2
    instance-of v0, p1, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    if-eqz v0, :cond_3

    .line 92
    new-instance v1, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    check-cast p1, Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .end local p1
    invoke-direct {v1, p1}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    goto :goto_0

    .line 93
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    check-cast p1, Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .end local p1
    invoke-direct {v1, p1}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V

    goto :goto_0
.end method

.method public resolveEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    .locals 7
    .parameter "resourceIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, object:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Lcom/amazonaws/javax/xml/stream/XMLResolver;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->getStaxInputSource(Ljava/lang/Object;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 80
    .end local v0           #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 81
    .local v1, streamException:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    invoke-direct {v2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setStaxEntityResolver(Lcom/amazonaws/javax/xml/stream/XMLResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;->fStaxResolver:Lcom/amazonaws/javax/xml/stream/XMLResolver;

    .line 67
    return-void
.end method
