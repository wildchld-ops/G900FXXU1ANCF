.class public Lcom/android/mms/ui/VAttachmentListView;
.super Landroid/widget/LinearLayout;
.source "VAttachmentListView.java"


# static fields
.field private static final TYPE_ICON_DEFAULT:I = 0x7f020013

.field private static sTypeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private childView:Landroid/widget/LinearLayout;

.field private img:Landroid/widget/ImageView;

.field private mItemClickable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/VAttachmentListView;->initVariable(Landroid/content/Context;)V

    return-void
.end method

.method private getTypeIconId(Ljava/lang/String;)I
    .locals 3

    sget-object v1, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const v1, 0x7f020013

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private initVariable(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/mms/ui/VAttachmentListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vcard"

    const v2, 0x7f0202de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vcalendar"

    const v2, 0x7f0202dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vnote"

    const v2, 0x7f0202df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/mms/ui/VAttachmentListView;->sTypeIcons:Ljava/util/HashMap;

    const-string v1, "text/x-vtodo"

    const v2, 0x7f0202e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/model/AttachmentModel;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->childView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->childView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->txt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->childView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->txt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/VAttachmentListView;->getTypeIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/VAttachmentListView;->txt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->img:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/VAttachmentListView;->childView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VAttachmentListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/ui/VAttachmentListView;->removeAllViews()V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/VAttachmentListView;->mItemClickable:Z

    return-void
.end method
