.class Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;
.super Ljava/lang/Object;
.source "SBrowserSmartcardWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SBrowserSmartcardWrapper"

    const-string v1, "SBrowserSmartcardWrapper > init > mSmartCardHelper.initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->mSmartCardHelper:Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;)Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/smartcard/SmartCardHelper;->initialize(Lcom/sec/enterprise/knox/smartcard/SmartCardHelper$Callback;)V

    return-void
.end method
