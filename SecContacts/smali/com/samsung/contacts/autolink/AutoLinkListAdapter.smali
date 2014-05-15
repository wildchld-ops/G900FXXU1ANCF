.class public Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoLinkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/contacts/autolink/AutoLinkData;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoLinkMembers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    return-void
.end method

.method private bindView(Landroid/view/View;Lcom/samsung/contacts/autolink/AutoLinkData;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;

    iget-boolean v5, p2, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-eqz v5, :cond_0

    move-object v4, p2

    check-cast v4, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->listData:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->groupData:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->nameGroup:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mCompareData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p2, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    move-object v2, p2

    check-cast v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->listData:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->groupData:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->photo:Landroid/widget/ImageView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    iget-wide v7, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->drawPhoto(Landroid/widget/ImageView;[BJ)V

    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->primaryData:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    :cond_1
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconOne:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconTwo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconThree:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-boolean v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->primaryData:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mCompareData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v5, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v11, :cond_2

    add-int/lit8 v5, v3, 0x1

    if-gt v5, v0, :cond_9

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    if-le v0, v11, :cond_8

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02015b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object v5, v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private drawPhoto(Landroid/widget/ImageView;[BJ)V
    .locals 6

    move-object v2, p2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f02007a

    iget-object v4, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3, p4}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/contacts/autolink/AutoLinkData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->getItem(I)Lcom/samsung/contacts/autolink/AutoLinkData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkData;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    iget-wide v1, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v3, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkData;

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;

    invoke-direct {v0, v2}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->bindView(Landroid/view/View;Lcom/samsung/contacts/autolink/AutoLinkData;)V

    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;->getItem(I)Lcom/samsung/contacts/autolink/AutoLinkData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
