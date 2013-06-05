.class public final Lco/vine/android/provider/Vine$Activity;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$BasePostColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.activity"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.activities"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LAST_REFRESH:Ljava/lang/String; = "last_refresh"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "notification_id DESC"

.field public static final SORT_ORDER_LAST:Ljava/lang/String; = "timestamp ASC"

.field public static final SORT_ORDER_LAST_REFRESH:Ljava/lang/String; = "last_refresh DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "activity"

.field public static final THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final TYPE_COMMENT:I = 0x3

.field public static final TYPE_FOLLOW:I = 0x1

.field public static final TYPE_LIKE:I = 0x2

.field public static final TYPE_MENTION:I = 0xa

.field public static final TYPE_UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "content://co.vine.android.provider.VineProvider/activity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$Activity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
