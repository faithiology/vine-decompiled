.class public abstract Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
.super Ljava/lang/Object;
.source "XMLInputFactory.java"


# static fields
.field public static final ALLOCATOR:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.allocator"

.field static final DEFAULIMPL:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.ZephyrParserFactory"

.field public static final IS_COALESCING:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isCoalescing"

.field public static final IS_NAMESPACE_AWARE:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isNamespaceAware"

.field public static final IS_REPLACING_ENTITY_REFERENCES:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isReplacingEntityReferences"

.field public static final IS_SUPPORTING_EXTERNAL_ENTITIES:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isSupportingExternalEntities"

.field public static final IS_VALIDATING:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isValidating"

.field public static final REPORTER:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.reporter"

.field public static final RESOLVER:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.resolver"

.field public static final SUPPORT_DTD:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.supportDTD"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "com.amazonaws.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.amazonaws.javax.xml.stream.ZephyrParserFactory"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    .locals 4
    .parameter "factoryId"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "com.amazonaws.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.amazonaws.javax.xml.stream.ZephyrParserFactory"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    .locals 4
    .parameter "factoryId"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract createFilteredReader(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Lcom/amazonaws/javax/xml/stream/EventFilter;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createFilteredReader(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;Lcom/amazonaws/javax/xml/stream/StreamFilter;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Lcom/amazonaws/javax/xml/transform/Source;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getEventAllocator()Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getXMLReporter()Lcom/amazonaws/javax/xml/stream/XMLReporter;
.end method

.method public abstract getXMLResolver()Lcom/amazonaws/javax/xml/stream/XMLResolver;
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setEventAllocator(Lcom/amazonaws/javax/xml/stream/util/XMLEventAllocator;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setXMLReporter(Lcom/amazonaws/javax/xml/stream/XMLReporter;)V
.end method

.method public abstract setXMLResolver(Lcom/amazonaws/javax/xml/stream/XMLResolver;)V
.end method
