.class public Lcom/android/mms/prioritysender/AddGlanceListActivity;
.super Landroid/app/Activity;
.source "AddGlanceListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final REQUEST_CODE_ADD_THREAD_LIST:I = 0x64

.field private static final REQUEST_CODE_PICK_CONTACTS:I = 0x65

.field private static final TAG:Ljava/lang/String; = "Mms/AddGlanceListActivity"


# instance fields
.field private final mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

.field private mAddFromContacts:Landroid/view/View;

.field private mAddFromThreadList:Landroid/view/View;

.field private mAddedToast:Landroid/widget/Toast;

.field private final mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMaxToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->showMaxToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/prioritysender/AddGlanceListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->showAddedToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/prioritysender/AddGlanceListActivity;)Lcom/android/mms/prioritysender/AddGlanceListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    return-object v0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAddedToast(Ljava/lang/String;)V
    .locals 4

    const v3, 0x7f0c04c1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddedToast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMaxToast()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const v0, 0x7f0c0485

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startQuery()V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v4, "_id desc LIMIT 20"

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v8

    const-string v2, "address"

    aput-object v2, v1, v5

    const-string v2, "eventType=2"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_0
    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->updateEmptyViewBackground()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEmptyViewBackground()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f020282

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v3, 0x7f020283

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    const/16 v12, 0x65

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "result"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz v11, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/glance/GlanceDBHelper;->getMaxPriority()J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "-"

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Lcom/android/mms/glance/GlanceUtils;->isPrioritySender(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v7, v8, v12}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    if-eqz v10, :cond_2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    :cond_4
    if-lez v1, :cond_8

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    const v12, 0x7f0c0480

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_2
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->finish()V

    :cond_6
    return-void

    :cond_7
    const v12, 0x7f0c0481

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_8
    if-lez v5, :cond_5

    const v12, 0x7f0c0484

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->updateEmptyViewBackground()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->setContentView(I)V

    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromThreadList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromThreadList:Landroid/view/View;

    new-instance v2, Lcom/android/mms/prioritysender/AddGlanceListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$1;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    new-instance v2, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$2;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mContentChangedListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnContentChangedListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->setOnAddClickListener(Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mAddFromContacts:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;-><init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
