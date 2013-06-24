.class public interface abstract Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;
.super Ljava/lang/Object;
.source "XMLDTDScanner.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDSource;
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDContentModelSource;


# virtual methods
.method public abstract scanDTDExternalSubset(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract scanDTDInternalSubset(ZZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
