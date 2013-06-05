.class Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
.super Ljava/lang/Object;
.source "STAXAttributesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attribute"
.end annotation


# instance fields
.field public dup:Z

.field public name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public schemaId:Z

.field public specified:Z

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    return-void
.end method
