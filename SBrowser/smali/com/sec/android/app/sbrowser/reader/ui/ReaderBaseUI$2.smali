.class Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$2;
.super Ljava/lang/Object;
.source "ReaderBaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->initializeUI()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI$2;->this$0:Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->setUrlBarHidden(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->access$200(Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;Z)V

    return-void
.end method
