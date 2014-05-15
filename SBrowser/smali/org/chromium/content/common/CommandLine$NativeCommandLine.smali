.class Lorg/chromium/content/common/CommandLine$NativeCommandLine;
.super Lorg/chromium/content/common/CommandLine;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/common/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCommandLine"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/common/CommandLine;-><init>(Lorg/chromium/content/common/CommandLine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/common/CommandLine$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/common/CommandLine$NativeCommandLine;-><init>()V

    return-void
.end method


# virtual methods
.method public appendSwitch(Ljava/lang/String;)V
    .locals 0

    #calls: Lorg/chromium/content/common/CommandLine;->nativeAppendSwitch(Ljava/lang/String;)V
    invoke-static {p1}, Lorg/chromium/content/common/CommandLine;->access$500(Ljava/lang/String;)V

    return-void
.end method

.method public appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #calls: Lorg/chromium/content/common/CommandLine;->nativeAppendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, p2}, Lorg/chromium/content/common/CommandLine;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendSwitchesAndArguments([Ljava/lang/String;)V
    .locals 0

    #calls: Lorg/chromium/content/common/CommandLine;->nativeAppendSwitchesAndArguments([Ljava/lang/String;)V
    invoke-static {p1}, Lorg/chromium/content/common/CommandLine;->access$700([Ljava/lang/String;)V

    return-void
.end method

.method public getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    #calls: Lorg/chromium/content/common/CommandLine;->nativeGetSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/common/CommandLine;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSwitch(Ljava/lang/String;)Z
    .locals 1

    #calls: Lorg/chromium/content/common/CommandLine;->nativeHasSwitch(Ljava/lang/String;)Z
    invoke-static {p1}, Lorg/chromium/content/common/CommandLine;->access$300(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeImplementation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
