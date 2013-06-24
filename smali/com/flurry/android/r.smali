.class final Lcom/flurry/android/r;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private synthetic I:Lcom/flurry/android/cs;


# direct methods
.method constructor <init>(Lcom/flurry/android/cs;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/flurry/android/r;->I:Lcom/flurry/android/cs;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    iget-object v1, p0, Lcom/flurry/android/r;->I:Lcom/flurry/android/cs;

    iget-object v1, v1, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/flurry/android/r;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 319
    :cond_0
    return v0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    iget-object v1, p0, Lcom/flurry/android/r;->I:Lcom/flurry/android/cs;

    iget-object v1, v1, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/flurry/android/r;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    :cond_0
    return v0
.end method
