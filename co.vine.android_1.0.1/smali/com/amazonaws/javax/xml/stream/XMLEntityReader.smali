.class public abstract Lcom/amazonaws/javax/xml/stream/XMLEntityReader;
.super Ljava/lang/Object;
.source "XMLEntityReader.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCharacterOffset()I
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isExternal()Z
.end method

.method public abstract peekChar()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/amazonaws/javax/xml/stream/XMLBufferListener;)V
.end method

.method public abstract scanChar()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanContent(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanNmtoken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method

.method public abstract skipChar(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipSpaces()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipString(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
