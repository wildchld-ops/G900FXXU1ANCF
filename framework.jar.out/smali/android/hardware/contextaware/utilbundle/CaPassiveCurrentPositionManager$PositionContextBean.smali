.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionContextBean"
.end annotation


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->clearPosition()V

    return-void
.end method

.method constructor <init>(F)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->clearPosition()V

    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    return v0
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    return-wide v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    return-wide v0
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    return-wide v0
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    const/high16 v0, 0x447a

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    return-void
.end method

.method final setPosition(I[IDDDDFF)V
    .locals 0

    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    iput-wide p3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    iput-wide p5, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    iput-wide p7, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    iput-wide p9, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    iput p11, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    iput p12, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    return-void
.end method

.method final setPositionsatelliteCount(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    return-void
.end method
