.class final Lcom/flurry/android/aq;
.super Lcom/flurry/android/ao;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/ao;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flurry/android/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0}, Lcom/flurry/android/aq;->C()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/aq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/aq;->E()Lcom/flurry/android/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/flurry/android/aq;->d:Ljava/lang/String;

    const-string v1, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
