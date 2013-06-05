.class final Lcom/flurry/android/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dh:Landroid/view/View;

.field private di:I

.field private dj:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

.field private dk:Landroid/widget/FrameLayout;

.field final synthetic h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/bh;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 442
    iget-object v1, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/flurry/android/bh;->dj:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/flurry/android/bh;->dj:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    invoke-interface {v0}, Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;->onBasicWebViewTransitionFromFullScreenFinished()V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget v1, p0, Lcom/flurry/android/bh;->di:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 451
    iput-object v2, p0, Lcom/flurry/android/bh;->dj:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    .line 452
    iput-object v2, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    .line 453
    iput-object v2, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/cl;Landroid/view/View;ILcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 414
    iget-object v0, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/flurry/android/bh;->Z()V

    .line 418
    :cond_0
    iput-object p2, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bh;->di:I

    .line 420
    iput-object p4, p0, Lcom/flurry/android/bh;->dj:Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;

    .line 422
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    .line 423
    iget-object v0, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 424
    iget-object v0, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/bh;->dh:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v0, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 429
    iget-object v1, p0, Lcom/flurry/android/bh;->dk:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 432
    iget-object v0, p0, Lcom/flurry/android/bh;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 433
    return-void
.end method
