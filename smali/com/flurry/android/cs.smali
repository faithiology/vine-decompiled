.class final Lcom/flurry/android/cs;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic dW:Lcom/flurry/android/bn;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/cs;-><init>(Lcom/flurry/android/bn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/bn;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->l(Lcom/flurry/android/bn;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->p(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->p(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->n(Lcom/flurry/android/bn;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->n(Lcom/flurry/android/bn;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->l(Lcom/flurry/android/bn;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 390
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 391
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 395
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->q(Lcom/flurry/android/bn;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/ax;->a(Landroid/app/Activity;I)V

    .line 396
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->r(Lcom/flurry/android/bn;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 398
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 399
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 400
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/view/View;)Landroid/view/View;

    .line 402
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    iget-object v0, v0, Lcom/flurry/android/bn;->K:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    iget-object v1, v1, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->j(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 275
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->l(Lcom/flurry/android/bn;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->m(Lcom/flurry/android/bn;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->m(Lcom/flurry/android/bn;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, p1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/view/View;)Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;I)I

    .line 289
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, p3}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 291
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v2}, Lcom/flurry/android/bn;->j(Lcom/flurry/android/bn;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 292
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->n(Lcom/flurry/android/bn;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 293
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->n(Lcom/flurry/android/bn;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->l(Lcom/flurry/android/bn;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->n(Lcom/flurry/android/bn;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 306
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    new-instance v1, Lcom/flurry/android/r;

    iget-object v2, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v2}, Lcom/flurry/android/bn;->j(Lcom/flurry/android/bn;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030011

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/android/r;-><init>(Lcom/flurry/android/cs;Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 333
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 335
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/q;

    invoke-direct {v1, p0}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/cs;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 345
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/o;

    invoke-direct {v1, p0}, Lcom/flurry/android/o;-><init>(Lcom/flurry/android/cs;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 356
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 357
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->o(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, v5}, Lcom/flurry/android/ax;->a(Landroid/app/Activity;IZ)Z

    .line 362
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    iget-object v0, v0, Lcom/flurry/android/bn;->K:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    iget-object v1, v1, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->k(Lcom/flurry/android/bn;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/android/cs;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
