.class Lcom/googlecode/javacpp/Parser$Token;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Token"
.end annotation


# static fields
.field static final COMMENT:I = 0x4

.field static final IDENTIFIER:I = 0x3

.field static final NUMBER:I = 0x1

.field static final STRING:I = 0x2


# instance fields
.field spacing:Ljava/lang/String;

.field final synthetic this$0:Lcom/googlecode/javacpp/Parser;

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Parser;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Token;->this$0:Lcom/googlecode/javacpp/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
