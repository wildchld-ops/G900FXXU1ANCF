.class public Lcom/android/incallui/vt/InPSVTCallMenu;
.super Lcom/android/incallui/vt/InVTCallMenu;
.source "InPSVTCallMenu.java"


# instance fields
.field public isShowingResizeScreen:Z

.field private mDisableOutGoingMenu:Z

.field private mMenuSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mMenuSelected:I

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mDisableOutGoingMenu:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->isShowingResizeScreen:Z

    const-string v0, "InPSVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 11

    const v10, 0x7f080278

    const v9, 0x7f080277

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    const v5, 0x7f080274

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->isDialerOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0204cc

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f07014b

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const v5, 0x7f0204ce

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f070164

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    return v7

    :pswitch_data_0
    .packed-switch 0x7f080274
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showMessageMenu()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "menu_message"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in_call_menu_message_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method mdmGetAllowCamera()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v0

    :cond_0
    return v0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isCameraEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/16 v7, 0xca

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- optionsItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  title: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null CallButtonPresenter.getInstance()!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v6

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (MenuItem = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    :cond_1
    :goto_1
    move v6, v5

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f070137

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallButtonPresenter;->captureSurfaceImage(Z)V

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallButtonPresenter;->dialpadClicked(Z)V

    if-eqz v1, :cond_1

    const-string v3, "QCIF"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto :goto_1

    :sswitch_5
    const-string v3, "ims_resize_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v3, "isShowingResizeScreen changed true"

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v7, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "ims_resize_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v3, "isShowingResizeScreen changed false"

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v7, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "ims_video_call_mediashare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->startMediaShare()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f08026b -> :sswitch_0
        0x7f08026c -> :sswitch_1
        0x7f080274 -> :sswitch_3
        0x7f080283 -> :sswitch_2
        0x7f080284 -> :sswitch_5
        0x7f080285 -> :sswitch_6
        0x7f080291 -> :sswitch_4
        0x7f080292 -> :sswitch_7
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 30

    const-string v28, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v21

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v28

    if-eqz v28, :cond_1

    if-eqz v3, :cond_0

    const-string v28, "prepareOptionsMenu()...SUPPORT_EASY_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/vt/InPSVTCallMenu;->prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v28

    :goto_0
    return v28

    :cond_0
    const/16 v28, 0x0

    goto :goto_0

    :cond_1
    const-string v28, "ims_ui_for_kor"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    if-eqz v3, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_2
    :goto_1
    const/4 v10, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_24

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/MenuItem;->getItemId()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_3
    :goto_3
    :sswitch_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1

    :sswitch_1
    const v28, 0x7f08026b

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v28, 0x7f08026c

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->isShowMe()Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v28

    if-nez v28, :cond_3

    :cond_5
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_2
    if-eqz v3, :cond_3

    const v28, 0x7f08026f

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    const-string v28, "ims_ui_for_kor"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    const v28, 0x7f070142

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_7
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->isShowMe()Z

    move-result v28

    if-eqz v28, :cond_8

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_8
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_3
    if-eqz v3, :cond_3

    const v28, 0x7f080283

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v28

    if-eqz v28, :cond_9

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_9
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_4
    if-eqz v3, :cond_3

    const v28, 0x7f080273

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    const-string v28, "use_snote_string"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    const v28, 0x7f0700fc

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_b
    :goto_4
    const-string v28, "in_call_menu_memo_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_c
    const-string v28, "use_action_memo_string"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    const v28, 0x7f070100

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4

    :sswitch_5
    if-eqz v3, :cond_3

    const v28, 0x7f08007b

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->showMessageMenu()Z

    move-result v28

    if-eqz v28, :cond_d

    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_d
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_6
    if-eqz v3, :cond_3

    const v28, 0x7f080274

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v28

    if-eqz v28, :cond_e

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->isDialerOpened()Z

    move-result v28

    if-eqz v28, :cond_f

    const v28, 0x7f0204cc

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v28, 0x7f07014b

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_f
    const v28, 0x7f0204ce

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v28, 0x7f070164

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_7
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/CallButtonPresenter;->isIncomingVTSperkerMode()Z

    move-result v28

    if-nez v28, :cond_10

    const/4 v14, 0x1

    :goto_5
    const v28, 0x7f080275

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const v28, 0x7f080276

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    if-eqz v14, :cond_12

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v28

    sget v29, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    :cond_11
    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v28

    sget v29, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v28 .. v29}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v28

    if-nez v28, :cond_13

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v28

    sget v29, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-virtual/range {v28 .. v29}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v28

    if-eqz v28, :cond_14

    :cond_13
    const/4 v7, 0x1

    :goto_6
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/CallButtonPresenter;->getIncomingVTSpeakerState()Z

    move-result v28

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_7
    if-eqz v7, :cond_3

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_14
    const/4 v7, 0x0

    goto :goto_6

    :cond_15
    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    :sswitch_8
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v28

    sget v29, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v28 .. v29}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v28

    if-eqz v28, :cond_16

    const v28, 0x7f080277

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v28, 0x7f080278

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_16
    const v28, 0x7f080277

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v28, 0x7f080278

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_9
    const v28, 0x7f080291

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v28, "ims_conference_call"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const-string v28, "feature_lgt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    if-eqz v3, :cond_17

    const/16 v28, 0x200

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v28

    if-eqz v28, :cond_17

    const/4 v12, 0x1

    :goto_8
    if-eqz v12, :cond_18

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_17
    const/4 v12, 0x0

    goto :goto_8

    :cond_18
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_19
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_a
    const/4 v13, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const-string v28, "ims_resize_screen"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    if-eqz v3, :cond_1e

    const-string v28, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1b

    const-string v28, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1e

    :cond_1b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v28

    if-nez v28, :cond_1e

    const/4 v13, 0x1

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v28

    if-eqz v28, :cond_1c

    const/4 v8, 0x1

    :cond_1c
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v28

    if-eqz v28, :cond_1d

    const/16 v22, 0x1

    :cond_1d
    const v28, 0x7f080285

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const v28, 0x7f080284

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    if-eqz v13, :cond_1f

    if-eqz v22, :cond_1f

    const/16 v28, 0x1

    :goto_a
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v13, :cond_20

    if-eqz v22, :cond_20

    if-eqz v8, :cond_20

    const/16 v28, 0x1

    :goto_b
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v13, :cond_21

    if-nez v22, :cond_21

    const/16 v28, 0x1

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v13, :cond_22

    if-nez v22, :cond_22

    if-eqz v8, :cond_22

    const/16 v28, 0x1

    :goto_d
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1e
    const/4 v13, 0x0

    goto :goto_9

    :cond_1f
    const/16 v28, 0x0

    goto :goto_a

    :cond_20
    const/16 v28, 0x0

    goto :goto_b

    :cond_21
    const/16 v28, 0x0

    goto :goto_c

    :cond_22
    const/16 v28, 0x0

    goto :goto_d

    :sswitch_b
    const-string v28, "ims_video_call_mediashare"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaSharePossible()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveHDVideoCall()Z

    move-result v28

    if-eqz v28, :cond_3

    const v28, 0x7f080292

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaShareEnabled()Z

    move-result v28

    if-eqz v28, :cond_23

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_23
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_24
    const/16 v28, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f08007b -> :sswitch_5
        0x7f08026b -> :sswitch_0
        0x7f08026c -> :sswitch_1
        0x7f08026f -> :sswitch_2
        0x7f080273 -> :sswitch_4
        0x7f080274 -> :sswitch_6
        0x7f080275 -> :sswitch_0
        0x7f080276 -> :sswitch_7
        0x7f080277 -> :sswitch_0
        0x7f080278 -> :sswitch_8
        0x7f080283 -> :sswitch_3
        0x7f080284 -> :sswitch_a
        0x7f080285 -> :sswitch_0
        0x7f080291 -> :sswitch_9
        0x7f080292 -> :sswitch_b
    .end sparse-switch
.end method
