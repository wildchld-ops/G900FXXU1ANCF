.class public Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
.super Lorg/chromium/content/browser/WebContentsObserverAndroid;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;,
        Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SCREEN_READER_JAVASCRIPT_TEMPLATE:Ljava/lang/String; = "(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE_2:Ljava/lang/String; = "accessibility2"

.field private static final DEFAULT_ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "https://ssl.gstatic.com/accessibility/javascript/android/chromeandroidvox.js"

.field private static final FEEDBACK_BRAILLE:I = 0x20

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOGGLE_CHROME_VOX_JAVASCRIPT:Ljava/lang/String; = "(function() {    if (typeof cvox !== \'undefined\') {        cvox.ChromeVox.host.activateOrDeactivateChromeVox(%1s);    }  })();"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityScreenReaderUrl:Ljava/lang/String;

.field protected mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field protected mInjectedScriptEnabled:Z

.field protected mScriptInjected:Z

.field private mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

.field private mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/WebContentsObserverAndroid;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "accessibility-js-url"

    const-string v2, "https://ssl.gstatic.com/accessibility/javascript/android/chromeandroidvox.js"

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/common/CommandLine;->getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityScreenReaderUrl:Ljava/lang/String;

    return-void
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private getAxsUrlParameterValue()I
    .locals 6

    const/4 v3, -0x1

    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    const-string v4, "axs"

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private getScreenReaderInjectingJs()Ljava/lang/String;
    .locals 4

    const-string v0, "(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityScreenReaderUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method


# virtual methods
.method public accessibilityIsAvailable()Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentSettings;->getJavaScriptEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected addAccessibilityApis()V
    .locals 4

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    const-string v3, "accessibility"

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-nez v1, :cond_1

    new-instance v1, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    const-string v3, "accessibility2"

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public addOrRemoveAccessibilityApisIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addAccessibilityApis()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->removeAccessibilityApis()V

    goto :goto_0
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mScriptInjected:Z

    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getIgnoreNavigationStatus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->injectAccessibilityScriptIntoPage()V

    :cond_0
    return-void
.end method

.method public injectAccessibilityScriptIntoPage()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAxsUrlParameterValue()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    :try_start_0
    const-class v6, Landroid/provider/Settings$Secure;

    const-string v7, "ACCESSIBILITY_SCRIPT_INJECTION"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getScreenReaderInjectingJs()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mScriptInjected:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    return-void
.end method

.method public onPageLostFocus()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->cancel()V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected removeAccessibilityApis()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->shutdownInternal()V

    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const-string v1, "accessibility2"

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->cancel()V

    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    :cond_1
    return-void
.end method

.method public setScriptEnabled(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    if-ne v1, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "(function() {    if (typeof cvox !== \'undefined\') {        cvox.ChromeVox.host.activateOrDeactivateChromeVox(%1s);    }  })();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content/browser/ContentViewCore$JavaScriptCallback;)V

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLostFocus()V

    goto :goto_0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
