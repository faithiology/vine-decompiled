.class Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;
.super Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attribute"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "value"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    .line 2059
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    .line 2060
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$Attribute;->value:Ljava/lang/String;

    .line 2061
    return-void
.end method
