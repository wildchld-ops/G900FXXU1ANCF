.class public Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "BlockSettingsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;
    }
.end annotation


# static fields
.field public static final mBlcokNumberResult:[Z

.field public static mBlcoknumbersetting:[Z

.field private static mBlockSettingsDialogFragment:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

.field public static mOriginalBlcokNumberSetting:[Z

.field private static mRejectNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlockSettingsDialogFragment:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    return-void
.end method

.method public static getInstance()Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlockSettingsDialogFragment:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;-><init>()V

    sput-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlockSettingsDialogFragment:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    :cond_0
    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlockSettingsDialogFragment:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    return-object v0
.end method


# virtual methods
.method public BlockNumberSettingsDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    const/4 v13, 0x1

    sget-object v14, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    const/4 v15, 0x2

    const/16 v16, 0x1

    aput-boolean v16, v14, v15

    aput-boolean v16, v12, v13

    aput-boolean v16, v10, v11

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    if-nez v10, :cond_1

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :goto_0
    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x2

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x2

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    new-instance v9, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    invoke-direct {v9}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVideoCallChecked:Z

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isMessageChecked:Z

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x3

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0e0405

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0x7f0e0406

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const v11, 0x7f0e0407

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    if-nez v10, :cond_5

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    :cond_3
    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVideoCallChecked:Z

    :cond_4
    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x2

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isMessageChecked:Z

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;)V

    invoke-virtual {v3, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e01b9

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v7}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;Landroid/content/Context;[I)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_3
    const v10, 0x7f0e0310

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e0318

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_6
    const/4 v10, 0x2

    new-array v7, v10, [I

    fill-array-data v7, :array_1

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0e0404

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0x7f0e0407

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    if-nez v10, :cond_9

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    :cond_8
    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isMessageChecked:Z

    goto :goto_4

    :cond_9
    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;)V

    invoke-virtual {v3, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e01b9

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v7}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$4;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;Landroid/content/Context;[I)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x2

    new-array v7, v10, [I

    fill-array-data v7, :array_2

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0e0405

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const v11, 0x7f0e0406

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    if-nez v10, :cond_d

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_c

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    :cond_c
    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_b

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVideoCallChecked:Z

    goto :goto_5

    :cond_d
    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$5;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;)V

    invoke-virtual {v3, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e01b9

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v7}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$6;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;Landroid/content/Context;[I)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_e
    const/4 v10, 0x1

    new-array v7, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f0e0405

    aput v11, v7, v10

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0e0404

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    if-nez v10, :cond_10

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v10, :cond_10

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    iget-object v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v12}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v10

    if-nez v10, :cond_f

    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    aput-boolean v14, v10, v11

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    goto :goto_6

    :cond_10
    sget-object v10, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$7;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;)V

    invoke-virtual {v3, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e01b9

    new-instance v11, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v7}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;-><init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;Landroid/content/Context;[I)V

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :array_0
    .array-data 0x4
        0x5t 0x4t 0xet 0x7ft
        0x6t 0x4t 0xet 0x7ft
        0x7t 0x4t 0xet 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x4t 0xet 0x7ft
        0x7t 0x4t 0xet 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x4t 0xet 0x7ft
        0x6t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method checkBlock(Landroid/content/Context;Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong index inserted !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/samsung/dialer/util/CallLogUtil;->updateCallunblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, p4

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/samsung/dialer/util/CallLogUtil;->blockCallContact(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v0, v1, p4

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v0, v0}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/samsung/dialer/util/CallLogUtil;->updateCallunblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, p4

    goto :goto_0

    :cond_2
    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/samsung/dialer/util/CallLogUtil;->blockCallContact(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v0, v1, p4

    goto :goto_1

    :pswitch_2
    iget-boolean v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isMessageChecked:Z

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, p4

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v0, v1, p4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0e0405
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doCheckBlocks(Landroid/content/Context;[I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_4

    sget-object v4, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v4, v4, v0

    sget-object v5, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v5, v5, v0

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;

    sget-object v4, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    aget v4, p2, v0

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->checkBlock(Landroid/content/Context;Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;II)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    aget v4, p2, v0

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->uncheckBlock(Landroid/content/Context;Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;II)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoneNumbers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const-string v1, "open"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->BlockNumberSettingsDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mSaved:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0e040c

    const v5, 0x7f0e01b9

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    const-string v1, "BlockSettingsDialogFragment"

    const-string v2, "All block operation succeed, so do nothing"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    const v1, 0x7f0e040b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_4

    const v1, 0x7f0e0409

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_2

    const v1, 0x7f0e040a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0408

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "BlockSettingsDialogFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "open"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phoneNumbers"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-static {}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getInstance()Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getInstance()Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->getInstance()Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    move-result-object v2

    const-string v3, "BlockSettingsDialogFragment"

    invoke-virtual {v2, p1, v3}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method uncheckBlock(Landroid/content/Context;Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;II)V
    .locals 2

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong index inserted !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVoiceCallChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->unblockCallContact(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-boolean v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isVideoCallChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->unblockCallContact(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->isMessageChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/dialer/util/CallLogUtil;->unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0405
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
