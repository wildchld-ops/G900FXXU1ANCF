.class public abstract Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;
.super Ljava/lang/Object;
.source "CallDetailOptionsMenuController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsEasyMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private resetOptionMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected configureCommon(Landroid/view/Menu;)V
    .locals 16

    const v14, 0x7f080307

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v14, 0x7f080308

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v14, 0x7f080309

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v14, 0x7f080304

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v14, 0x7f08030a

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v14, 0x7f08030c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v14, 0x7f08030d

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v14, 0x7f08030e

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v14, 0x7f08030f

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v14, 0x7f080310

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v14, 0x7f080311

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v14, 0x7f08030b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mIsEasyMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v14}, Lcom/android/dialer/CallDetailActivity;->canPlaceCallsTo()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v14}, Lcom/android/dialer/CallDetailActivity;->getRejectNumberCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v14}, Lcom/android/dialer/CallDetailActivity;->isSavedContact()Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v14, 0x1

    invoke-interface {v4, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mIsEasyMode:Z

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBlockCallMsg()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    invoke-interface {v6, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMenuDeleteHistory()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const-string v14, "RecordingAllowed"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoiceCallRecording()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    const/4 v14, 0x1

    invoke-interface {v12, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v7, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v1, :cond_6

    const/4 v14, 0x1

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    if-lez v1, :cond_7

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBlockCallMsg()Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v6, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMenuDeleteHistory()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    invoke-interface {v9, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const-string v14, "RecordingAllowed"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoiceCallRecording()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v14, 0x1

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    const-string v14, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/dialer/util/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_1
.end method

.method protected configureFlagship(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected abstract configureVariation(Landroid/view/Menu;)V
.end method

.method public configureVisibility(Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->resetOptionMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureCommon(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureFlagship(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureVariation(Landroid/view/Menu;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    return-object v0
.end method
