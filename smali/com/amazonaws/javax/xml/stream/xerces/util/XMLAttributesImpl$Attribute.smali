.class Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Attribute"
.end annotation


# instance fields
.field public augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

.field public name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field public next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public schemaId:Z

.field public specified:Z

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    return-void
.end method
