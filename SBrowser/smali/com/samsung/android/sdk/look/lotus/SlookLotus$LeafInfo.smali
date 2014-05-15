.class public Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;
.super Ljava/lang/Object;
.source "SlookLotus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/lotus/SlookLotus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeafInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    }
.end annotation


# static fields
.field public static final DO_INTENT_AUTOMATICALLY:I = 0x0

.field public static final INDELIBLE_LEAF:I = 0x2

.field public static final LEAF_TYPE_PREDEFINED_1:I = 0x1

.field public static final LEAF_TYPE_PREDEFINED_10:I = 0xa

.field public static final LEAF_TYPE_PREDEFINED_2:I = 0x2

.field public static final LEAF_TYPE_PREDEFINED_3:I = 0x3

.field public static final LEAF_TYPE_PREDEFINED_4:I = 0x4

.field public static final LEAF_TYPE_PREDEFINED_5:I = 0x5

.field public static final LEAF_TYPE_PREDEFINED_6:I = 0x6

.field public static final LEAF_TYPE_PREDEFINED_7:I = 0x7

.field public static final LEAF_TYPE_PREDEFINED_8:I = 0x8

.field public static final LEAF_TYPE_PREDEFINED_9:I = 0x9

.field public static final LEAF_TYPE_REMOTEVIEW:I = 0x0

.field public static final NON_VOLATILE_LEAF:I = 0x0

.field public static final RECEIVE_INTENT:I = 0x1

.field public static final STATE_NONE:I = 0x2

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static final VOLATILE_LEAF:I = 0x1


# instance fields
.field private mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    const-string v0, "SlookLotus"

    const-string v1, "LeafInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/glancecard/GlanceCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/glancecard/GlanceCardInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    new-instance v0, Lcom/samsung/android/glancecard/GlanceCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/glancecard/GlanceCardInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$1900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_1:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_2:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_3:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$2900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_4:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_5:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$3900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchVolatile:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckVolatile:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->access$4600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;-><init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;)Lcom/samsung/android/glancecard/GlanceCardInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    return-object v0
.end method


# virtual methods
.method protected getCardObject()Lcom/samsung/android/glancecard/GlanceCardInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget v0, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    return v0
.end method

.method public getLeafId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget v0, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    return v0
.end method

.method public getSpecificExtraData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget-object v0, v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method
