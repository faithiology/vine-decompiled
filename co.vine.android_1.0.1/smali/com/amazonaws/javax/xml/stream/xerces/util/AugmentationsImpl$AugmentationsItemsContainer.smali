.class abstract Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AugmentationsItemsContainer"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract expand()Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.end method

.method public abstract getItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isFull()Z
.end method

.method public abstract keys()Ljava/util/Enumeration;
.end method

.method public abstract putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract removeItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method
