.class Lco/vine/android/SignUpNameAvatarFragment$1;
.super Ljava/lang/Object;
.source "SignUpNameAvatarFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/SignUpNameAvatarFragment;->setPendingUri(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpNameAvatarFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SignUpNameAvatarFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment$1;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment$1;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    invoke-virtual {v0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Cannot save profile image."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method
