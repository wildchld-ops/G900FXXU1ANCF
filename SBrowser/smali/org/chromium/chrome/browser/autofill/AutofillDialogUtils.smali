.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;
.super Ljava/lang/Object;
.source "AutofillDialogUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final INVALID_ID:I = -0x1

.field public static final INVALID_SECTION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsCreditCardInfo(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLabelIDForSection(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f0a00a8

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0a00a6

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a00ac

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a00aa

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a00ae

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getLayoutIDForSection(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f0a0089

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0a0088

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0099

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a008f

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a0097

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getSectionForSpinnerID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getSpinnerIDForSection(I)I

    move-result v1

    if-ne v1, p0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getSpinnerIDForSection(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f0a00a9

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0a00a7

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a00ad

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a00ab

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a00af

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getViewIDForField(II)I
    .locals 5

    const v3, 0x7f0a008d

    const v2, 0x7f0a008c

    const v1, 0x7f0a008b

    const v0, 0x7f0a008a

    const/4 v4, -0x1

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const v0, 0x7f0a0098

    :goto_0
    :pswitch_1
    :sswitch_0
    return v0

    :pswitch_2
    packed-switch p1, :pswitch_data_1

    :pswitch_3
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v3

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0a008e

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :pswitch_8
    sparse-switch p1, :sswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_1
    const v0, 0x7f0a0090

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0a0091

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0a0092

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0a0093

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0a0094

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0a0095

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0a0096

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :pswitch_9
    sparse-switch p1, :sswitch_data_1

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_8
    move v0, v1

    goto :goto_0

    :sswitch_9
    move v0, v2

    goto :goto_0

    :sswitch_a
    move v0, v3

    goto :goto_0

    :sswitch_b
    const v0, 0x7f0a008e

    goto :goto_0

    :sswitch_c
    const v0, 0x7f0a0090

    goto :goto_0

    :sswitch_d
    const v0, 0x7f0a0091

    goto :goto_0

    :sswitch_e
    const v0, 0x7f0a0092

    goto :goto_0

    :sswitch_f
    const v0, 0x7f0a0093

    goto :goto_0

    :sswitch_10
    const v0, 0x7f0a0094

    goto :goto_0

    :sswitch_11
    const v0, 0x7f0a0095

    goto :goto_0

    :sswitch_12
    const v0, 0x7f0a0096

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :pswitch_a
    sparse-switch p1, :sswitch_data_2

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_13
    const v0, 0x7f0a009a

    goto/16 :goto_0

    :sswitch_14
    const v0, 0x7f0a009b

    goto/16 :goto_0

    :sswitch_15
    const v0, 0x7f0a009c

    goto/16 :goto_0

    :sswitch_16
    const v0, 0x7f0a009d

    goto/16 :goto_0

    :sswitch_17
    const v0, 0x7f0a009e

    goto/16 :goto_0

    :sswitch_18
    const v0, 0x7f0a009f

    goto/16 :goto_0

    :sswitch_19
    const v0, 0x7f0a00a0

    goto/16 :goto_0

    :sswitch_1a
    const v0, 0x7f0a00a1

    goto/16 :goto_0

    :cond_4
    move v0, v4

    goto/16 :goto_0

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_7
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_5
        0x24 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_12
        0x1e -> :sswitch_c
        0x1f -> :sswitch_d
        0x21 -> :sswitch_e
        0x22 -> :sswitch_f
        0x23 -> :sswitch_10
        0x24 -> :sswitch_11
        0x33 -> :sswitch_b
        0x34 -> :sswitch_0
        0x35 -> :sswitch_8
        0x37 -> :sswitch_9
        0x3b -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_13
        0xe -> :sswitch_1a
        0x1e -> :sswitch_14
        0x1f -> :sswitch_15
        0x21 -> :sswitch_16
        0x22 -> :sswitch_17
        0x23 -> :sswitch_18
        0x24 -> :sswitch_19
    .end sparse-switch
.end method
