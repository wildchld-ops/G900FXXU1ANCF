.class public Lcom/android/mms/help/PrioritySenderHelpActivity;
.super Landroid/app/Activity;
.source "PrioritySenderHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/help/PrioritySenderHelpActivity$PrioritySenderListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PrioritySenderHelpActivity"

.field public static mIsAdded:Z


# instance fields
.field private mAddPrioritySender:Landroid/widget/TextView;

.field private mDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

.field private mListView:Landroid/widget/ListView;

.field private mPointer:Landroid/view/View;

.field private mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

.field private mSenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mIsAdded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/PrioritySenderHelpActivity;)Lcom/android/mms/help/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/help/PrioritySenderHelpActivity;Lcom/android/mms/help/TwHelpAnimatedDialog;)Lcom/android/mms/help/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private makeCompleteDialog()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04004e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0158

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v3, 0x7f0c0473

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iput-object v5, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    return-object v1
.end method

.method private makeDialog()Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04004f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    const v6, 0x7f0a0104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_0
    const v6, 0x7f0b015a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v6, 0x7f0c0469

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v6, 0x7f0b015b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_2
    const v6, 0x7f0b0026

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    iget-object v6, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    new-instance v7, Lcom/android/mms/help/PrioritySenderHelpActivity$2;

    invoke-direct {v7, p0}, Lcom/android/mms/help/PrioritySenderHelpActivity$2;-><init>(Lcom/android/mms/help/PrioritySenderHelpActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object v0
.end method

.method private showCompleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0015

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->makeCompleteDialog()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0015

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->makeDialog()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/PrioritySenderHelpActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/PrioritySenderHelpActivity$3;-><init>(Lcom/android/mms/help/PrioritySenderHelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->updatePointerPosition(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    goto :goto_0
.end method

.method private updatePointerPosition(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Mms/PrioritySenderHelpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePointerPosition pointer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    const v3, 0x7f0a0100

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f0a0101

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    invoke-static {p0}, Lcom/android/mms/util/UIUtils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v0, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "Mms/PrioritySenderHelpActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPointer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->updatePointerPosition(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040076

    invoke-virtual {p0, v3}, Lcom/android/mms/help/PrioritySenderHelpActivity;->setContentView(I)V

    const v3, 0x7f0b0113

    invoke-virtual {p0, v3}, Lcom/android/mms/help/PrioritySenderHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iput-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/help/MessageDetails;

    const-string v5, "111-444-7777"

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "12:06"

    const v8, 0x7f020260

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/help/MessageDetails;

    const-string v5, "222-555-8888"

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "12:06"

    const v8, 0x7f020261

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/help/MessageDetails;

    const-string v5, "333-000-9999"

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e8

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "111-1111-1111"

    aput-object v9, v8, v11

    const-string v9, "222-2222-2222"

    aput-object v9, v8, v12

    const/4 v9, 0x2

    const-string v10, "333-3333-3333"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "09:19"

    const v8, 0x7f020263

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/android/mms/help/PrioritySenderHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/mms/help/AirViewListAdapter;

    const v5, 0x7f040013

    iget-object v6, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/mms/help/AirViewListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mSenderList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mSenderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/help/MessageDetails;

    const-string v5, "Agatha Christie"

    const v6, 0x7f0201da

    invoke-direct {v4, v5, v6}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mSenderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/help/MessageDetails;

    const-string v5, ""

    const v6, 0x7f02028b

    invoke-direct {v4, v5, v6}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040032

    iget-object v4, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0106

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    iget-object v5, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mDetails:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v11}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    new-instance v4, Lcom/android/mms/help/PrioritySenderHelpActivity$PrioritySenderListAdapter;

    iget-object v5, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mSenderList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v11, v5}, Lcom/android/mms/help/PrioritySenderHelpActivity$PrioritySenderListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f0b0112

    invoke-virtual {p0, v3}, Lcom/android/mms/help/PrioritySenderHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mAddPrioritySender:Landroid/widget/TextView;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0c0172

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c0002

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0202a4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c0003

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mIsAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->showCompleteDialog()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/PrioritySenderHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/PrioritySenderHelpActivity$1;-><init>(Lcom/android/mms/help/PrioritySenderHelpActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->showDialog()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mIsAdded:Z

    return-void
.end method
