.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;,
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeforeStr:Ljava/lang/String;

.field private mCurStr:Ljava/lang/String;

.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mExtFullyOccupiedCaseLen:I

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mForceHideOrShow:Z

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field public mIsSimAccount:Z

.field private mMinFieldHeight:I

.field public mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    iput v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/editor/TextFieldsEditorView;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;

    return-object p1
.end method

.method private setupExpansionView(ZZ)V
    .locals 3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseUniNameField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const v0, 0x7f02027d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const v0, 0x7f0e0156

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020275

    goto :goto_1

    :cond_2
    const v0, 0x7f0e0157

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editNewlyAddedField()V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    const-string v3, "Failed to show soft input method."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected getFirstFocusableViewId()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPhoneticFamilyName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;
    .locals 1

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticGivenName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;
    .locals 1

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticMiddleName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;
    .locals 1

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneticName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;
    .locals 6

    const-string v3, ""

    const-string v4, "data9"

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "data8"

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "data7"

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v3, v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    const v0, 0x7f080266

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setExpansionViewEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 36

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Lcom/android/contacts/model/RawContactDelta;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->whichSim(Lcom/android/contacts/model/RawContactDelta;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    :cond_0
    sget v34, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    const/4 v5, -0x1

    move/from16 v0, v34

    if-ne v0, v5, :cond_1

    const/16 v34, 0x3e8

    :cond_1
    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v29, 0x0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v25

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move/from16 v0, v29

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/account/AccountType$EditField;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_2
    new-instance v8, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v5, v9, v1}, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType$EditField;Lcom/android/contacts/common/model/ValuesDelta;)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v5 .. v12}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->setLengthFilterForSIM(Landroid/content/Context;ILandroid/widget/EditText;Lcom/android/contacts/common/model/account/AccountType$EditField;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I

    :goto_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-virtual {v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->isMultiLine()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x2

    :goto_3
    invoke-direct {v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    if-eqz v5, :cond_f

    iget v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setMinLines(I)V

    :goto_4
    const/16 v5, 0x10

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setGravity(I)V

    aput-object v8, v33, v29

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setId(I)V

    iget v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    if-lez v5, :cond_3

    iget v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setHint(I)V

    :cond_3
    iget v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x3

    move/from16 v0, v30

    if-ne v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-nez v5, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setTextDirection(I)V

    :cond_5
    const/4 v5, 0x5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v15, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-eqz v5, :cond_6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    move-object/from16 v13, p2

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->readCurrentValueFromState(Landroid/content/Context;ILcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v8, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const-string v5, "#phoneticName"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    aget-object v5, v33, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    new-instance v5, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v8, v1, v15}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Lcom/android/contacts/model/RawContactDelta;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v16

    new-instance v17, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    move/from16 v19, v0

    move-object/from16 v20, p1

    move-object/from16 v21, v8

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->addSpecialSIMTextWatcherIfNeeded(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/EditText;Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez p4, :cond_10

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-boolean v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    if-eqz v5, :cond_12

    const/16 v27, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_9
    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const v5, 0x2000005

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_8
    new-instance v5, Lcom/android/contacts/editor/TextFieldsEditorView$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/editor/TextFieldsEditorView$4;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_b
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_c
    sget v5, Lcom/android/contacts/editor/TextFieldsEditorView;->MAX_LENGTH:I

    const/16 v6, 0xfa

    if-ne v5, v6, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x3e8

    invoke-direct {v7, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v5, 0x8

    goto/16 :goto_6

    :cond_12
    iget-boolean v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    if-eqz v5, :cond_14

    const/16 v27, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x8

    :goto_9
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseUniNameField()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f0e011d

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_7

    :cond_13
    const/4 v5, 0x0

    goto :goto_9

    :cond_14
    iget-boolean v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v5, :cond_18

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z

    if-nez v5, :cond_15

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_15
    const/16 v35, 0x1

    :goto_a
    if-eqz v35, :cond_19

    const/16 v5, 0x8

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setVisibility(I)V

    if-eqz v35, :cond_16

    const/16 v31, 0x1

    :cond_16
    if-nez v27, :cond_17

    if-eqz v24, :cond_1a

    :cond_17
    const/16 v27, 0x1

    :goto_c
    goto/16 :goto_7

    :cond_18
    const/16 v35, 0x0

    goto :goto_a

    :cond_19
    const/4 v5, 0x0

    goto :goto_b

    :cond_1a
    const/16 v27, 0x0

    goto :goto_c

    :cond_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v9, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "numeric"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigZipCodeInputType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x3

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1c
    const/high16 v5, 0x200

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_8

    :cond_1d
    const/high16 v5, 0x200

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    const/16 v28, 0x0

    :goto_d
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_1f

    aget-object v26, v23, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    :cond_1f
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v31, :cond_22

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    :cond_20
    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-nez v5, :cond_23

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v6, :cond_21

    if-eqz v31, :cond_24

    :cond_21
    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-nez p4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    :goto_11
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_22
    const/4 v5, 0x0

    goto :goto_e

    :cond_23
    const/4 v5, 0x0

    goto :goto_f

    :cond_24
    const/4 v6, 0x0

    goto :goto_10

    :cond_25
    const/4 v5, 0x0

    goto :goto_11
.end method
