.class public final Lco/vine/android/provider/Vine$Likes;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$LikesColumns;
.implements Lco/vine/android/provider/Vine$BasePostColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Likes"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.like"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.likes"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LIMIT_DEFAULT:I = 0x3e8

.field public static final SORT_ORDER_LAST_REFRESH:Ljava/lang/String; = "last_refresh DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "likes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "content://co.vine.android.provider.VineProvider/likes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$Likes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
