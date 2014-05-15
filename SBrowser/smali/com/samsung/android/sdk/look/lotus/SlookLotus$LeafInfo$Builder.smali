.class public Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
.super Ljava/lang/Object;
.source "SlookLotus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mButtonIntent_1:Landroid/content/Intent;

.field private mButtonIntent_2:Landroid/content/Intent;

.field private mButtonIntent_3:Landroid/content/Intent;

.field private mButtonIntent_4:Landroid/content/Intent;

.field private mButtonIntent_5:Landroid/content/Intent;

.field private mButtonString_1:Ljava/lang/String;

.field private mButtonString_2:Ljava/lang/String;

.field private mButtonString_3:Ljava/lang/String;

.field private mButtonString_4:Ljava/lang/String;

.field private mButtonString_5:Ljava/lang/String;

.field private mButtonURI_1:Ljava/lang/String;

.field private mButtonURI_2:Ljava/lang/String;

.field private mButtonURI_3:Ljava/lang/String;

.field private mButtonURI_4:Ljava/lang/String;

.field private mButtonURI_5:Ljava/lang/String;

.field private mButtonVolatile_1:I

.field private mButtonVolatile_2:I

.field private mButtonVolatile_3:I

.field private mButtonVolatile_4:I

.field private mButtonVolatile_5:I

.field private mCardGroupId:I

.field private mCardId:I

.field private mCardPriority:I

.field private mCardViewType:I

.field private mCheck:I

.field private mCheckIntent:Landroid/content/Intent;

.field private mCheckVolatile:I

.field private mContentIntent:Landroid/content/Intent;

.field private mFileNameDescription:Ljava/lang/String;

.field private mGroupPriority:I

.field private mImageURI_1:Ljava/lang/String;

.field private mImageURI_2:Ljava/lang/String;

.field private mImageURI_3:Ljava/lang/String;

.field private mImageURI_4:Ljava/lang/String;

.field private mRelayAction:I

.field private mRemoteView:Landroid/widget/RemoteViews;

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitle_2:Ljava/lang/String;

.field private mSwitch:I

.field private mSwitchIntent:Landroid/content/Intent;

.field private mSwitchVolatile:I

.field private mTextDescription:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVolatile:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_1:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_2:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_3:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_4:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_5:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchVolatile:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckVolatile:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    iput p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    iput p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_1:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_2:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_3:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_4:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_5:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchVolatile:I

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckVolatile:I

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    iput p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    iput p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    iput p4, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_1:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_2:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_3:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_4:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_5:I

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchVolatile:I

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I

    return v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckVolatile:I

    return v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method private printBuildInfo()V
    .locals 3

    const-string v0, "SlookLotus"

    const-string v1, "<< building info >>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SlookLotus"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardViewType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "GroupID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardGroupId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "LeafID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Volatile : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mVolatile:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Priority : Group - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Card : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Title : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SubTitle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Description : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Description(file) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImageURI_1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImageURI_2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImageURI_3 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ImageURI_4 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ContentsIntent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ButtonURI_1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / String : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ButtonURI_2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / String : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ButtonURI_3 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / String : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ButtonURI_4 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / String : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ButtonURI_5 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / String : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Switch : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Check : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / Intent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Bundle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "RelayAction : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "RemoteView : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->printBuildInfo()V

    new-instance v0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;-><init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;)V

    return-object v0
.end method

.method public setButtonVolatile_1(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_1:I

    return-object p0
.end method

.method public setButtonVolatile_2(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_2:I

    return-object p0
.end method

.method public setButtonVolatile_3(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_3:I

    return-object p0
.end method

.method public setButtonVolatile_4(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_4:I

    return-object p0
.end method

.method public setButtonVolatile_5(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonVolatile_5:I

    return-object p0
.end method

.method public setButton_1(Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_1(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_1:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_1:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_2(Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_2(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_2:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_2:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_2:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_3(Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_3(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_3:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_3:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_3:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_4(Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_4(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_4:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_4:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_4:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_5(Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    return-object p0
.end method

.method public setButton_5(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonURI_5:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonString_5:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mButtonIntent_5:Landroid/content/Intent;

    return-object p0
.end method

.method public setCardPriority(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCardPriority:I

    return-object p0
.end method

.method public setCheck(ILandroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheck:I

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setCheckVolatile(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mCheckVolatile:I

    return-object p0
.end method

.method public setContentIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mContentIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setGroupPriority(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mGroupPriority:I

    return-object p0
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_1:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_2:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_3:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mImageURI_4:Ljava/lang/String;

    return-object p0
.end method

.method public setRelayAction(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRelayAction:I

    return-object p0
.end method

.method public setRemoteView(Landroid/widget/RemoteViews;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mRemoteView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setSpecificExtraData(Landroid/os/Bundle;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSwitch(ILandroid/content/Intent;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitch:I

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setSwitchVolatile(I)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSwitchVolatile:I

    return-object p0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTextDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setTextFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setTextFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mSubTitle_2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo$Builder;->mFileNameDescription:Ljava/lang/String;

    return-object p0
.end method
