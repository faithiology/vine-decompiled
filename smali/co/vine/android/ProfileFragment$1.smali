.class Lco/vine/android/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ProfileFragment;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ProfileFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lco/vine/android/ProfileFragment$1;->this$0:Lco/vine/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/vine/android/ProfileFragment$1;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/UsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, i:Landroid/content/Intent;
    const-string v1, "p_id"

    iget-object v2, p0, Lco/vine/android/ProfileFragment$1;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserId:J
    invoke-static {v2}, Lco/vine/android/ProfileFragment;->access$000(Lco/vine/android/ProfileFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    packed-switch p2, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 289
    :pswitch_0
    const-string v1, "u_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lco/vine/android/ProfileFragment$1;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, v0}, Lco/vine/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 296
    :pswitch_1
    const-string v1, "u_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lco/vine/android/ProfileFragment$1;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, v0}, Lco/vine/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
