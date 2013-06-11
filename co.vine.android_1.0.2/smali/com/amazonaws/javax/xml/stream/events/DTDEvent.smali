.class public Lcom/amazonaws/javax/xml/stream/events/DTDEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "DTDEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/DTD;


# instance fields
.field private fDoctypeDeclaration:Ljava/lang/String;

.field private fEntities:Ljava/util/List;

.field private fNotations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "doctypeDeclaration"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->init()V

    .line 80
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->setEventType(I)V

    .line 124
    return-void
.end method

.method public setDocumentTypeDeclaration(Ljava/lang/String;)V
    .locals 0
    .parameter "doctypeDeclaration"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0
    .parameter "entites"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setNotations(Ljava/util/List;)V
    .locals 0
    .parameter "notations"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    return-void
.end method
