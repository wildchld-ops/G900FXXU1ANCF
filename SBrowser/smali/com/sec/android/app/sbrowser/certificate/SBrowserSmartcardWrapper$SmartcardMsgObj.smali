.class Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;
.super Ljava/lang/Object;
.source "SBrowserSmartcardWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartcardMsgObj"
.end annotation


# instance fields
.field public mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;->mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    return-void
.end method
