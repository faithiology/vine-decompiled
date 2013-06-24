.class public final Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Element"
.end annotation


# instance fields
.field public fRawname:[C

.field public next:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;

.field public qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;)V
    .locals 1
    .parameter "qname"
    .parameter "next"

    .prologue
    .line 1950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1951
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;->qname:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1952
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;->fRawname:[C

    .line 1953
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;->next:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;

    .line 1954
    return-void
.end method
