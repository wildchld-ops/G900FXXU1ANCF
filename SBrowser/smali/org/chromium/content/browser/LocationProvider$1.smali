.class Lorg/chromium/content/browser/LocationProvider$1;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/LocationProvider;->start(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/LocationProvider;

.field final synthetic val$gpsEnabled:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/LocationProvider;Z)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/LocationProvider$1;->this$0:Lorg/chromium/content/browser/LocationProvider;

    iput-boolean p2, p0, Lorg/chromium/content/browser/LocationProvider$1;->val$gpsEnabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider$1;->this$0:Lorg/chromium/content/browser/LocationProvider;

    #getter for: Lorg/chromium/content/browser/LocationProvider;->mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;
    invoke-static {v0}, Lorg/chromium/content/browser/LocationProvider;->access$000(Lorg/chromium/content/browser/LocationProvider;)Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/content/browser/LocationProvider$1;->val$gpsEnabled:Z

    #calls: Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->start(Z)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->access$100(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;Z)V

    return-void
.end method
