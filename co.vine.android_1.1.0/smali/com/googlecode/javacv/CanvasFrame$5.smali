.class final Lcom/googlecode/javacv/CanvasFrame$5;
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

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>([Lcom/googlecode/javacv/CanvasFrame;ILcom/googlecode/javacv/CanvasFrame$1MovedListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$frames:[Lcom/googlecode/javacv/CanvasFrame;

    iput p2, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$n:I

    iput-object p3, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

    iput p4, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$x:I

    iput p5, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$frames:[Lcom/googlecode/javacv/CanvasFrame;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$n:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/CanvasFrame;->addComponentListener(Ljava/awt/event/ComponentListener;)V

    .line 419
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$frames:[Lcom/googlecode/javacv/CanvasFrame;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$n:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$x:I

    iget v2, p0, Lcom/googlecode/javacv/CanvasFrame$5;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/CanvasFrame;->setLocation(II)V

    .line 420
    return-void
.end method
