.class Lco/vine/android/widget/FeedAdapter$7;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/FeedAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;

.field final synthetic val$post:Lco/vine/android/api/VinePost;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 681
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lco/vine/android/widget/FeedAdapter;->access$700(Lco/vine/android/widget/FeedAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lco/vine/android/widget/FeedAdapter;->access$700(Lco/vine/android/widget/FeedAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lco/vine/android/CommentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "post_id"

    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;

    iget-wide v3, v3, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hide_keyboard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method
