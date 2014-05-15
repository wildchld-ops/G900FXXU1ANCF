.class Lorg/samsung/chrome/browser/SbrWebLoginProvider$1;
.super Ljava/lang/Thread;
.source "SbrWebLoginProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/chrome/browser/SbrWebLoginProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrWebLoginProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrWebLoginProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrWebLoginProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebLoginProvider$1;->this$0:Lorg/samsung/chrome/browser/SbrWebLoginProvider;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrWebLoginProvider$1;->val$context:Landroid/content/Context;

    const-string v2, "weblogin.db"

    #calls: Lorg/samsung/chrome/browser/SbrWebLoginProvider;->initOnBackgroundThread(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/samsung/chrome/browser/SbrWebLoginProvider;->access$000(Lorg/samsung/chrome/browser/SbrWebLoginProvider;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
