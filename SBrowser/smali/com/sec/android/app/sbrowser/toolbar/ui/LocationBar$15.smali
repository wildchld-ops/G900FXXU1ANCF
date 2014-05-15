.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;->val$state:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$15;->val$state:I

    iput v1, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sState:I

    return-void
.end method
