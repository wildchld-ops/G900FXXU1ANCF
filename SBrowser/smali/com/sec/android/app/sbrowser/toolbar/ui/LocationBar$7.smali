.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field final synthetic val$s:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;->val$s:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$7;->val$s:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->changeState(I)V

    return-void
.end method
