.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XMLBufferListenerImpl"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->refresh(I)V

    .line 1418
    return-void
.end method

.method public refresh(I)V
    .locals 6
    .parameter "refreshPosition"

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingAttributes:Z

    if-eqz v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->refresh()V

    .line 1430
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    if-eqz v1, :cond_2

    .line 1431
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v0

    .line 1432
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    instance-of v1, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_1

    .line 1433
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    move-object v1, v0

    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iput v1, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 1435
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .end local v0           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1436
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iput p1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 1438
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_3

    .line 1441
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1443
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v2, 0x0

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 1444
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fUsebuffer:Z

    .line 1446
    :cond_3
    return-void
.end method
