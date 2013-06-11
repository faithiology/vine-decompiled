.class Lcom/googlecode/javacpp/Generator$1;
.super Ljava/io/Writer;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Generator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacpp/Generator;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Generator;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/googlecode/javacpp/Generator$1;->this$0:Lcom/googlecode/javacpp/Generator;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public write([CII)V
    .locals 0
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 163
    return-void
.end method
