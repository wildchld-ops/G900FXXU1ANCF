.class public abstract Lorg/chromium/content/common/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/CommandLine$1;,
        Lorg/chromium/content/common/CommandLine$NativeCommandLine;,
        Lorg/chromium/content/common/CommandLine$JavaCommandLine;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACCESSIBILITY_DEBUG_BRAILLE_SERVICE:Ljava/lang/String; = "debug-braille-service"

.field public static final ACCESSIBILITY_JAVASCRIPT_URL:Ljava/lang/String; = "accessibility-js-url"

.field public static final ADD_OFFICIAL_COMMAND_LINE:Ljava/lang/String; = "add-official-command-line"

.field public static final ENABLE_INSTANT_EXTENDED_API:Ljava/lang/String; = "enable-instant-extended-api"

.field public static final ENABLE_TEST_INTENTS:Ljava/lang/String; = "enable-test-intents"

.field public static final ENABLE_TOP_CONTROLS_POSITION_CALCULATION:Ljava/lang/String; = "enable-top-controls-position-calculation"

.field public static final LOG_FPS:Ljava/lang/String; = "log-fps"

.field public static final NETWORK_COUNTRY_ISO:Ljava/lang/String; = "network-country-iso"

.field private static final SWITCH_PREFIX:Ljava/lang/String; = "--"

.field private static final SWITCH_TERMINATOR:Ljava/lang/String; = "--"

.field private static final SWITCH_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field public static final TABLET_UI:Ljava/lang/String; = "tablet-ui"

.field private static final TAG:Ljava/lang/String; = "CommandLine"

.field public static final TOP_CONTROLS_HEIGHT:Ljava/lang/String; = "top-controls-height"

.field public static final TOP_CONTROLS_HIDE_THRESHOLD:Ljava/lang/String; = "top-controls-hide-threshold"

.field public static final TOP_CONTROLS_SHOW_THRESHOLD:Ljava/lang/String; = "top-controls-show-threshold"

.field public static final USE_MOBILE_UA:Ljava/lang/String; = "use-mobile-user-agent"

.field public static final WAIT_FOR_JAVA_DEBUGGER:Ljava/lang/String; = "wait-for-java-debugger"

.field private static final sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/chromium/content/common/CommandLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/common/CommandLine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/common/CommandLine;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

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

.method synthetic constructor <init>(Lorg/chromium/content/common/CommandLine$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/common/CommandLine;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/content/common/CommandLine;->nativeHasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/chromium/content/common/CommandLine;->nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/common/CommandLine;->nativeAppendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/common/CommandLine;->nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/common/CommandLine;->nativeAppendSwitchesAndArguments([Ljava/lang/String;)V

    return-void
.end method

.method public static enableNativeProxy()V
    .locals 3

    sget-object v0, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/chromium/content/common/CommandLine$NativeCommandLine;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/content/common/CommandLine$NativeCommandLine;-><init>(Lorg/chromium/content/common/CommandLine$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lorg/chromium/content/common/CommandLine;
    .locals 2

    sget-object v1, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/CommandLine;

    sget-boolean v1, Lorg/chromium/content/common/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static getJavaSwitchesOrNull()[Ljava/lang/String;
    .locals 2

    sget-object v1, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/CommandLine;

    if-eqz v0, :cond_1

    sget-boolean v1, Lorg/chromium/content/common/CommandLine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/common/CommandLine;->isNativeImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    check-cast v0, Lorg/chromium/content/common/CommandLine$JavaCommandLine;

    #calls: Lorg/chromium/content/common/CommandLine$JavaCommandLine;->getCommandLineArguments()[Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/content/common/CommandLine$JavaCommandLine;->access$100(Lorg/chromium/content/common/CommandLine$JavaCommandLine;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/common/CommandLine$JavaCommandLine;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/CommandLine$JavaCommandLine;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/content/common/CommandLine;->setInstance(Lorg/chromium/content/common/CommandLine;)V

    invoke-static {}, Lorg/samsung/base/Feature;->InitCSCFeature()V

    return-void
.end method

.method public static initFromFile(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    new-array v0, v2, [C

    const/16 v2, 0x2000

    :try_start_0
    invoke-static {p0, v2}, Lorg/chromium/content/common/CommandLine;->readUtf8FileFully(Ljava/lang/String;I)[C
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/chromium/content/common/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/common/CommandLine;->init([Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "CommandLine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error reading command line file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendSwitch(Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAppendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method private static native nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeHasSwitch(Ljava/lang/String;)Z
.end method

.method private static native nativeReset()V
.end method

.method private static readUtf8FileFully(Ljava/lang/String;I)[C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    :cond_0
    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [C

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    sget-boolean v5, Lorg/chromium/content/common/CommandLine;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/Reader;->ready()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_0

    :cond_2
    array-length v5, v0

    if-ge v1, v5, :cond_3

    const/4 v5, 0x0

    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    :cond_4
    return-object v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/content/common/CommandLine;->setInstance(Lorg/chromium/content/common/CommandLine;)V

    return-void
.end method

.method private static setInstance(Lorg/chromium/content/common/CommandLine;)V
    .locals 2

    sget-object v1, Lorg/chromium/content/common/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/CommandLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/common/CommandLine;->isNativeImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->nativeReset()V

    :cond_0
    return-void
.end method

.method public static tokenizeQuotedAruments([C)[Ljava/lang/String;
    .locals 13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x27

    const/16 v5, 0x22

    const/4 v4, 0x0

    move-object v2, p0

    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_8

    aget-char v3, v2, v6

    if-nez v4, :cond_0

    const/16 v10, 0x27

    if-eq v3, v10, :cond_1

    const/16 v10, 0x22

    if-eq v3, v10, :cond_1

    :cond_0
    if-ne v3, v4, :cond_5

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move v4, v3

    :goto_2
    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v4, :cond_9

    const-string v10, "CommandLine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unterminated quoted string: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public abstract appendSwitch(Ljava/lang/String;)V
.end method

.method public abstract appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract appendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method public abstract getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/content/common/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public abstract hasSwitch(Ljava/lang/String;)Z
.end method

.method public isNativeImplementation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
