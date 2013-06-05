.class public final Lco/vine/android/provider/Vine$PageCursors;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageCursors"
.end annotation


# static fields
.field public static final ANCHOR:Ljava/lang/String; = "anchor"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.page_cursor"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURSOR_UNDEFINED:I = -0x1

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final KIND_ACTIVITY:I = 0x3

.field public static final KIND_POSTS_TIMELINE:I = 0x2

.field public static final KIND_USERS:I = 0x1

.field public static final NEXT_PAGE:Ljava/lang/String; = "next_page"

.field public static final PAGE_NEW:I = 0x1

.field public static final PAGE_TYPE_NEWER:I = 0x2

.field public static final PAGE_TYPE_OLDER:I = 0x3

.field public static final PREVIOUS_PAGE:Ljava/lang/String; = "previous_page"

.field public static final REVERSED:Ljava/lang/String; = "reversed"

.field public static final TABLE_NAME:Ljava/lang/String; = "page_cursors"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "content://co.vine.android.provider.VineProvider/page_cursors"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PageCursors;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
