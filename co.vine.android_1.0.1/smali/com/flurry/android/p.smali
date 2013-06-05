.class abstract Lcom/flurry/android/p;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private J:Landroid/content/Context;

.field K:Lcom/flurry/android/FlurryAds;

.field L:Lcom/flurry/android/cz;

.field M:Lcom/flurry/android/AdUnit;

.field N:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/flurry/android/p;->J:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/flurry/android/p;->K:Lcom/flurry/android/FlurryAds;

    .line 23
    iput-object p3, p0, Lcom/flurry/android/p;->L:Lcom/flurry/android/cz;

    .line 24
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSpotBannerView.onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/flurry/android/p;->K:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/p;->L:Lcom/flurry/android/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cz;

    .line 55
    iget-object v0, p0, Lcom/flurry/android/p;->M:Lcom/flurry/android/AdUnit;

    if-eqz v0, :cond_0

    .line 57
    iget-object v7, p0, Lcom/flurry/android/p;->K:Lcom/flurry/android/FlurryAds;

    new-instance v0, Lcom/flurry/android/cw;

    iget-object v3, p0, Lcom/flurry/android/p;->J:Landroid/content/Context;

    iget-object v4, p0, Lcom/flurry/android/p;->M:Lcom/flurry/android/AdUnit;

    iget-object v5, p0, Lcom/flurry/android/p;->L:Lcom/flurry/android/cz;

    iget v6, p0, Lcom/flurry/android/p;->N:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/cw;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;I)V

    iget-object v1, p0, Lcom/flurry/android/p;->K:Lcom/flurry/android/FlurryAds;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public abstract initLayout(Landroid/content/Context;)V
.end method

.method shouldRotate()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/android/p;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/flurry/android/p;->N:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
