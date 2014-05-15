.class public Lcom/android/mms/help/AddGlanceListHelpActivity;
.super Landroid/app/Activity;
.source "AddGlanceListHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/help/AddGlanceListHelpActivity$GlanceListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AddGlanceListHelpActivity"


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/AddGlanceListHelpActivity;)Lcom/android/mms/help/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    return-object v0
.end method

.method private makeContentView()Landroid/view/View;
    .locals 13

    const/16 v12, 0xb

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v8, 0x7f04004f

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_0

    const v8, 0x7f0a0105

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_0
    const v8, 0x7f0b0159

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    const v8, 0x7f0b015a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const v8, 0x7f0c04a9

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const v8, 0x7f0b015b

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v11, v11, v6, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_3
    const v8, 0x7f0b0026

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    new-instance v9, Lcom/android/mms/help/AddGlanceListHelpActivity$1;

    invoke-direct {v9, p0}, Lcom/android/mms/help/AddGlanceListHelpActivity$1;-><init>(Lcom/android/mms/help/AddGlanceListHelpActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object v0
.end method

.method private updatePointerPosition(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Mms/AddGlanceListHelpActivity"

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0a0102

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0a0103

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    invoke-static {p0}, Lcom/android/mms/util/UIUtils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v6, v3, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "Mms/AddGlanceListHelpActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->updatePointerPosition(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/android/mms/help/AddGlanceListHelpActivity;->setContentView(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/mms/help/MessageDetails;

    const-string v3, "James Smith"

    const-string v4, ""

    const v5, 0x7f020260

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/mms/help/MessageDetails;

    const-string v3, "Robert Jonhson"

    const-string v4, ""

    const v5, 0x7f020261

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/mms/help/MessageDetails;

    const-string v3, "Jennifer Wilson"

    const-string v4, ""

    const v5, 0x7f020262

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/mms/help/MessageDetails;

    const-string v3, "Nancy Anderson"

    const-string v4, ""

    const v5, 0x7f020263

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/help/MessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/mms/help/AddGlanceListHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/help/AddGlanceListHelpActivity$GlanceListAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mDetails:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/help/AddGlanceListHelpActivity$GlanceListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->showDialog()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public showDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0015

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct {p0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->makeContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/AddGlanceListHelpActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AddGlanceListHelpActivity$2;-><init>(Lcom/android/mms/help/AddGlanceListHelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mPointer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->updatePointerPosition(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    goto :goto_0
.end method
