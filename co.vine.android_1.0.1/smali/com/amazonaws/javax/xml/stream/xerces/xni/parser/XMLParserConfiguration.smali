.class public interface abstract Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParserConfiguration;
.super Ljava/lang/Object;
.source "XMLParserConfiguration.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;


# virtual methods
.method public abstract addRecognizedFeatures([Ljava/lang/String;)V
.end method

.method public abstract addRecognizedProperties([Ljava/lang/String;)V
.end method

.method public abstract getDTDContentModelHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;
.end method

.method public abstract getDTDHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;
.end method

.method public abstract getDocumentHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;
.end method

.method public abstract getEntityResolver()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;
.end method

.method public abstract getErrorHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract parse(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDTDContentModelHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;)V
.end method

.method public abstract setDTDHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;)V
.end method

.method public abstract setDocumentHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;)V
.end method

.method public abstract setEntityResolver(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLEntityResolver;)V
.end method

.method public abstract setErrorHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method
