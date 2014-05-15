.class public Lcom/samsung/contacts/detail/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/samsung/contacts/detail/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;,
        Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;,
        Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDoneUpdate:Z

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFirstCheckedEmailIndex:I

.field private mFirstCheckedNameIndex:I

.field private mFirstCheckedNumberIndex:I

.field private mFirstCheckedPhotoIndex:I

.field private mIsEmailChanged:Z

.field private mIsFirstEmail:Z

.field private mIsFirstName:Z

.field private mIsFirstNumber:Z

.field private mIsFirstPhoto:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field private mIsPhotoCheckedPrimary:Z

.field protected mLookupUri:Landroid/net/Uri;

.field private mMenuDone:Landroid/widget/Button;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mDoneUpdate:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    new-instance v0, Lcom/samsung/contacts/detail/SetDefaultActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/detail/SetDefaultActivity$3;-><init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/detail/SetDefaultActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/detail/SetDefaultActivity$4;-><init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/SetDefaultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->performSaveAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/SetDefaultActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/contacts/detail/SetDefaultActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/SetDefaultActivity;->bindData(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/contacts/detail/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->buildDataString(Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/contacts/detail/SetDefaultActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/contacts/detail/SetDefaultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/contacts/detail/SetDefaultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/contacts/detail/SetDefaultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method private addLastSeparator()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/contacts/detail/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/samsung/contacts/detail/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private bindData(Lcom/android/contacts/model/Contact;)V
    .locals 25

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->initData()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/model/RawContact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v16

    const-string v2, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v9, v15}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v2, :cond_5

    const v8, 0x7f0e024b

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Object;

    const/16 v23, 0x0

    sget-object v2, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v24, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_4

    const-string v2, "KNOX"

    :goto_1
    aput-object v2, v12, v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    move-object v10, v11

    :cond_2
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz v3, :cond_3

    invoke-virtual {v14, v9, v15, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;JLandroid/content/ContentValues;)Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    move-result-object v13

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/samsung/contacts/detail/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_4

    :cond_4
    const-string v2, "KNOX II"

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_6
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_7
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_8
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/samsung/contacts/detail/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_4

    :cond_9
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/common/model/account/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7, v13}, Lcom/samsung/contacts/detail/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_4

    :cond_a
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/common/model/account/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7, v13}, Lcom/samsung/contacts/detail/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->setupFlattenedList()V

    new-instance v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/samsung/contacts/detail/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->updateCheckedIndex()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->id:J

    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    iput-object p1, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e047a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iput-boolean v5, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-wide v1, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->id:J

    iput-object v0, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    iput-object p1, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-boolean v5, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    iput v5, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0484

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->id:J

    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    iput-object p1, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e047e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p4}, Lcom/samsung/contacts/detail/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    if-nez v3, :cond_0

    iput-boolean v5, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    iput-boolean v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    :cond_0
    const/4 v1, 0x0

    const-string v3, "data15"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    array-length v3, v2

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "_id"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->id:J

    iput-object v1, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    iput-object p2, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    iput-boolean v5, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    iput v6, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->which:I

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0479

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p5, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method private static buildDataString(Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/contacts/detail/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/samsung/contacts/detail/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getAccountIcon(Lcom/android/contacts/common/model/account/AccountType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private initializeCheckedInformation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    iput v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    return-void
.end method

.method private isCustomType(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "name_verified"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "name_verified"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private performSaveAction()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->finish()V

    return-void
.end method

.method private prepareData()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private setupFlattenedList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->addLastSeparator()V

    return-void
.end method

.method private setupTitle()V
    .locals 3

    const v2, 0x7f030062

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f030063

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    goto :goto_0
.end method

.method private updateCheckedIndex()V
    .locals 8

    const/4 v7, -0x1

    :try_start_0
    iget v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_0
    iget v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_1
    iget v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    :cond_2
    iget v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/samsung/contacts/detail/SetDefaultActivity$DetailViewEntry;->isPrimary:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->initializeCheckedInformation()V

    goto :goto_0
.end method

.method private updateFlag(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v1, v1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mDoneUpdate:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    if-eqz p1, :cond_6

    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v2, :cond_0

    aget-boolean v4, v2, v5

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    aget-boolean v4, v2, v6

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    aget-boolean v4, v2, v7

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    aget-boolean v4, v2, v8

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    :cond_0
    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v4, :cond_1

    aget v4, v0, v5

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v4, :cond_2

    aget v4, v0, v6

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v4, :cond_3

    aget v4, v0, v7

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v4, :cond_4

    aget v4, v0, v8

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    :cond_4
    if-eqz v3, :cond_5

    aget-boolean v4, v3, v5

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z

    aget-boolean v4, v3, v6

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z

    aget-boolean v4, v3, v7

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z

    aget-boolean v4, v3, v8

    iput-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z

    :cond_5
    if-eqz v1, :cond_6

    aget v4, v1, v5

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    aget v4, v1, v6

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I

    aget v4, v1, v7

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    aget v4, v1, v8

    iput v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f030112

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/detail/SetDefaultActivity;->setContentView(I)V

    const v4, 0x7f0802ac

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/detail/SetDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->prepareData()V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->setupTitle()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f080171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/detail/SetDefaultActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/detail/SetDefaultActivity$1;-><init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;

    const v4, 0x7f0e0295

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mDoneUpdate:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mMenuDone:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/contacts/detail/SetDefaultActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/detail/SetDefaultActivity$2;-><init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return v3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mAdapter:Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/contacts/detail/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    return-void
.end method

.method public onProviderStatusChange()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->updateFlag(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->updateFlag(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v9, [I

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedPhotoIndex:I

    aput v4, v0, v5

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNameIndex:I

    aput v4, v0, v6

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedNumberIndex:I

    aput v4, v0, v7

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mCheckedEmailIndex:I

    aput v4, v0, v8

    new-array v2, v9, [Z

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsPhotoChanged:Z

    aput-boolean v4, v2, v5

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNameChanged:Z

    aput-boolean v4, v2, v6

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsNumberChanged:Z

    aput-boolean v4, v2, v7

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsEmailChanged:Z

    aput-boolean v4, v2, v8

    new-array v1, v9, [I

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    aput v4, v1, v5

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNameIndex:I

    aput v4, v1, v6

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    aput v4, v1, v7

    iget v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    aput v4, v1, v8

    new-array v3, v9, [Z

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstPhoto:Z

    aput-boolean v4, v3, v5

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstName:Z

    aput-boolean v4, v3, v6

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstNumber:Z

    aput-boolean v4, v3, v7

    iget-boolean v4, p0, Lcom/samsung/contacts/detail/SetDefaultActivity;->mIsFirstEmail:Z

    aput-boolean v4, v3, v8

    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
