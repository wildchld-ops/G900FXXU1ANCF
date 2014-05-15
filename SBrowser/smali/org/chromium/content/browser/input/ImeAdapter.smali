.class public Lorg/chromium/content/browser/input/ImeAdapter;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;,
        Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;,
        Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;,
        Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final COMPOSITION_KEY_CODE:I = 0xe5

.field private static final DASH_MODE_DELAY_KEY_LAG:I = 0xaa

.field private static final DASH_MODE_RELEASE_TIME_DELAY:I = 0x3e8

.field private static final INPUT_DISMISS_DELAY:I = 0x96

.field private static final JAVA_SCRIPT_DELAY_KEY_LAG:I = 0xc8

.field private static final KEYLAG_RESUME_JAVASCRIPT_TIMER:I = 0x4

.field private static final KEYLAG_RUNNING_TIMER:I = 0x3

.field private static final RELEASE_INPUT_SBROWSER_DASH_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImeAdapter"

.field private static mAction:I

.field private static mShiftKeyPressed:Z

.field static sEventTypeChar:I

.field static sEventTypeKeyUp:I

.field static sEventTypeRawKeyDown:I

.field static sModifierAlt:I

.field static sModifierCapsLockOn:I

.field static sModifierCtrl:I

.field static sModifierNumLockOn:I

.field static sModifierShift:I

.field static sTextInputTypeContentEditable:I

.field static sTextInputTypeEmail:I

.field public static sTextInputTypeNone:I

.field static sTextInputTypeNumber:I

.field public static sTextInputTypePassword:I

.field static sTextInputTypeSearch:I

.field static sTextInputTypeTel:I

.field static sTextInputTypeText:I

.field static sTextInputTypeTextArea:I

.field static sTextInputTypeUrl:I

.field static sTextInputTypeWeek:I


# instance fields
.field private cfmsService:Landroid/os/ICustomFrequencyManager;

.field private final mContext:Landroid/content/Context;

.field private mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialSelectionEnd:I

.field private mInitialSelectionStart:I

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mInputDialogContainer:Lorg/chromium/content/browser/input/InputDialogContainer;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private final mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

.field private mIsActiveSoftKeyboard:Z

.field private mIsJavaScriptSuspended:Z

.field private mIsSetDashMode:Z

.field mIsShowWithoutHideOutstanding:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyInputDashBoardHandler:Landroid/os/Handler;

.field private final mKeyInputJavaScriptHandler:Landroid/os/Handler;

.field private mNativeImeAdapterAndroid:I

.field private mNativeTextUpdateWaitCount:I

.field protected mPasteEvent:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

.field final mPrivateHandler:Landroid/os/Handler;

.field private final mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

.field public mSpellCheckingEnabled:Z

.field private mTextInputType:I

.field private final mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/chromium/content/browser/input/ImeAdapter;->mAction:I

    sput-boolean v0, Lorg/chromium/content/browser/input/ImeAdapter;->mShiftKeyPressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/SelectionHandleController;Lorg/chromium/content/browser/input/InsertionHandleController;Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->cfmsService:Landroid/os/ICustomFrequencyManager;

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapter$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ImeAdapter$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapter$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ImeAdapter$2;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputJavaScriptHandler:Landroid/os/Handler;

    iput-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mPasteEvent:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mPrivateHandler:Landroid/os/Handler;

    iput-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSpellCheckingEnabled:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsActiveSoftKeyboard:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    iput v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    iput-object p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    iput-object p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/InputDialogContainer;

    invoke-direct {v1, p1, v3}, Lorg/chromium/content/browser/input/InputDialogContainer;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputDialogContainer:Lorg/chromium/content/browser/input/InputDialogContainer;

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mPasteEvent:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->cfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ImeAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    return v0
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/ImeAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ImeAdapter;)Landroid/os/ICustomFrequencyManager;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->cfmsService:Landroid/os/ICustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/ImeAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/content/browser/input/ImeAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/input/ImeAdapter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeInformJSDeferrState(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/ImeAdapter;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method private static getModifiers(I)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lorg/chromium/content/browser/input/ImeAdapter;->mShiftKeyPressed:Z

    if-nez v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierShift:I

    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierAlt:I

    or-int/2addr v0, v1

    :cond_2
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_3

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierCtrl:I

    or-int/2addr v0, v1

    :cond_3
    const/high16 v1, 0x10

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierCapsLockOn:I

    or-int/2addr v0, v1

    :cond_4
    const/high16 v1, 0x20

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierNumLockOn:I

    or-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public static getTextInputTypeNone()I
    .locals 1

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    return v0
.end method

.method public static getTextInputTypePassword()I
    .locals 1

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    return v0
.end method

.method private hasInputType()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideKeyboard(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "ImeAdapter"

    const-string v2, "APPLOGS:KEYBOARD Native hideKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSmallWindowApplicable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->toggleWindowHeight(Z)V

    :cond_0
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_1
    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->setSoftKeyboard(Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initializeTextInputTypes(IIIIIIIIIIIIIIII)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput p0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    sput p1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeText:I

    sput p2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTextArea:I

    sput p3, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    sput p4, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeSearch:I

    sput p5, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeUrl:I

    sput p6, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeEmail:I

    sput p7, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTel:I

    sput p8, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNumber:I

    sput p14, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeWeek:I

    sput p15, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeContentEditable:I

    return-void
.end method

.method private static initializeWebInputEvents(IIIIIIII)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput p0, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeRawKeyDown:I

    sput p1, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeKeyUp:I

    sput p2, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeChar:I

    sput p3, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierShift:I

    sput p4, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierAlt:I

    sput p5, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierCtrl:I

    sput p6, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierCapsLockOn:I

    sput p7, Lorg/chromium/content/browser/input/ImeAdapter;->sModifierNumLockOn:I

    return-void
.end method

.method private isEditable(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge v3, v1, :cond_2

    sub-int v2, v1, v3

    :goto_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const v6, 0xb000

    if-gt v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    sub-int v2, v3, v1

    goto :goto_1
.end method

.method private isFor(II)Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFor(IIIZ)Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-ne v0, p2, :cond_0

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->mAction:I

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSpellCheckingEnabled:Z

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTextInputType(I)Z
    .locals 1

    sget v0, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/chromium/content/browser/input/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAttachImeAdapter(I)V
.end method

.method private native nativeCommitText(ILjava/lang/String;)V
.end method

.method private native nativeCopy(I)V
.end method

.method private native nativeCut(I)V
.end method

.method private native nativeDeleteSurroundingText(III)V
.end method

.method private native nativeDirectPaste(ILjava/lang/String;)V
.end method

.method private native nativeImeBatchStateChanged(IZ)V
.end method

.method private native nativeInformJSDeferrState(IZ)V
.end method

.method private native nativeNotifyKeyBoardActiveStatus(IZ)V
.end method

.method private native nativePaste(I)V
.end method

.method private native nativeResetImeAdapter(I)V
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSendKeyEvent(ILandroid/view/KeyEvent;IIJIZI)Z
.end method

.method private native nativeSendSyntheticKeyEvent(IIJII)Z
.end method

.method private native nativeSetComposingRegion(III)V
.end method

.method private native nativeSetComposingText(ILjava/lang/String;I)V
.end method

.method private native nativeSetComposingTextWithSubComposingRegion(ILjava/lang/String;III)V
.end method

.method private native nativeSetEditableSelectionOffsets(III)V
.end method

.method private native nativeUnselect(I)V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "ImeAdapter"

    const-string v4, "pasteClipBoardData data isn\'t not useful type"

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->directPaste(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const v4, 0x1040b4c

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    move-object v2, p1

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c02e4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setDashModeEnabled()V
    .locals 4

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "dev.ssrm.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    const-string v1, "ImeAdapter"

    const-string v2, "KEYLAG : Setting SBROWSER_DASH_MODE to 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImeAdapter"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setJavaScriptSuspended()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeInformJSDeferrState(IZ)V

    const-string v0, "ImeAdapter"

    const-string v1, "KEYLAG : Suspending javaScript"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private shouldApplylaggingPatch()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v4}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    move v4, v5

    :goto_1
    return v4

    :catch_0
    move-exception v1

    const-string v4, "ImeAdapter"

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "google"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I
    .locals 4

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x42

    :goto_0
    return v3

    :cond_0
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_3

    :cond_2
    const/16 v3, 0xe5

    goto :goto_0

    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    goto :goto_0
.end method

.method private showKeyboard()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "ImeAdapter"

    const-string v2, "APPLOGS:KEYBOARD Native showKeyboard SOFT_INPUT_ADJUST_RESIZE set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setWindowSoftInputMode(I)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSmallWindowApplicable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->toggleWindowHeight(Z)V

    :cond_0
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->setSoftKeyboard(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrFormNavigationFlag()Z

    move-result v1

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public attach(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(I)V

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(I)V

    :cond_1
    return-void
.end method

.method public attach(IIII)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(I)V

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    iput p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInitialSelectionStart:I

    iput p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInitialSelectionEnd:I

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(I)V

    :cond_1
    return-void
.end method

.method attach(IIZ)V
    .locals 1

    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    iput-boolean p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSpellCheckingEnabled:Z

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(I)V

    return-void
.end method

.method public attachAndShowIfNeeded(IIIIZ)V
    .locals 5

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-ne v1, v2, :cond_1

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->isFor(II)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-ne p2, v1, :cond_2

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;I)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIII)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0
.end method

.method public attachAndShowIfNeeded(IILjava/lang/String;ZIZ)V
    .locals 5

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-ne v1, v2, :cond_1

    if-nez p4, :cond_1

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eq v1, p2, :cond_1

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTextArea:I

    if-eq p2, v1, :cond_0

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeContentEditable:I

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p6}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIZ)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-ne v1, v2, :cond_3

    if-nez p4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setAction(I)V

    invoke-direct {p0, p1, p2, p5, p6}, Lorg/chromium/content/browser/input/ImeAdapter;->isFor(IIIZ)Z

    move-result v1

    if-nez v1, :cond_6

    sput p5, Lorg/chromium/content/browser/input/ImeAdapter;->mAction:I

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->isSoftKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;I)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInput:Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-virtual {p0, p1, p2, p6}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIZ)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->isFinishComposing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->getAttachedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    :cond_5
    if-eqz p4, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showKeyboard()V

    goto :goto_0

    :cond_7
    sput p5, Lorg/chromium/content/browser/input/ImeAdapter;->mAction:I

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->mAction:I

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setAction(I)V

    goto :goto_0
.end method

.method batchStateChanged(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeImeBatchStateChanged(IZ)V

    goto :goto_0
.end method

.method public cancelComposition()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    :cond_0
    return-void
.end method

.method public checkCompositionQueueAndCallNative(Ljava/lang/String;IIIZ)Z
    .locals 13

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->isEditable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hideAndDisallowAutomaticShowing()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v0, v12}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->onImeEvent(Z)V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeRawKeyDown:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(IIJII)Z

    if-eqz p5, :cond_3

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(ILjava/lang/String;)V

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    :goto_1
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeKeyUp:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(IIJII)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_EnableHighlightComposingRegion"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v7, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    move-object v6, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingTextWithSubComposingRegion(ILjava/lang/String;III)V

    :goto_2
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingText(ILjava/lang/String;I)V

    goto :goto_2
.end method

.method checkCompositionQueueAndCallNative(Ljava/lang/String;IZ)Z
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method

.method commitText()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->cancelComposition()V

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public copy()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCopy(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cut()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCut(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteSurroundingText(II)Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDeleteSurroundingText(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method detach()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSpellCheckingEnabled:Z

    return-void
.end method

.method directPaste(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->isEditable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDirectPaste(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method dismissInput(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboard(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->onDismissInput()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public finishComposingText()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method getInitialSelectionEnd()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInitialSelectionEnd:I

    return v0
.end method

.method getInitialSelectionStart()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInitialSelectionStart:I

    return v0
.end method

.method getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-object v0
.end method

.method public getPasteClipboardEx()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const-string v4, "clipboardEx"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method getTextInputType()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    return v0
.end method

.method hasDialogInputType()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    return v0
.end method

.method public hasTextInputType()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isTextInputType(I)Z

    move-result v0

    return v0
.end method

.method public hideKeyboardFromContentView()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->dismissInput(Z)V

    return-void
.end method

.method hideSelectionAndInsertionHandleControllers()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mSelectionHandleController:Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hideAndDisallowAutomaticShowing()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hideAndDisallowAutomaticShowing()V

    return-void
.end method

.method public initComposing()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishComposing()Z
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    if-ne v1, v3, :cond_0

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isKeypadShownInContentView()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    goto :goto_0
.end method

.method public isNativeImeAdapterAttached()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoftKeyboardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsActiveSoftKeyboard:Z

    return v0
.end method

.method public isTextInputTypePassword()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInputReceivedInAdapter()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsSetDashMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setDashModeEnabled()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputDashBoardHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xaa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->shouldApplylaggingPatch()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputJavaScriptHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputJavaScriptHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsJavaScriptSuspended:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setJavaScriptSuspended()V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mKeyInputJavaScriptHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public paste()Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrFormNavigationFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->getPasteClipboardEx()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isEditable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDirectPaste(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativePaste(I)V

    goto :goto_1
.end method

.method public pasteByClipboardEx()V
    .locals 5

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mPasteEvent:Lorg/chromium/content/browser/input/ImeAdapter$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "ImeAdapter"

    const-string v3, "clipboard is not shown"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public selectAll()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSelectAll(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method sendKeyEventWithKeyCode(II)V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    move/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v1

    move/from16 v9, p1

    move/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method sendSyntheticKeyEvent(IJII)Z
    .locals 7

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(IIJII)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setComposingRegion(II)Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingRegion(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setEditableSelectionOffsets(II)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetEditableSelectionOffsets(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-void
.end method

.method protected setInputMethodManagerWrapper(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-void
.end method

.method public setShiftKeyPressed(Z)V
    .locals 0

    sput-boolean p1, Lorg/chromium/content/browser/input/ImeAdapter;->mShiftKeyPressed:Z

    return-void
.end method

.method public setSoftKeyboard(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsActiveSoftKeyboard:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeNotifyKeyBoardActiveStatus(IZ)V

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsActiveSoftKeyboard:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->setSoftKeyBoardVisible(Z)V

    :cond_1
    return-void
.end method

.method public setWindowSoftInputMode(I)V
    .locals 4

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v1, "ImeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLOGS:KEYBOARD Native setWindowSoftInputMode value set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public shouldIgnoreNativeTextUpdate()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    if-le v2, v0, :cond_0

    iput v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    :goto_0
    return v0

    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeTextUpdateWaitCount:I

    move v0, v1

    goto :goto_0
.end method

.method translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z
    .locals 11

    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    if-ne v10, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;

    invoke-interface {v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter$ViewEmbedder;->onImeEvent(Z)V

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendKeyEvent(ILandroid/view/KeyEvent;IIJIZI)Z

    move-result v0

    goto :goto_0
.end method

.method public unselect()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeUnselect(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
