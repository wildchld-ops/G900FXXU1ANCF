.class Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$3;
.super Ljava/lang/Object;
.source "ReaderBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->setFindOnPageToolbarDisplay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$3;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    #getter for: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mInflatedView:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$300(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;)Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setVisibility(I)V

    return-void
.end method
