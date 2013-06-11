.class Lco/vine/android/FindFriendsActivity$TabInfo;
.super Ljava/lang/Object;
.source "FindFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsActivity;
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
    .line 158
    .local p1, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->clss:Ljava/lang/Class;

    .line 160
    iput-object p2, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->bundle:Landroid/os/Bundle;

    .line 161
    iput-object p3, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->tab:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method fragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->mRef:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsActivity$TabInfo;->mTag:Ljava/lang/String;

    .line 167
    return-void
.end method
