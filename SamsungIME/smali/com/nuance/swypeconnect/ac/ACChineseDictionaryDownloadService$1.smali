.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;
.super Ljava/lang/Object;
.source "ACChineseDictionaryDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;-><init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    #getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    return-void
.end method
