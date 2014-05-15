.class public Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "BusinesscardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;
    }
.end annotation


# static fields
.field public static final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field public static final CONTACT_URI_FOR_BUSINESSCARD:Landroid/net/Uri;

.field public static final PROJECTION_CONTACT_BUSINESSCARD:[Ljava/lang/String;


# instance fields
.field private mCurrentOrder:I

.field private mIsMultiSelectionMode:Z

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "has_email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "namecard_photo_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->PROJECTION_CONTACT_BUSINESSCARD:[Ljava/lang/String;

    const-string v0, "content://com.android.contacts/contacts/namecard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_URI_FOR_BUSINESSCARD:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/contacts_list/namecard/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mCurrentOrder:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mIsMultiSelectionMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    return-object v0
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

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;

    invoke-direct {v3, p0, v1, p2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$5;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;[Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setButtonEvent2(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;Landroid/database/Cursor;)V
    .locals 11

    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v9, 0x5

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    int-to-long v9, v0

    invoke-static {v9, v10, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "data"

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-lez v3, :cond_0

    iget-object v9, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-lez v3, :cond_1

    iget-object v9, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    :goto_1
    if-lez v2, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v6, :cond_3

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;

    invoke-direct {v10, p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$2;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    if-eqz v5, :cond_5

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;

    invoke-direct {v10, p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    if-eqz v4, :cond_7

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;

    invoke-direct {v10, p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$4;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_7
    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;

    move-object/from16 v17, p1

    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    if-nez v19, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iget-object v4, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_TRANSPARENT:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    invoke-virtual/range {v3 .. v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;J)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mIsMultiSelectionMode:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCheckView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCheckView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mPushState:Landroid/view/View;

    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void

    :cond_1
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v3, v18

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move-object v3, v12

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCheckView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mPushState:Landroid/view/View;

    const v4, 0x7f02015e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, ""

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0345

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    new-instance v4, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mIsVoLteEnabled:Z

    if-eqz v3, :cond_8

    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v4, 0x7f020096

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setButtonEvent2(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;Landroid/database/Cursor;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_8
    iget-object v3, v11, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5

    instance-of v3, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_URI_FOR_BUSINESSCARD:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    :goto_0
    sget-object v3, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->PROJECTION_CONTACT_BUSINESSCARD:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v3, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mCurrentOrder:I

    packed-switch v3, :pswitch_data_0

    const-string v2, "_id DESC"

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v3, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_0
    const-string v2, "_id ASC"

    goto :goto_1

    :pswitch_1
    const-string v2, "sort_key"

    goto :goto_1

    :pswitch_2
    const-string v2, "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getCustomSortOrder()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mCurrentOrder:I

    return v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p4, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-object v6

    :cond_0
    move-object v6, p4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const v2, 0x7f030010

    invoke-direct {p0, v2, p5}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;

    invoke-direct {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;-><init>()V

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mPushState:Landroid/view/View;

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCheckView:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v2, v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public setCustomSortOrder(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mCurrentOrder:I

    return-void
.end method

.method public setMultiSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mIsMultiSelectionMode:Z

    return-void
.end method

.method public setSelectedContactIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    return-void
.end method
