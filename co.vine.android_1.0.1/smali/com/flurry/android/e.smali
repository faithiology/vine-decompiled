.class Lcom/flurry/android/e;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/e;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;)V

    .line 26
    const-string v0, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/e;->g:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->setFocusable(Z)V

    .line 28
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/android/e;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v2

    .line 34
    iget-object v0, p0, Lcom/flurry/android/e;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 38
    invoke-virtual {v2, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    .line 40
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->setGravity(I)V

    .line 43
    const/4 v1, 0x0

    .line 45
    :try_start_0
    new-instance v0, Lcom/jumptap/adtag/JtAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, v2}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    new-instance v1, Lcom/flurry/android/aa;

    invoke-direct {v1, p0}, Lcom/flurry/android/aa;-><init>(Lcom/flurry/android/e;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdView;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/flurry/android/e;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 48
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/android/e;->d:Ljava/lang/String;

    const-string v2, "Jumptap JtException when creating ad object."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method
