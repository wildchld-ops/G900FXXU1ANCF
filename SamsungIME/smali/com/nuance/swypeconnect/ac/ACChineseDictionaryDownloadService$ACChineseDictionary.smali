.class public final Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
.super Ljava/lang/Object;
.source "ACChineseDictionaryDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ACChineseDictionary"
.end annotation


# instance fields
.field private dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDictionary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getDictionary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    #getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v2}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    #getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/ResourcesService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    #getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/ResourcesService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/nuance/connect/api/ResourcesService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLocalizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getId()I

    move-result v0

    return v0
.end method

.method public getLanguage()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->dictionary:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLocalizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
