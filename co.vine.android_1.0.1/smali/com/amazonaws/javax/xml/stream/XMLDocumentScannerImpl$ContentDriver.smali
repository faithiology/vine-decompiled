.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;
.super Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContentDriver"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V

    return-void
.end method


# virtual methods
.method protected elementDepthIsZeroHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1231
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 1232
    const/4 v0, 0x1

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    return-void
.end method

.method protected scanForDoctypeHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1208
    const/4 v0, 0x1

    .line 1210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected scanRootElementHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1253
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 1254
    const/4 v0, 0x1

    .line 1256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
