.class public abstract Lcom/flurry/android/AdNetworkView;
.super Lcom/flurry/android/p;
.source "SourceFile"


# instance fields
.field private final er:Lcom/flurry/android/AdCreative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/p;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;)V

    .line 14
    iput-object p4, p0, Lcom/flurry/android/AdNetworkView;->er:Lcom/flurry/android/AdCreative;

    .line 15
    return-void
.end method


# virtual methods
.method public getAdCreative()Lcom/flurry/android/AdCreative;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/android/AdNetworkView;->er:Lcom/flurry/android/AdCreative;

    return-object v0
.end method

.method public onAdClicked(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "clicked"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method public onAdClosed(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "adClosed"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method public onAdFilled(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "filled"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    return-void
.end method

.method public onAdShown(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "rendered"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method public onAdUnFilled(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, "unfilled"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method public onRenderFailed(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "renderFailed"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/p;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcom/flurry/android/p;->stop()V

    return-void
.end method
