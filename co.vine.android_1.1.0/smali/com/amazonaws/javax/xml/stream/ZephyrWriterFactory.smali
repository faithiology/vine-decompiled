.class public Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;
.super Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
.source "ZephyrWriterFactory.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private fPropertyChanged:Z

.field private fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field fReuseInstance:Z

.field private fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;-><init>()V

    .line 73
    new-instance v0, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    .line 84
    return-void
.end method

.method private toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Lcom/amazonaws/javax/xml/transform/stream/StreamResult;
    .locals 1
    .parameter "os"
    .parameter "writer"
    .parameter "systemId"

    .prologue
    .line 168
    new-instance v0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;-><init>()V

    .line 169
    .local v0, sr:Lcom/amazonaws/javax/xml/transform/stream/StreamResult;
    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    .line 171
    invoke-virtual {v0, p3}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    .line 172
    return-object v0
.end method


# virtual methods
.method public createXMLEventWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .locals 2
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/OutputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

    move-result-object v0

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .locals 2
    .parameter "outputStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLEventWriter(Ljava/io/Writer;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/Writer;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;)V

    return-object v0
.end method

.method public createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v0, p1, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/javax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;

    check-cast p1, Lcom/amazonaws/javax/xml/transform/dom/DOMResult;

    .end local p1
    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLDOMWriterImpl;-><init>(Lcom/amazonaws/javax/xml/transform/dom/DOMResult;)V

    goto :goto_0

    .line 108
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/amazonaws/javax/xml/transform/Result;

    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "result of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 4
    .parameter "sr"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->canReuse()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyChanged:Z

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->reset()V

    .line 181
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-virtual {v1, p1, p2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;->setOutput(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    .line 185
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;-><init>(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, io:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 1
    .parameter "outputStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamWriter(Ljava/io/Writer;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v1, p1, v1}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->toStreamResult(Ljava/io/OutputStream;Ljava/io/Writer;Ljava/lang/String;)Lcom/amazonaws/javax/xml/transform/stream/StreamResult;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/stream/StreamResult;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    const-string v0, "reuse-instance"

    if-eq p1, v0, :cond_2

    const-string v0, "reuse-instance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p2

    .line 149
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    .line 154
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fReuseInstance:Z

    if-eqz v0, :cond_4

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not supported: XMLStreamWriters are not Thread safe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyChanged:Z

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrWriterFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method
