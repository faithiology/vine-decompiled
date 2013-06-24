.class Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
.super Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementState"
.end annotation


# instance fields
.field public isEmpty:Z

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2038
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "prefix"
    .parameter "localpart"
    .parameter "rawname"
    .parameter "uri"

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    .line 2042
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2043
    return-void
.end method


# virtual methods
.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "prefix"
    .parameter "localpart"
    .parameter "rawname"
    .parameter "uri"
    .parameter "isEmpty"

    .prologue
    .line 2047
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iput-boolean p5, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2049
    return-void
.end method
