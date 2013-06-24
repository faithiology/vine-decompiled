.class public Lcom/googlecode/javacv/cpp/avutil$AVClass;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVClass"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avutil$AVClass$Query_ranges;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass$Get_category;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_class_next;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_next;,
        Lcom/googlecode/javacv/cpp/avutil$AVClass$Item_name;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 893
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native category()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVClassCategory"
        }
    .end annotation
.end method

.method public native category(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native child_class_next()Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_class_next;
.end method

.method public native child_class_next(Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_class_next;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native child_next()Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_next;
.end method

.method public native child_next(Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_next;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native class_name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native class_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native get_category()Lcom/googlecode/javacv/cpp/avutil$AVClass$Get_category;
.end method

.method public native get_category(Lcom/googlecode/javacv/cpp/avutil$AVClass$Get_category;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native item_name()Lcom/googlecode/javacv/cpp/avutil$AVClass$Item_name;
.end method

.method public native item_name(Lcom/googlecode/javacv/cpp/avutil$AVClass$Item_name;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native log_level_offset_offset()I
.end method

.method public native log_level_offset_offset(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native option(Lcom/googlecode/javacv/cpp/avutil$AVOption;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native option()Lcom/googlecode/javacv/cpp/avutil$AVOption;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native parent_log_context_offset()I
.end method

.method public native parent_log_context_offset(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .locals 1
    .parameter "position"

    .prologue
    .line 901
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVClass;

    return-object v0
.end method

.method public native query_ranges()Lcom/googlecode/javacv/cpp/avutil$AVClass$Query_ranges;
.end method

.method public native query_ranges(Lcom/googlecode/javacv/cpp/avutil$AVClass$Query_ranges;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method

.method public native version()I
.end method

.method public native version(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
