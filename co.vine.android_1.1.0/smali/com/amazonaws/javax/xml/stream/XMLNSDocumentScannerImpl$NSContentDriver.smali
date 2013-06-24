.class public final Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
.super Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NSContentDriver"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    return-void
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 765
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 766
    const/4 v0, 0x1

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
