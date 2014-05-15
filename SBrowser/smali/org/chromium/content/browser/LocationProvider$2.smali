.class Lorg/chromium/content/browser/LocationProvider$2;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/LocationProvider;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/LocationProvider;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LocationProvider$2;->this$0:Lorg/chromium/content/browser/LocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$2;->this$0:Lorg/chromium/content/browser/LocationProvider;

    #getter for: Lorg/chromium/content/browser/LocationProvider;->mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;
    invoke-static {v0}, Lorg/chromium/content/browser/LocationProvider;->access$000(Lorg/chromium/content/browser/LocationProvider;)Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    move-result-object v0

    #calls: Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->stop()V
    invoke-static {v0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->access$200(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;)V

    return-void
.end method
