.class public interface abstract Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;
.super Ljava/lang/Object;
.source "XMLDocumentHandler.java"


# virtual methods
.method public abstract characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract comment(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract emptyElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endPrefixMapping(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract getDocumentSource()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;
.end method

.method public abstract ignorableWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setDocumentSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;)V
.end method

.method public abstract startCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method
