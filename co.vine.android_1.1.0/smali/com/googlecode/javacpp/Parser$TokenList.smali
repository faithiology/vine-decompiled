.class Lcom/googlecode/javacpp/Parser$TokenList;
.super Ljava/util/LinkedList;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/googlecode/javacpp/Parser$Token;",
        ">;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lcom/googlecode/javacpp/Parser$Token;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/javacpp/Parser;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Parser;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$TokenList;->this$0:Lcom/googlecode/javacpp/Parser;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$TokenList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Ljava/util/LinkedList;->clear()V

    .line 60
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$TokenList;->reset()V

    .line 61
    return-void
.end method

.method getOrAdd(Lcom/googlecode/javacpp/Parser$Token;)Lcom/googlecode/javacpp/Parser$Token;
    .locals 1
    .parameter "t"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/Parser$Token;

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    new-instance p1, Lcom/googlecode/javacpp/Parser$Token;

    .end local p1
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->this$0:Lcom/googlecode/javacpp/Parser;

    invoke-direct {p1, v0}, Lcom/googlecode/javacpp/Parser$Token;-><init>(Lcom/googlecode/javacpp/Parser;)V

    .line 52
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    move-object v0, p1

    .line 53
    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$TokenList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$TokenList;->iterator:Ljava/util/ListIterator;

    .line 57
    return-void
.end method
