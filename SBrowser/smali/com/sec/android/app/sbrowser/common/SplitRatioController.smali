.class public Lcom/sec/android/app/sbrowser/common/SplitRatioController;
.super Ljava/lang/Object;
.source "SplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;
    }
.end annotation


# static fields
.field public static final KEY_LEFT_PANE_WIDTH_LANDSCAPE:Ljava/lang/String; = "leftPaneWidthLandscape"

.field public static final KEY_LEFT_PANE_WIDTH_PORTRAIT:Ljava/lang/String; = "leftPaneWidthPortrait"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private XOffset:I

.field private bMove:Z

.field private mActivity:Landroid/app/Activity;

.field private mFocusedSplitBar:Landroid/view/View;

.field private mLeftPaneContainer:Landroid/view/View;

.field private mLeftPaneMaxWidth:I

.field private mLeftPaneMinWidth:I

.field private mLeftTransparentSplitBar:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;

.field private mMWWidth:I

.field private mRightTransparentSplitBar:Landroid/view/View;

.field private mSavedLeftPaneWidthLandscape:I

.field private mSavedLeftPaneWidthPortrait:I

.field private mSplitBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->XOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->bMove:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mMWWidth:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMinWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSplitBar:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mListener:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mListener:Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/SplitRatioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setLeftPaneWidth(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    return v0
.end method

.method private configureSplitBarListener()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$1;-><init>(Lcom/sec/android/app/sbrowser/common/SplitRatioController;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private getCurrentLeftPaneWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private getCurrentOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getSavedLeftPaneWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    goto :goto_0
.end method

.method private setLeftPaneWidth(I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setMaxLeftPaneWidth(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->XOffset:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mMWWidth:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mMWWidth:I

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v1, v2, 0x42

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->XOffset:I

    if-ge v2, p1, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->XOffset:I

    sub-int/2addr p1, v2

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mMWWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMinWidth:I

    if-ge p1, v2, :cond_3

    const/16 p1, 0xa

    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split ratio changed. Left pane width is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setSavedLeftPaneWidth(I)V

    return-void

    :cond_3
    if-le p1, v1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMinWidth:I

    if-ge p1, v2, :cond_5

    const/16 p1, 0xa

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    if-le p1, v2, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    goto :goto_0
.end method

.method private setSavedLeftPaneWidth(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->configureSplitBarListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getSavedLeftPaneWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setLeftPaneWidth(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "leftPaneWidthPortrait"

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthPortrait:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "leftPaneWidthLandscape"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentLeftPaneWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "leftPaneWidthPortrait"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentLeftPaneWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "leftPaneWidthLandscape"

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMaxLeftPaneWidth(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mSavedLeftPaneWidthLandscape:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->mLeftPaneMaxWidth:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setLeftPaneWidth(I)V

    :cond_0
    return-void
.end method

.method public setMoveAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->bMove:Z

    return-void
.end method
