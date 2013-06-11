.class Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;
.super Ljava/lang/Object;
.source "ProCamGeometricCalibrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processCameraImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)[[Lcom/googlecode/javacv/Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/ProCamGeometricCalibrator;

.field final synthetic val$boardWhiteMarkers:Z

.field final synthetic val$cameraNumber:I


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->this$0:Lcom/googlecode/javacv/ProCamGeometricCalibrator;

    iput p2, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$cameraNumber:I

    iput-boolean p3, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$boardWhiteMarkers:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->this$0:Lcom/googlecode/javacv/ProCamGeometricCalibrator;

    #getter for: Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;
    invoke-static {v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->access$200(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$cameraNumber:I

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->this$0:Lcom/googlecode/javacv/ProCamGeometricCalibrator;

    #getter for: Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;
    invoke-static {v2}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->access$300(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/GeometricCalibrator;

    move-result-object v2

    iget v3, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$cameraNumber:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->this$0:Lcom/googlecode/javacv/ProCamGeometricCalibrator;

    #getter for: Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v3}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->access$000(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    iget v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$cameraNumber:I

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;->val$boardWhiteMarkers:Z

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/MarkerDetector;->detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)[Lcom/googlecode/javacv/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    return-void
.end method
