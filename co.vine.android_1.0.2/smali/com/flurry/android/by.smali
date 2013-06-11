.class final Lcom/flurry/android/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback;


# instance fields
.field private em:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/flurry/android/by;->em:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 287
    return-void
.end method


# virtual methods
.method public final onBasicWebViewTransitionFromFullScreenFinished()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/flurry/android/by;->em:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/flurry/android/by;->em:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 294
    :cond_0
    return-void
.end method
