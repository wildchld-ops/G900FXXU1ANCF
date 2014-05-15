.class public Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;
.super Ljava/lang/Object;
.source "DialpadSearchViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;,
        Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddContactsView:Landroid/view/View;

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDigitsView:Landroid/widget/EditText;

.field private mDropButton:Landroid/view/View;

.field private mItemButton:Landroid/view/View;

.field private mMainItem:Lcom/samsung/dialer/dialpad/ContactItem;

.field mNameResultDialog:Landroid/app/AlertDialog;

.field private mResultArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/view/View;

.field private mViewCount:Landroid/widget/TextView;

.field private mViewName:Landroid/widget/TextView;

.field private mViewNumber:Landroid/widget/TextView;

.field private mViewPhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/EditText;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    invoke-virtual {p0, p2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setupView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Lcom/samsung/dialer/dialpad/ContactItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mMainItem:Lcom/samsung/dialer/dialpad/ContactItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setNumberDigitsView(Lcom/samsung/dialer/dialpad/ContactItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/ContactItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->showNumberListDialog(Lcom/samsung/dialer/dialpad/ContactItem;)Z

    move-result v0

    return v0
.end method

.method private setNumberDigitsView(Lcom/samsung/dialer/dialpad/ContactItem;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNumberDigitsView - number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getReplaceGsmCharToAndroidFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    const-string v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPhoto(Landroid/widget/ImageView;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    return-void
.end method

.method private showNumberListDialog(Lcom/samsung/dialer/dialpad/ContactItem;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/dialer/dialpad/NumberListUtil;->getNumberList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    const v6, 0x7f03007f

    invoke-direct {v2, v5, v6, v3}, Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0e01ba

    new-instance v6, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$4;

    invoke-direct {v6, p0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$4;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;

    invoke-direct {v5, p0, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$5;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/NumberListUtil$NumberArrayAdapter;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static toOneDigitChar(J)Ljava/lang/String;
    .locals 4

    const-string v0, "%01d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanupView()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mNameResultDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDropButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    :cond_3
    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDropButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewPhoto:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewName:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewNumber:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewCount:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getHighlightedString(Ljava/lang/String;III)Landroid/text/SpannableString;
    .locals 4

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p3, :cond_0

    if-gt p2, p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v3, "getHighlightedString - IndexOutOfBoundsException in setSpan"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isShowingSearchDialog()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    sget-object v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowingSearchDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "mDialog is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemView(Lcom/samsung/dialer/dialpad/ContactItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhoneType()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v15, :cond_3

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    int-to-long v4, v15

    invoke-static {v3, v4, v5, v12}, Lcom/samsung/dialer/dialpad/DialpadUtil;->loadPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getHighlightStartIndex()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getHighlightEndIndex()I

    move-result v9

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p5, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getSearchType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    int-to-long v5, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v3

    int-to-long v7, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setPhoto(Landroid/widget/ImageView;JJ)V

    goto :goto_0

    :cond_3
    int-to-long v5, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v3

    int-to-long v7, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setPhoto(Landroid/widget/ImageView;JJ)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v10, v4}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v3, v0

    add-int v9, v17, v3

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v0, v10, v1, v9, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->getHighlightedString(Ljava/lang/String;III)Landroid/text/SpannableString;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v0, v11, v1, v9, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->getHighlightedString(Ljava/lang/String;III)Landroid/text/SpannableString;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_3
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v0, v11, v1, v9, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->getHighlightedString(Ljava/lang/String;III)Landroid/text/SpannableString;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    const/16 v3, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1010 -> :sswitch_1
        0x1011 -> :sswitch_1
        0x1020 -> :sswitch_2
        0x1030 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSearchLayout(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSearchLayout - keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v1, "mDigitsView is null - not execute setSearchLayout!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDigitsView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dialer/dialpad/ContactItem;

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mMainItem:Lcom/samsung/dialer/dialpad/ContactItem;

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->toOneDigitChar(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewCount:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mMainItem:Lcom/samsung/dialer/dialpad/ContactItem;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewNumber:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x7f0a008f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->setItemView(Lcom/samsung/dialer/dialpad/ContactItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$1;

    invoke-direct {v1, p0, v9}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$1;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public setupView(Landroid/view/View;)V
    .locals 3

    sget-object v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "setupView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f080147

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    const v1, 0x7f0801b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mSearchView:Landroid/view/View;

    const v2, 0x7f0801b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDropButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    const v2, 0x7f08003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDropButton:Landroid/view/View;

    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mViewCount:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchViewClickListener;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$1;)V

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mAddContactsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mItemButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDropButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showSearchResult()V
    .locals 5

    sget-object v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v3, "showSearchResult"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->TAG:Ljava/lang/String;

    const-string v3, "return - mResultArrayList is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mContext:Landroid/content/Context;

    const v3, 0x7f030083

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mResultArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v2, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$3;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0318

    new-instance v4, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$2;

    invoke-direct {v4, p0}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$2;-><init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02bb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
