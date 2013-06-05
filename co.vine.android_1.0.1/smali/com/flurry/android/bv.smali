.class final Lcom/flurry/android/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic dW:Lcom/flurry/android/bn;


# direct methods
.method constructor <init>(Lcom/flurry/android/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/flurry/android/bv;->dW:Lcom/flurry/android/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/flurry/android/bv;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/flurry/android/bv;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:if(window.mraid){window.mraid.close();};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1055
    :cond_0
    return-void
.end method
