.class Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BusinesscardViewerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVoLTEEnable:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mIsVoLTEEnable:Z

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method private bindDatas(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 22

    const v20, 0x7f080052

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v20, 0x7f080053

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v20, 0x7f080054

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v20, 0x7f080056

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    const v20, 0x7f080058

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const v20, 0x7f080055

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x7f080057

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    int-to-long v0, v3

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v20, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mIsVoLTEEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const v20, 0x7f020096

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-lez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-lez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v8, 0x1

    :goto_3
    if-lez v5, :cond_5

    const/4 v7, 0x1

    :goto_4
    if-eqz v9, :cond_6

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v20, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$2;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    if-eqz v8, :cond_8

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v20, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$3;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    if-eqz v7, :cond_a

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v20, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$4;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    return-void

    :cond_0
    const v20, 0x7f020095

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    :goto_a
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    move-object v10, v2

    goto :goto_a

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_7
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_a
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method private buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$5;

    invoke-direct {v3, p0, v0, p2}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$5;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;[Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2

    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030013

    invoke-virtual {v0, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f08004e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x9

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-nez v6, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZJ)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v7, v0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->bindDatas(Landroid/view/View;Landroid/database/Cursor;)V

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v7, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :cond_0
    return-object v7

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/view/View;

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 2

    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public setVolteEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardViewerAdapter;->mIsVoLTEEnable:Z

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2

    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
