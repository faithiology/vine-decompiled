.class final Lcom/googlecode/javacv/CanvasFrame$6;
.super Ljava/lang/Object;
.source "CanvasFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/CanvasFrame;->tile([Lcom/googlecode/javacv/CanvasFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frames:[Lcom/googlecode/javacv/CanvasFrame;

.field final synthetic val$movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

.field final synthetic val$n:I


# direct methods
.method constructor <init>([Lcom/googlecode/javacv/CanvasFrame;ILcom/googlecode/javacv/CanvasFrame$1MovedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$frames:[Lcom/googlecode/javacv/CanvasFrame;

    iput p2, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$n:I

    iput-object p3, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$frames:[Lcom/googlecode/javacv/CanvasFrame;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$n:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/CanvasFrame$6;->val$movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/CanvasFrame;->removeComponentListener(Ljava/awt/event/ComponentListener;)V

    .line 436
    return-void
.end method
