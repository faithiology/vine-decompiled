.class final Lcom/flurry/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic I:Lcom/flurry/android/cs;


# direct methods
.method constructor <init>(Lcom/flurry/android/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/flurry/android/o;->I:Lcom/flurry/android/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/flurry/android/o;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->l(Lcom/flurry/android/bn;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/o;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->m(Lcom/flurry/android/bn;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/flurry/android/o;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->m(Lcom/flurry/android/bn;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 354
    :cond_0
    return-void
.end method
