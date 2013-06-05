.class Lcom/googlecode/javacv/FrameGrabber$1;
.super Ljava/lang/Object;
.source "FrameGrabber.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/FrameGrabber;->delayedGrab(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/FrameGrabber;

.field final synthetic val$delayTime:J

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/FrameGrabber;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/googlecode/javacv/FrameGrabber$1;->this$0:Lcom/googlecode/javacv/FrameGrabber;

    iput-wide p2, p0, Lcom/googlecode/javacv/FrameGrabber$1;->val$start:J

    iput-wide p4, p0, Lcom/googlecode/javacv/FrameGrabber$1;->val$delayTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/googlecode/javacv/FrameGrabber$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 355
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$1;->this$0:Lcom/googlecode/javacv/FrameGrabber;

    iget-object v1, p0, Lcom/googlecode/javacv/FrameGrabber$1;->this$0:Lcom/googlecode/javacv/FrameGrabber;

    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    #setter for: Lcom/googlecode/javacv/FrameGrabber;->delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v0, v1}, Lcom/googlecode/javacv/FrameGrabber;->access$002(Lcom/googlecode/javacv/FrameGrabber;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 356
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$1;->this$0:Lcom/googlecode/javacv/FrameGrabber;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/googlecode/javacv/FrameGrabber$1;->val$start:J

    sub-long/2addr v1, v3

    #setter for: Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J
    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/FrameGrabber;->access$102(Lcom/googlecode/javacv/FrameGrabber;J)J

    .line 357
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$1;->this$0:Lcom/googlecode/javacv/FrameGrabber;

    #getter for: Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J
    invoke-static {v0}, Lcom/googlecode/javacv/FrameGrabber;->access$100(Lcom/googlecode/javacv/FrameGrabber;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/googlecode/javacv/FrameGrabber$1;->val$delayTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method
