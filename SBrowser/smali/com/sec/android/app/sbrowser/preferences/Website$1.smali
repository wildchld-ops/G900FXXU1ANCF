.class Lcom/sec/android/app/sbrowser/preferences/Website$1;
.super Ljava/lang/Object;
.source "Website.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/Website;->clearAllStoredData(Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/Website;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/Website;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/Website$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoCleared()V
    .locals 0

    return-void
.end method
