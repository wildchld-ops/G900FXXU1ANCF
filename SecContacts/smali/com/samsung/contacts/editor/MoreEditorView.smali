.class public Lcom/samsung/contacts/editor/MoreEditorView;
.super Landroid/widget/LinearLayout;
.source "MoreEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mDataView:Landroid/widget/TextView;

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field public mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

.field private mTitleView:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/MoreEditorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/MoreEditorView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/editor/MoreEditorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateView()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/MoreEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mDataView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0246

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/MoreEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/MoreEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mDataView:Landroid/widget/TextView;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mData:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;->setMoreData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/contacts/editor/MoreEditorView;->updateView()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMoreOnClickListener()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/editor/MoreEditorView$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/editor/MoreEditorView$1;-><init>(Lcom/samsung/contacts/editor/MoreEditorView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/MoreEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;Ljava/lang/String;Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iput-object p6, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/MoreEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/MoreEditorView;->setId(I)V

    iget-object v0, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mListener:Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;

    iget-object v1, p0, Lcom/samsung/contacts/editor/MoreEditorView;->mType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/editor/MoreEditorView$MoreEditorListener;->onGetMoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/MoreEditorView;->setData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/MoreEditorView;->setMoreOnClickListener()V

    return-void
.end method
