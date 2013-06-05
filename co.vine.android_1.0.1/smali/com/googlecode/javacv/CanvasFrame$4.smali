.class Lcom/googlecode/javacv/CanvasFrame$4;
.super Ljava/lang/Object;
.source "CanvasFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/CanvasFrame;->setCanvasSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/CanvasFrame;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/CanvasFrame;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iput p2, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$width:I

    iput p3, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/CanvasFrame;->setExtendedState(I)V

    .line 309
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iget-object v0, v0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$width:I

    iget v2, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$height:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/Canvas;->setSize(II)V

    .line 310
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CanvasFrame;->pack()V

    .line 311
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iget-object v0, v0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$width:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$height:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/awt/Canvas;->setSize(II)V

    .line 312
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iget-object v0, v0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    iget v1, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$width:I

    iget v2, p0, Lcom/googlecode/javacv/CanvasFrame$4;->val$height:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/Canvas;->setSize(II)V

    .line 313
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$4;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iput-boolean v3, v0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 314
    return-void
.end method
