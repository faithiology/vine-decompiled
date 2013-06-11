.class public Lcom/googlecode/javacpp/Generator$LinkedListRegister;
.super Ljava/util/LinkedList;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedListRegister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    .local p0, this:Lcom/googlecode/javacpp/Generator$LinkedListRegister;,"Lcom/googlecode/javacpp/Generator$LinkedListRegister<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/googlecode/javacpp/Generator$LinkedListRegister;,"Lcom/googlecode/javacpp/Generator$LinkedListRegister<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 123
    .local v0, i:I
    if-gez v0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Generator$LinkedListRegister;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 127
    :cond_0
    return v0
.end method
