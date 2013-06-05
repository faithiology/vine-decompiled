.class public Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;
.super Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
.source "ZephyrParserFactory.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field fPropertyChanged:Z

.field private fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field fReuseInstance:Z

.field private fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;-><init>()V

    .line 66
    new-instance v0, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    .line 72
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 74
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    .line 79
    return-void
.end method


# virtual methods
.method public createFilteredReader(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Lcom/amazonaws/javax/xml/stream/EventFilter;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 1
    .parameter "reader"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/EventFilterSupport;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Lcom/amazonaws/javax/xml/stream/EventFilter;)V

    return-object v0
.end method

.method public createFilteredReader(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/StreamFilter;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "reader"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 214
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamFilterImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/StreamFilter;)V

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createXMLEventReader(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 138
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 104
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "inputstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 92
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 116
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 98
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "systemId"
    .parameter "inputstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 110
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 2
    .parameter "systemId"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->initEventReader()V

    .line 122
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEventReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLStreamReader(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->jaxpSourcetoXMLInputSource(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0, p1, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "inputStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "systemId"
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 6
    .parameter "systemId"
    .parameter "inputStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->getXMLStreamReaderImpl(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    return-object v1
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 6
    .parameter "systemId"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 147
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->getXMLStreamReaderImpl(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    move-result-object v1

    return-object v1
.end method

.method public getEventAllocator()Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;
    .locals 1

    .prologue
    .line 177
    const-string v0, "com.amazonaws.javax.xml.stream.allocator"

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;

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
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXMLReporter()Lcom/amazonaws/javax/xml/stream/XMLReporter;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "com.amazonaws.javax.xml.stream.reporter"

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLReporter;

    return-object v0
.end method

.method public getXMLResolver()Lcom/amazonaws/javax/xml/stream/XMLResolver;
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v2, "com.amazonaws.javax.xml.stream.resolver"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, object:Ljava/lang/Object;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLResolver;

    .end local v0           #object:Ljava/lang/Object;
    return-object v0
.end method

.method getXMLStreamReaderImpl(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 3
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    if-nez v0, :cond_0

    .line 280
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 282
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    new-instance v1, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    .line 298
    :goto_0
    return-object v0

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->canReuse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->reset()V

    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 292
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 293
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    goto :goto_0

    .line 295
    :cond_1
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 298
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    new-instance v1, Lcom/amazonaws/javax/xml/stream/PropertyManager;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;-><init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fTempReader:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    goto :goto_0
.end method

.method initEventReader()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    .line 83
    return-void
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method jaxpSourcetoXMLInputSource(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    .locals 3
    .parameter "source"

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot create XMLStreamReader or XMLEventReader from a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventAllocator(Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;)V
    .locals 2
    .parameter "allocator"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "com.amazonaws.javax.xml.stream.allocator"

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void
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
    .line 263
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    const-string v0, "reuse-instance"

    if-eq p1, v0, :cond_2

    const-string v0, "reuse-instance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p2

    .line 267
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fReuseInstance:Z

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void

    .line 271
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyChanged:Z

    goto :goto_0
.end method

.method public setXMLReporter(Lcom/amazonaws/javax/xml/stream/XMLReporter;)V
    .locals 2
    .parameter "xmlreporter"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "com.amazonaws.javax.xml.stream.reporter"

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public setXMLResolver(Lcom/amazonaws/javax/xml/stream/XMLResolver;)V
    .locals 2
    .parameter "xmlresolver"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/ZephyrParserFactory;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "com.amazonaws.javax.xml.stream.resolver"

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void
.end method
