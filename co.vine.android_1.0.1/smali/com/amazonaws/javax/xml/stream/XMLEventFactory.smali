.class public abstract Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
.super Ljava/lang/Object;
.source "XMLEventFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "com.amazonaws.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.sun.xml.internal.stream.events.XMLEventFactoryImpl"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    .locals 4
    .parameter "factoryId"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "com.amazonaws.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.sun.xml.internal.stream.events.XMLEventFactoryImpl"

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    .locals 4
    .parameter "factoryId"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLEventFactory;
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
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
.method public abstract createAttribute(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
.end method

.method public abstract createCData(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
.end method

.method public abstract createCharacters(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
.end method

.method public abstract createComment(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Comment;
.end method

.method public abstract createDTD(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/DTD;
.end method

.method public abstract createEndDocument()Lcom/amazonaws/javax/xml/stream/events/EndDocument;
.end method

.method public abstract createEndElement(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEntityReference(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;)Lcom/amazonaws/javax/xml/stream/events/EntityReference;
.end method

.method public abstract createIgnorableSpace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
.end method

.method public abstract createNamespace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Namespace;
.end method

.method public abstract createNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Namespace;
.end method

.method public abstract createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;
.end method

.method public abstract createSpace(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/Characters;
.end method

.method public abstract createStartDocument()Lcom/amazonaws/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartElement(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)Lcom/amazonaws/javax/xml/stream/events/StartElement;
.end method

.method public abstract setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V
.end method
