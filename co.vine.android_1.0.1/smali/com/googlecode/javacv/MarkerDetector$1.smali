.class Lcom/googlecode/javacv/MarkerDetector$1;
.super Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;
.source "MarkerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/MarkerDetector;->init(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/MarkerDetector;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/MarkerDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/googlecode/javacv/MarkerDetector$1;->this$0:Lcom/googlecode/javacv/MarkerDetector;

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 1
    .parameter "nStr"

    .prologue
    .line 151
    const-class v0, Lcom/googlecode/javacv/MarkerDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 152
    return-void
.end method
