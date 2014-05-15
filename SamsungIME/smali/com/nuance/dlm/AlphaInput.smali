.class public Lcom/nuance/dlm/AlphaInput;
.super Ljava/lang/Object;
.source "AlphaInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

.field private service:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dlm/AlphaInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/AlphaInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->bindAlphaDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/AlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/AlphaInput;->acAlphaRegisterEventHandlerCallback()I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acAlphaDeleteCategory(I)I
.end method

.method private final native acAlphaDeleteCategoryLanguage(II)I
.end method

.method private final native acAlphaExportAsEvent(ZI)I
.end method

.method private final native acAlphaProcessEvent([B)I
.end method

.method private final native acAlphaRegisterEventHandlerCallback()I
.end method

.method private onEventCallback([BZ)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/AlphaInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACAlphaDlmEventCallback;->onAlphaDlmEvent([BZ)V

    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/AlphaInput;->acAlphaDeleteCategory(I)I

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/AlphaInput;->acAlphaDeleteCategoryLanguage(II)I

    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/AlphaInput;->acAlphaExportAsEvent(ZI)I

    return-void
.end method

.method public processEvent([B)V
    .locals 2

    const-string v0, "ACDownloadManager"

    const-string v1, "[AlphaInput-processEvent]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/nuance/dlm/AlphaInput;->acAlphaProcessEvent([B)I

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/AlphaInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseAlphaDlm()V

    return-void
.end method
