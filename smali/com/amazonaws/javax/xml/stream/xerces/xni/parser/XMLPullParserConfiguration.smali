.class public interface abstract Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLPullParserConfiguration;
.super Ljava/lang/Object;
.source "XMLPullParserConfiguration.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParserConfiguration;


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract parse(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
