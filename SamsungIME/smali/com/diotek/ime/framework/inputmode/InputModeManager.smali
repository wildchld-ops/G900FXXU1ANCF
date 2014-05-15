.class public abstract Lcom/diotek/ime/framework/inputmode/InputModeManager;
.super Ljava/lang/Object;
.source "InputModeManager.java"

# interfaces
.implements Lcom/diotek/ime/framework/inputmode/InputMode;


# static fields
.field private static buildcarrier:Ljava/lang/String;

.field private static mPrevInputMethod:I


# instance fields
.field private mEnableSecondarySymbol:Z

.field private mFloatingToQwerty:Z

.field protected mHWRFloatingEnable:Z

.field protected mHwrPreviousInputRange:I

.field private mInputLanguage:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethodKor:I

.field protected mInputRange:I

.field private mIsChangedInputRange:Z

.field private mIsChangedSoftFuncKbdIndex:Z

.field public mIsCheckedOcrInstalled:Z

.field private mIsChineseStrokeModeOn:Z

.field private mIsEnterForWebNavigation:Z

.field private mIsHWRNotSupportInputType:Z

.field protected mIsKorMode:Z

.field protected mIsNoteMode:Z

.field private mIsQuickCangieMode:Z

.field protected mIsTabletMode:Z

.field protected mIsVoiceInstalled:Z

.field private mIsenableOCR:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLanguageListForSecondarySymbol:Ljava/lang/String;

.field private mNeedUpdateKeyboardView:Z

.field private mPrevSoftFuncKbdKeyCode:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSoftFuncKbdIndex:I

.field private mStartedInputRange:I

.field private mUseSymbolLayoutByATT:Z

.field private mUseVietnameseTelex:Z

.field protected mUseVoiceInput:Z

.field protected mValidInputMethod:I

.field mVisibleSoftFuncKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->buildcarrier:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsNoteMode:Z

    const/high16 v0, 0x656e

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHWRFloatingEnable:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVoiceInput:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsCheckedOcrInstalled:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    iput v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    iput-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "TABLET_MODE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_VOICE_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVoiceInput:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "NOTE_KEYPAD_TYPE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsNoteMode:Z

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingVietnameseTelex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_ReplaceSymbolLayout4"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_EnableSymbolInSecondary"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSecondarySymbolStatus(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private getSoftFuncKbdIndexByKeycode(I)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getValideDigitEditMMKeyCode([III)I
    .locals 6

    array-length v4, p1

    if-lez v4, :cond_2

    const-string v4, "VOICE"

    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    const/16 v4, -0x78

    if-ne v3, v4, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eq p2, p3, :cond_2

    move v3, p2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isChangedMMKeyInputMode(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-ne v2, v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-ne v2, p1, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method private isHandwritingInputEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "USE_HWR_MODE"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_HWR_ON"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private isSettingEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private setInputRangeForSoftFuncKbd(I)V
    .locals 2

    rsub-int v0, p1, -0xa1

    const/16 v1, -0xa1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, -0xa2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V
    .locals 13

    const/high16 v12, 0x6267

    const/4 v11, 0x2

    const/4 v8, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v3

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v5

    if-eq v2, v8, :cond_0

    const/16 v7, 0x8

    if-ne v2, v7, :cond_e

    :cond_0
    sparse-switch v5, :sswitch_data_0

    const/high16 v7, 0x6465

    if-eq v5, v7, :cond_1

    const/high16 v7, 0x7669

    if-ne v5, v7, :cond_8

    :cond_1
    if-le v1, v9, :cond_7

    const/4 v1, 0x1

    :goto_0
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return-void

    :sswitch_0
    packed-switch v1, :pswitch_data_0

    if-ne v2, v8, :cond_3

    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x6b6f

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    if-ne v7, v8, :cond_2

    :cond_3
    if-eq v3, v1, :cond_2

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_1

    :pswitch_0
    if-ne v3, v9, :cond_2

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_1

    :sswitch_1
    packed-switch v1, :pswitch_data_1

    if-eq v3, v1, :cond_2

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    if-eq v3, v1, :cond_4

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_2
    if-eq v2, v8, :cond_5

    if-eq v3, v1, :cond_5

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    if-ne v5, v12, :cond_a

    if-le v1, v9, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    const/high16 v7, 0x7472

    if-ne v5, v7, :cond_c

    if-le v1, v11, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    if-eq v1, v9, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    sparse-switch v5, :sswitch_data_1

    const/high16 v7, 0x6465

    if-eq v5, v7, :cond_f

    const/high16 v7, 0x7669

    if-ne v5, v7, :cond_1f

    :cond_f
    if-gt v1, v9, :cond_10

    const-string v7, "SWIFTKEY"

    const-string v8, "XT9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    if-ne v1, v9, :cond_1e

    :cond_10
    const/4 v1, 0x1

    :goto_3
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_11

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_11
    invoke-static {v1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    :cond_12
    :goto_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :sswitch_2
    packed-switch v1, :pswitch_data_2

    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v7, :cond_13

    const/high16 v7, 0x6b6f

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    if-eq v7, v8, :cond_12

    :cond_13
    if-eqz v2, :cond_14

    if-nez v3, :cond_12

    :cond_14
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_15

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_15
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_4

    :pswitch_3
    if-eq v2, v9, :cond_16

    if-ne v3, v9, :cond_12

    :cond_16
    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_17

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_17
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    goto :goto_4

    :sswitch_3
    packed-switch v1, :pswitch_data_3

    if-eq v2, v1, :cond_12

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_18

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_18
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_4

    :pswitch_4
    if-eq v2, v1, :cond_1a

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_19

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_19
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    :cond_1a
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :pswitch_5
    if-eq v2, v1, :cond_1c

    const-string v7, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1b

    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_1b
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    :cond_1c
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1d
    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_1f
    if-ne v5, v12, :cond_21

    if-le v1, v9, :cond_20

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_21
    const/high16 v7, 0x7472

    if-ne v5, v7, :cond_23

    if-le v1, v11, :cond_22

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_23
    if-eq v1, v9, :cond_24

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_24
    const/4 v1, 0x1

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x6a610000 -> :sswitch_1
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6a610000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_2
        0x7a68434e -> :sswitch_2
        0x7a68484b -> :sswitch_2
        0x7a685457 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract computeValidInputMethod()I
.end method

.method public enableSecondarySymbol()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    return v0
.end method

.method public getCurrentEnableInputMode()[I
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    iget-object v8, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v8, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v8, 0xf

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    array-length v6, v3

    const/4 v8, 0x3

    if-ne v0, v8, :cond_2

    aput v9, v3, v9

    add-int/lit8 v6, v6, -0x1

    :cond_0
    :goto_0
    new-array v7, v6, [I

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_6

    aget v8, v3, v1

    if-eqz v8, :cond_1

    aget v8, v3, v1

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v10, :cond_3

    aput v9, v3, v9

    aput v9, v3, v10

    add-int/lit8 v6, v6, -0x2

    goto :goto_0

    :cond_3
    if-ne v0, v11, :cond_4

    aput v9, v3, v9

    aput v9, v3, v10

    add-int/lit8 v6, v6, -0x2

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const/4 v8, 0x7

    if-eq v5, v8, :cond_5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    :cond_5
    const/4 v8, 0x1

    aput v9, v3, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_6
    return-object v7

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCurrentKeypadType()I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_QWERTY_KEYPAD_TYPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 v0, 0x8

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMultiModalKeyCode()I
    .locals 27

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v14

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v20

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v11

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v12

    const/16 v24, -0x78

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-nez v11, :cond_0

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    :cond_0
    const/16 v20, -0x79

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-gtz v24, :cond_4

    :cond_2
    const/4 v15, -0x1

    :cond_3
    :goto_0
    return v15

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string v24, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x78

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v24, "SETTING"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x79

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const-string v24, "CLIPBOARD"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x7d

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const-string v24, "OCR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x80

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const-string v24, "KEYBOARD"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkeyOnHwr()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x76

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const-string v24, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x78

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    const-string v24, "HANDWRITING"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v13, :cond_b

    aget v15, v4, v8

    const/16 v24, -0x77

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v24

    if-nez v24, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v24

    if-eqz v24, :cond_10

    :cond_c
    const/4 v9, 0x1

    :goto_8
    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/util/Utils;->getValidCMSymbol(II)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    const-string v24, "\\/:*?\"<>|"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v21, 0x2c

    :cond_d
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v24, "last_used_mm_key_code"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_e
    if-eqz v9, :cond_12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_11

    const-string v24, "VOICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultMultimodalkey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v4, v22

    array-length v13, v4

    const/4 v8, 0x0

    if-ge v8, v13, :cond_f

    aget v15, v4, v8

    const/16 v24, -0x78

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    :cond_f
    const/16 v24, 0x0

    aget v15, v22, v24

    goto/16 :goto_0

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_11
    const/4 v15, -0x1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->isFileNameInputOption()Z

    move-result v24

    if-eqz v24, :cond_13

    const/16 v24, 0x3f

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    const/16 v15, 0x2c

    goto/16 :goto_0

    :cond_13
    move/from16 v15, v21

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getMultiModalKeyInputMethod()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedMMKeyInputMode(I)Z

    move-result v24

    if-eqz v24, :cond_2b

    const/16 v24, -0x79

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_2b

    const/16 v24, -0x80

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_2b

    if-eqz v17, :cond_15

    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    :cond_15
    if-eqz v9, :cond_1f

    if-eqz v14, :cond_16

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_1f

    :cond_16
    const/16 v24, -0x88

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v20

    :cond_17
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v18

    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v14, v0, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v24

    if-nez v24, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v24

    if-nez v24, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v24

    if-nez v24, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlEmailMode()Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isNoEmoticonInput()Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v24

    const/16 v25, 0x1b

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableEmoticonInput()Z

    move-result v24

    if-nez v24, :cond_18

    const/16 v20, -0x87

    :cond_18
    const/16 v23, -0x1

    const/4 v7, 0x0

    :goto_a
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_19

    aget v24, v22, v7

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    move/from16 v23, v20

    :cond_19
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-gtz v24, :cond_1a

    move/from16 v23, v20

    :cond_1a
    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    const/16 v24, 0x0

    aget v23, v22, v24

    const/16 v24, -0x85

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    :cond_1b
    const/16 v24, -0x83

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    :cond_1c
    const/16 v24, -0x84

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/16 v23, -0x1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1e

    const/16 v24, 0x1

    aget v23, v22, v24

    :cond_1e
    move/from16 v15, v23

    goto/16 :goto_0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_20

    const/16 v20, -0x76

    goto/16 :goto_9

    :cond_20
    const/16 v20, -0x88

    goto/16 :goto_9

    :cond_21
    const/16 v24, 0x2

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v14, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v24

    if-eqz v24, :cond_22

    const/16 v20, -0x88

    goto/16 :goto_9

    :cond_22
    const/16 v20, -0x77

    goto/16 :goto_9

    :cond_23
    const/16 v20, -0x77

    goto/16 :goto_9

    :cond_24
    const/16 v24, 0x7

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    move/from16 v5, v20

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_25

    const/16 v20, -0x76

    :goto_b
    if-eqz v9, :cond_17

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v14, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v20

    goto/16 :goto_9

    :cond_25
    const/16 v20, -0x88

    goto :goto_b

    :cond_26
    const/16 v24, 0x8

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    move/from16 v5, v20

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_28

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v14, v0, :cond_27

    const/16 v20, -0x88

    :goto_c
    if-eqz v9, :cond_17

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v14, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v20

    goto/16 :goto_9

    :cond_27
    const/16 v20, -0x76

    goto :goto_c

    :cond_28
    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v14, v0, :cond_29

    const/16 v20, -0x88

    goto :goto_c

    :cond_29
    const/16 v20, -0x77

    goto :goto_c

    :cond_2a
    const/16 v24, 0x6

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    const/16 v20, -0x80

    goto/16 :goto_9

    :cond_2b
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v14, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v24

    if-eqz v24, :cond_17

    const/16 v24, -0x76

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_2c

    const/16 v24, -0x77

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    :cond_2c
    move/from16 v5, v20

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_2d

    const/16 v20, -0x76

    :goto_d
    if-eqz v9, :cond_17

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v14, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValideDigitEditMMKeyCode([III)I

    move-result v20

    goto/16 :goto_9

    :cond_2d
    const/16 v20, -0x77

    goto :goto_d

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a
.end method

.method public getCurrentPreferenceInputMethod()I
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v3

    if-ne v3, v6, :cond_6

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    if-nez v1, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x9

    if-ne v2, v4, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v5, 0x6c6f

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v5, 0x6b6d

    if-ne v4, v5, :cond_9

    :cond_8
    if-ne v1, v6, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-nez v4, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndex()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    goto :goto_0
.end method

.method public getCurrentSoftFuncKeyCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v0

    return v0
.end method

.method public getFloatingToQwertyTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    return v0
.end method

.method public getHwrPreviousInputRange()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    return v0
.end method

.method public getInputMethodOnKor()I
    .locals 3

    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    goto :goto_0
.end method

.method public getInputRange()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    return v0
.end method

.method public getNextInputRange(Z)I
    .locals 7

    const/4 v6, 0x0

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    iget v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-virtual {p0, v4, v5, v2, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v3, v1

    if-ne v2, v4, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    array-length v4, v3

    if-gtz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    aget v2, v3, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget v2, v3, v0

    goto :goto_1

    :cond_4
    aget v2, v3, v6

    goto :goto_1
.end method

.method public getPrevInputMethod()I
    .locals 1

    sget v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    return v0
.end method

.method public getPrevSoftFuncKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    return v0
.end method

.method public getPreviousInputRange(Z)I
    .locals 6

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-virtual {p0, v5, v2, v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget v5, v4, v1

    if-ne v3, v5, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    array-length v5, v4

    if-gtz v5, :cond_2

    :goto_1
    return v3

    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    :cond_4
    aget v3, v4, v0

    goto :goto_1
.end method

.method public getSoftFuncKbdIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    return v0
.end method

.method public getValidInputMethod()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    return v0
.end method

.method public getValidMMCodes(II)[I
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsCheckedOcrInstalled:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsCheckedOcrInstalled:Z

    :cond_0
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.android.app.ocr"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    :goto_0
    if-eqz v26, :cond_21

    sget-object v29, Lcom/diotek/ime/framework/inputmode/InputModeManager;->buildcarrier:Ljava/lang/String;

    const-string v30, "ks02"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_21

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_21

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v11

    const/16 v29, 0xa

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    const/16 v23, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x2

    const/4 v15, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x5

    const/16 v16, 0x6

    const/16 v20, 0x7

    const/16 v24, 0x8

    const/16 v18, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableHWRInput()Z

    move-result v9

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    const/4 v5, 0x0

    if-eqz v7, :cond_1

    iget v0, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v5, v0, 0xff0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x16

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v29, -0x1

    aput v29, v25, v21

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, 0x80

    move/from16 v0, v29

    if-eq v5, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseSymbolLayoutByATT:Z

    move/from16 v29, v0

    if-nez v29, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v29

    if-eqz v29, :cond_22

    :cond_5
    :goto_2
    const/16 v29, -0x1

    aput v29, v25, v15

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v29

    if-eqz v29, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    if-eqz v10, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    :cond_9
    const/16 v29, -0x1

    aput v29, v25, v20

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v29

    if-nez v29, :cond_b

    const/16 v29, -0x1

    aput v29, v25, v19

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputScriptype()I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageSelected()Z

    move-result v29

    if-eqz v29, :cond_d

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v14, v0, :cond_c

    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v14, v0, :cond_c

    const/16 v29, 0xb

    move/from16 v0, v29

    if-ne v14, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    move/from16 v29, v0

    if-eqz v29, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v29

    if-eqz v29, :cond_e

    :cond_d
    const/16 v29, -0x1

    aput v29, v25, v24

    :cond_e
    const/16 v29, 0x7

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v29

    if-nez v29, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v29

    if-nez v29, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v29

    if-nez v29, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlEmailMode()Z

    move-result v29

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isNoEmoticonInput()Z

    move-result v29

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x1b

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableEmoticonInput()Z

    move-result v29

    if-eqz v29, :cond_10

    :cond_f
    const/16 v29, -0x1

    aput v29, v25, v16

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v29

    if-nez v29, :cond_11

    const/16 v29, -0x1

    aput v29, v25, v18

    :cond_11
    const/4 v5, 0x0

    if-eqz v7, :cond_12

    iget v0, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v29, v0

    and-int/lit8 v5, v29, 0xf

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v29

    if-eqz v29, :cond_23

    const/16 v29, -0x1

    aput v29, v25, v17

    if-nez v12, :cond_13

    const/16 v29, -0x1

    aput v29, v25, v20

    :cond_13
    :goto_3
    if-eqz v11, :cond_14

    const/16 v29, -0x1

    aput v29, v25, v17

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v29

    if-nez v29, :cond_15

    const/16 v29, -0x1

    aput v29, v25, v17

    :cond_15
    const-string v29, "NONE"

    const-string v30, "VOHWRPANEL"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/16 v29, -0x1

    aput v29, v25, v17

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v29

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v29

    if-eqz v29, :cond_18

    :cond_17
    const/16 v29, -0x1

    aput v29, v25, v23

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isSettingEnabled()Z

    move-result v29

    if-nez v29, :cond_19

    const/16 v29, -0x1

    aput v29, v25, v22

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    const/16 v29, -0x1

    aput v29, v25, v23

    const/16 v29, -0x1

    aput v29, v25, v17

    const/16 v29, -0x1

    aput v29, v25, v15

    const/16 v29, -0x1

    aput v29, v25, v21

    :cond_1a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnificationGesture(Landroid/content/Context;)Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    const/16 v29, -0x1

    aput v29, v25, v20

    :cond_1b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v29

    if-eqz v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v29

    if-eqz v29, :cond_1c

    const/16 v29, -0x1

    aput v29, v25, v15

    const/16 v29, -0x1

    aput v29, v25, v23

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->useOnlyNormalKeyboard()Z

    move-result v29

    if-eqz v29, :cond_1d

    const/16 v29, -0x1

    aput v29, v25, v20

    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v29, -0x1

    aput v29, v25, v23

    const/16 v29, -0x1

    aput v29, v25, v21

    :cond_1e
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v29, -0x1

    aput v29, v25, v23

    const/16 v29, -0x1

    aput v29, v25, v17

    const/16 v29, -0x1

    aput v29, v25, v19

    const/16 v29, -0x1

    aput v29, v25, v15

    const/16 v29, -0x1

    aput v29, v25, v21

    const/16 v29, -0x79

    aput v29, v25, v22

    const/16 v29, -0x88

    aput v29, v25, v20

    const/16 v29, -0x1

    aput v29, v25, v24

    :cond_1f
    const/16 v27, 0x0

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_2b

    aget v29, v25, v6

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_20

    add-int/lit8 v27, v27, 0x1

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.android.app.ocrlite"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.android.app.ocr3"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v26

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    goto/16 :goto_0

    :cond_21
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsenableOCR:Z

    goto/16 :goto_1

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isClipboardEnabled()Z

    move-result v29

    if-nez v29, :cond_6

    goto/16 :goto_2

    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputEnabled()Z

    move-result v29

    if-eqz v29, :cond_24

    if-nez v9, :cond_24

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v29

    if-nez v29, :cond_24

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v29

    if-nez v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    :cond_24
    const/16 v29, -0x1

    aput v29, v25, v17

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_26

    const/16 v29, 0x8

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    const/16 v29, 0x7

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    const/16 v29, -0x1

    aput v29, v25, v19

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const/16 v29, -0x1

    aput v29, v25, v19

    goto/16 :goto_3

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_2a

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v5, v0, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    const/16 v29, -0x1

    aput v29, v25, v17

    if-eqz v10, :cond_28

    const/16 v29, 0x8

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_29

    :cond_28
    const/16 v29, -0x1

    aput v29, v25, v19

    :cond_29
    const/16 v29, -0x1

    aput v29, v25, v16

    goto/16 :goto_4

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v29

    if-eqz v29, :cond_1a

    const/16 v29, -0x1

    aput v29, v25, v17

    goto/16 :goto_4

    :cond_2b
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_2d

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_2d

    aget v29, v25, v6

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2c

    aget v29, v25, v6

    aput v29, v28, v13

    add-int/lit8 v13, v13, 0x1

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_2d
    return-object v28

    nop

    :array_0
    .array-data 0x4
        0x88t 0xfft 0xfft 0xfft
        0x89t 0xfft 0xfft 0xfft
        0x8at 0xfft 0xfft 0xfft
        0x83t 0xfft 0xfft 0xfft
        0x80t 0xfft 0xfft 0xfft
        0x87t 0xfft 0xfft 0xfft
        0x79t 0xfft 0xfft 0xfft
        0x78t 0xfft 0xfft 0xfft
        0x7at 0xfft 0xfft 0xfft
        0x77t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getValidRanges(IIIZ)[I
    .locals 11

    const/4 v9, 0x3

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    array-length v7, v3

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v6

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget v9, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v9, 0xf

    :cond_1
    const/4 v9, 0x3

    if-ne v0, v9, :cond_6

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    :cond_2
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    :cond_3
    :goto_1
    new-array v8, v7, [I

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v9, v3

    if-ge v1, v9, :cond_23

    aget v9, v3, v1

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    aget v9, v3, v1

    aput v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    :cond_7
    const/4 v9, 0x4

    if-ne v0, v9, :cond_8

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    :cond_8
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    if-ne p2, v9, :cond_9

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    :goto_3
    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    :cond_9
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_3

    :cond_b
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_c

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x2

    goto :goto_1

    :cond_c
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz p4, :cond_d

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x8

    if-ne p2, v9, :cond_15

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v9, :cond_f

    if-nez v4, :cond_15

    :cond_f
    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_3

    if-eqz p4, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    if-eqz v4, :cond_14

    if-eqz p4, :cond_14

    const/4 v9, 0x2

    if-ne v6, v9, :cond_11

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_10
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    :cond_11
    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    :cond_13
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    :cond_14
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_4

    :cond_15
    if-eqz p2, :cond_16

    const/4 v9, 0x7

    if-eq p2, v9, :cond_16

    const/16 v9, 0x8

    if-ne p2, v9, :cond_1e

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPhoneFloting()Z

    move-result v9

    if-nez v9, :cond_1e

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1e

    :cond_16
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_17
    if-eqz v4, :cond_1d

    if-eqz p4, :cond_1d

    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_18

    const/16 v9, 0x8

    if-eq p2, v9, :cond_19

    :cond_18
    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-nez v9, :cond_1d

    :cond_19
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1a

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1b

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    :cond_1b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    :cond_1c
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    :cond_1d
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_5

    :cond_1e
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_1f

    const/16 v9, 0x8

    if-eq p2, v9, :cond_1f

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_1f
    iget-boolean v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v9, :cond_22

    if-eqz p4, :cond_22

    const/4 v9, 0x1

    if-ne p2, v9, :cond_22

    iget-object v9, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_22

    if-eqz v4, :cond_21

    const/4 v9, 0x1

    if-ne v6, v9, :cond_20

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_20
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_6

    :cond_21
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v3, v9

    goto :goto_6

    :cond_22
    const/4 v9, 0x1

    if-ne p2, v9, :cond_3

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v3, v9

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_23
    return-object v8

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getValidSoftFuncKeys()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v3, v2, 0x1

    const/16 v12, -0xa1

    const-string v13, "123"

    invoke-direct {v11, v2, v12, v13, v14}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v2, v3, 0x1

    const/16 v12, -0xa2

    const-string v13, "SYM"

    invoke-direct {v11, v3, v12, v13, v14}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x4

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v0

    array-length v9, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v11

    const v12, 0x656e5553

    if-eq v11, v12, :cond_0

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v11

    const/high16 v12, 0x6b6f

    if-ne v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v6

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/common/Language;

    new-instance v11, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v6, v7, 0x1

    aget v12, v10, v7

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCodeForPHONEPAD()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v3, v12, v13, v5}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;-><init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    move v3, v2

    goto :goto_2

    :cond_3
    return-object v4

    nop

    :array_0
    .array-data 0x4
        0x5dt 0xfft 0xfft 0xfft
        0x5ct 0xfft 0xfft 0xfft
        0x5bt 0xfft 0xfft 0xfft
        0x5at 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getVisibleSoftFuncKeys()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v9, :cond_0

    iput-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    :goto_0
    return-object v7

    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getIndex()I

    move-result v7

    if-lt v3, v7, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getIndex()I

    move-result v7

    if-gt v3, v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-lt v3, v9, :cond_2

    add-int/lit8 v7, v3, -0x4

    add-int/lit8 v4, v7, 0x1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    add-int v7, v4, v1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mVisibleSoftFuncKeys:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public initSoftFuncKbd()V
    .locals 8

    const/4 v1, 0x0

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v7

    if-eq v7, v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isCMSymbolLastUsed()Z
    .locals 2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isChangedInputRange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    return v0
.end method

.method public isChangedSoftFuncKbdIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    return v0
.end method

.method public isChineseStrokeModeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    return v0
.end method

.method public isClipboardEnabled()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_2

    const/16 v3, 0xa0

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd0

    if-ne v0, v3, :cond_3

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SBROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    return v2
.end method

.method public isEnableQuickSymPopupOnChineseKeypadForTablet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnterForWebNavigation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    return v0
.end method

.method public isFloatingHWRKeyboard()Z
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandritingNotSupportedInputType()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v0, v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isFloatingNumberInputKeyboardForMultiWindow()Z
    .locals 2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isNumberInputKeyboard()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloatingPhonepadKeyboard()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloatingPhonepadKeyboardForMultiWindow()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isHandritingNotSupportedInputType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    return v0
.end method

.method public isHandwritingInputMode()Z
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v0

    return v0
.end method

.method public isHandwritingInputMode(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isHandwritingInputModeForVO()Z
    .locals 2

    sget v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHanjaEnable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x6b6f

    if-ne v0, v2, :cond_0

    :cond_0
    return v1
.end method

.method public isKorNote3x4Keypad()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_2

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isKorPasswordMode()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    invoke-interface {v6, v7, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    iget-boolean v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v7, 0x6b6f

    if-ne v6, v7, :cond_0

    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public isKorPhoneCji()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isKorPhoneFloting()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isKorSeperatlyInputMethod()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v3, 0x6b6f

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKorTabletCji()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public isKorTabletPhoneFlotingCJ()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v2, 0x6a61

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKoreaSoftFuncKey()Z
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    const/high16 v2, 0x6b6f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLatinSoftFuncKey()Z
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    const/high16 v2, 0x6b6f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedUpdateKeyboardView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    return v0
.end method

.method protected isNumberInputKeyboard()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhonePadMode()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPointingKeyboard()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isPopupInputMethod(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCangieMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    return v0
.end method

.method public isVOHWRmodeEnable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandritingNotSupportedInputType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVietnameseTelexEnable()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mUseVietnameseTelex:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    const/high16 v6, 0x7669

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-ne v5, v4, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    if-eq v2, v4, :cond_0

    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v5, 0xff0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    move v3, v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
        0xd0 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isVoiceInputEnabled()Z
    .locals 15

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_4

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, -0x66

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v6, 0x1

    :goto_0
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableVoice()Z

    move-result v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    const/4 v5, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v11

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    :goto_1
    iget-object v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v13, 0x400000ff

    and-int v0, v12, v13

    iget-object v12, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v12, "com.android.vending"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.apps.maps"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.youtube"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "flipboard.app"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "com.google.android.googlequicksearchbox"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_0
    const/4 v12, 0x3

    if-ne v0, v12, :cond_6

    const/4 v5, 0x1

    :cond_1
    :goto_2
    const-string v12, "com.sec.android.app.translator"

    iget-object v13, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v9, :cond_7

    if-nez v2, :cond_7

    iget-boolean v12, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    if-eqz v12, :cond_7

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    if-nez v10, :cond_7

    if-nez v8, :cond_7

    if-nez v4, :cond_7

    const/4 v12, 0x1

    :goto_3
    return v12

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public setChineseStrokeModeOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChineseStrokeModeOn:Z

    return-void
.end method

.method public setEnterForWebNavigation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsEnterForWebNavigation:Z

    return-void
.end method

.method public setFloatingToQwertyTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mFloatingToQwerty:Z

    return-void
.end method

.method public setHandritingNotSupportedInputType()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    iput-boolean v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsHWRNotSupportInputType:Z

    goto :goto_0
.end method

.method public setHwrPreviousInputRange(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mHwrPreviousInputRange:I

    return-void
.end method

.method public setInputLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    return-void
.end method

.method public setInputMethod(I)V
    .locals 17

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputLanguage:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v10, v1, v12, v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v14

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v13

    if-nez v8, :cond_1

    const/4 v15, 0x3

    if-eq v12, v15, :cond_1

    if-eqz v12, :cond_1

    const/4 v15, 0x2

    if-eq v12, v15, :cond_1

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    const/4 v4, 0x0

    if-eqz v6, :cond_1

    iget v15, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v15, 0xf

    const/4 v15, 0x3

    if-eq v4, v15, :cond_1

    const/4 v12, 0x1

    :cond_1
    const/4 v5, 0x0

    :goto_0
    array-length v15, v14

    if-ge v5, v15, :cond_2

    aget v15, v14, v5

    if-ne v12, v15, :cond_9

    const/4 v9, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_3

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v15, 0x1

    if-ne v12, v15, :cond_3

    const/4 v12, 0x2

    const/4 v5, 0x0

    :goto_1
    array-length v15, v14

    if-ge v5, v15, :cond_3

    aget v15, v14, v5

    if-ne v12, v15, :cond_a

    const/4 v9, 0x1

    :cond_3
    if-nez v9, :cond_b

    const/4 v15, 0x3

    if-eq v12, v15, :cond_b

    const/4 v15, 0x0

    aget v15, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    :cond_4
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_KeepDefInputMethodAs"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_last_input_method_type"

    move/from16 v0, p1

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x2

    if-ne v12, v15, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "QWERTY"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz p1, :cond_6

    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    :cond_6
    const-string v15, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    :goto_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    return-void

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_2

    :cond_c
    const-string v15, "QWERTY"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz p1, :cond_d

    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    const/4 v15, 0x7

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    :cond_d
    const-string v15, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method public setInputMethodKor(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputMethodKor:I

    return-void
.end method

.method public setInputMethodOfEachLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 4

    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    const-string v1, "telex"

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v1, "vni"

    :cond_0
    invoke-static {v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->setInputMode(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    invoke-interface {v2, v3, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62670000 -> :sswitch_3
        0x64650000 -> :sswitch_2
        0x74720000 -> :sswitch_0
        0x76690000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setInputRange(I)V
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputRange(I)V

    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedInputRange:Z

    goto :goto_0
.end method

.method public abstract setIsVoiceInstalled(Z)V
.end method

.method public setNeedUpdateKeyboardView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mNeedUpdateKeyboardView:Z

    return-void
.end method

.method public setPrevInputMethod(I)V
    .locals 0

    sput p1, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevInputMethod:I

    return-void
.end method

.method public setPrevSoftFuncKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrevSoftFuncKbdKeyCode:I

    return-void
.end method

.method public setQickCangjieMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsQuickCangieMode:Z

    return-void
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    const-string v6, ";"

    invoke-direct {v0, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mLanguageListForSecondarySymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-ne p1, v8, :cond_3

    :cond_0
    iput-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_6

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v3, :cond_5

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mEnableSecondarySymbol:Z

    goto :goto_0

    :cond_6
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setSoftFuncKbdIndex(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRangeForSoftFuncKbd(I)V

    iput p1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mSoftFuncKbdIndex:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsChangedSoftFuncKbdIndex:Z

    goto :goto_0
.end method

.method public setSoftFuncKbdIndexByKeycode(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndexByKeycode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndex(I)V

    return-void
.end method

.method public setStartedInputRangeOnCurrent()V
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputRange:I

    iput v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mStartedInputRange:I

    return-void
.end method

.method public updateValidInputMethod()V
    .locals 3

    iget v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->computeValidInputMethod()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    iget v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget v2, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mValidInputMethod:I

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendInputMethodType(I)V

    :cond_0
    return-void
.end method
