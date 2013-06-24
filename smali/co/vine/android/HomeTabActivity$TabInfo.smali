.class Lco/vine/android/HomeTabActivity$TabInfo;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabInfo"
.end annotation


# instance fields
.field final bundle:Landroid/os/Bundle;

.field final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field final tab:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "bundle"
    .parameter "tab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lco/vine/android/HomeTabActivity$TabInfo;->clss:Ljava/lang/Class;

    .line 358
    iput-object p2, p0, Lco/vine/android/HomeTabActivity$TabInfo;->bundle:Landroid/os/Bundle;

    .line 359
    iput-object p3, p0, Lco/vine/android/HomeTabActivity$TabInfo;->tab:Ljava/lang/String;

    .line 360
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/HomeTabActivity$TabInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 349
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method fragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 363
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    .line 364
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$TabInfo;->mTag:Ljava/lang/String;

    .line 365
    return-void
.end method
