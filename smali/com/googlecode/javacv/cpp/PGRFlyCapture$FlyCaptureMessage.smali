.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureMessage"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3430
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3431
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3432
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3433
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Msg_Arrival_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Arrival.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_Arrival_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Arrival_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Arrival.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_Arrival_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Arrival_stTimeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Arrival_stTimeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Arrival.stTimeStamp"
        }
    .end annotation
.end method

.method public native Msg_Arrival_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Arrival_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Arrival.szDevice"
        }
    .end annotation
.end method

.method public native Msg_Arrival_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Arrival.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_Arrival_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_BusError_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_BusError_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_stTimeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_stTimeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.stTimeStamp"
        }
    .end annotation
.end method

.method public native Msg_BusError_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.szDevice"
        }
    .end annotation
.end method

.method public native Msg_BusError_ulErrorCode()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.ulErrorCode"
        }
    .end annotation
.end method

.method public native Msg_BusError_ulErrorCode(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_BusError_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.BusError.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_BusError_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_Image_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_Image_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_stTimeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_stTimeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.stTimeStamp"
        }
    .end annotation
.end method

.method public native Msg_Image_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.szDevice"
        }
    .end annotation
.end method

.method public native Msg_Image_ulBytes()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.ulBytes"
        }
    .end annotation
.end method

.method public native Msg_Image_ulBytes(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_ulSequence()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.ulSequence"
        }
    .end annotation
.end method

.method public native Msg_Image_ulSequence(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Image_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Image.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_Image_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.szDevice"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_szError(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_szError()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.szError"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_ulNumberOfQuadlets()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.ulNumberOfQuadlets"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_ulNumberOfQuadlets(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_ulRegister()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.ulRegister"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_ulRegister(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_RegisterBlock_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.RegisterBlock.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_RegisterBlock_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_Register_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_Register_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.szDevice"
        }
    .end annotation
.end method

.method public native Msg_Register_szError(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_szError()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.szError"
        }
    .end annotation
.end method

.method public native Msg_Register_ulRegister()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.ulRegister"
        }
    .end annotation
.end method

.method public native Msg_Register_ulRegister(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_Register_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Register_ulValue()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Register.ulValue"
        }
    .end annotation
.end method

.method public native Msg_Register_ulValue(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Removal_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Removal.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_Removal_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Removal_iNodeNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Removal.iNodeNumber"
        }
    .end annotation
.end method

.method public native Msg_Removal_iNodeNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Removal_stTimeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Removal_stTimeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Removal.stTimeStamp"
        }
    .end annotation
.end method

.method public native Msg_Removal_szDevice(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Removal_szDevice()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Removal.szDevice"
        }
    .end annotation
.end method

.method public native Msg_Removal_ulSerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Removal.ulSerialNumber"
        }
    .end annotation
.end method

.method public native Msg_Removal_ulSerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Reset_iBusNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Reset.iBusNumber"
        }
    .end annotation
.end method

.method public native Msg_Reset_iBusNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Reset_stTimeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public native Msg_Reset_stTimeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "Msg.Reset.stTimeStamp"
        }
    .end annotation
.end method

.method public native msgType()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureMessageType"
        }
    .end annotation
.end method

.method public native msgType(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3429
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
    .locals 1
    .parameter "position"

    .prologue
    .line 3438
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;

    return-object v0
.end method

.method public native ulReserved(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulReserved(II)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;
.end method
