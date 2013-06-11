.class public abstract Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
.super Ljava/lang/Object;
.source "XMLOutputFactory.java"


# static fields
.field static final DEFAULIMPL:Ljava/lang/String; = "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

.field public static final IS_REPAIRING_NAMESPACES:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.isRepairingNamespaces"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "com.amazonaws.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
    .locals 4
    .parameter "factoryId"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
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
    .line 192
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "com.amazonaws.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createXMLEventWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/Writer;)Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Lcom/amazonaws/javax/xml/transform/Result;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/Writer;)Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
