.class public Lcom/nuance/dlm/ChineseInput;
.super Ljava/lang/Object;
.source "ChineseInput.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

.field private service:Lcom/nuance/swypeconnect/ac/ACDlmService;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACDlmService;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    :try_start_0
    iget-object v1, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v1, p0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->bindChineseDlm(Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmDb;)Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dlm/ChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/dlm/ChineseInput;->acChineseRegisterEventHandlerCallback()I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method private final native acChineseDeleteCategory(I)I
.end method

.method private final native acChineseDeleteCategoryLanguage(II)I
.end method

.method private final native acChineseExportAsEvent(ZI)I
.end method

.method private final native acChineseProcessEvent([B)I
.end method

.method private final native acChineseRegisterEventHandlerCallback()I
.end method

.method private onEventCallback([BZ)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/ChineseInput;->callback:Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDlmService$ACChineseDlmEventCallback;->onChineseDlmEvent([BZ)V

    return-void
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ChineseInput;->acChineseDeleteCategory(I)I

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ChineseInput;->acChineseDeleteCategoryLanguage(II)I

    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ChineseInput;->acChineseExportAsEvent(ZI)I

    return-void
.end method

.method public processEvent([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ChineseInput;->acChineseProcessEvent([B)I

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dlm/ChineseInput;->service:Lcom/nuance/swypeconnect/ac/ACDlmService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDlmService;->releaseChineseDlm()V

    return-void
.end method
