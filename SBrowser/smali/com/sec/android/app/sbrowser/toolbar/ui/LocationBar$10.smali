.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSearchQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;->val$query:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$10;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method
