.class public Lcom/flurry/android/FlurryUserIdProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/flurry/android/FlurryUserIdProvider;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method
