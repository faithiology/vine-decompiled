.class public Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "EntityDeclarationImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;


# instance fields
.field private fEntityName:Ljava/lang/String;

.field private fNotationName:Ljava/lang/String;

.field private fReplacementText:Ljava/lang/String;

.field private fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "entityName"
    .parameter "replacementText"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)V
    .locals 0
    .parameter "entityName"
    .parameter "replacementText"
    .parameter "resourceIdentifier"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->init()V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 76
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXMLResourceIdentifier()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->setEventType(I)V

    .line 135
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0
    .parameter "entityName"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setEntityReplacementText(Ljava/lang/String;)V
    .locals 0
    .parameter "replacementText"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNotationName(Ljava/lang/String;)V
    .locals 0
    .parameter "notationName"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setXMLResourceIdentifier(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)V
    .locals 0
    .parameter "resourceIdentifier"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 92
    return-void
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v1, "<!ENTITY "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 145
    const-string v1, " \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->charEncode(Ljava/io/Writer;Ljava/lang/String;)V

    .line 158
    :goto_0
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    const-string v1, " NDATA "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 163
    :cond_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, pubId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 151
    const-string v1, " PUBLIC \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v1, " SYSTEM \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
