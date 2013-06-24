.class final Lcom/flurry/android/cq;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0
    .parameter

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/flurry/android/cq;->ee:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/flurry/android/cq;->ee:Lcom/flurry/android/FlurryAds;

    const-string v1, "/postAdLog.do"

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->m(Ljava/lang/String;)V

    .line 1707
    return-void
.end method
