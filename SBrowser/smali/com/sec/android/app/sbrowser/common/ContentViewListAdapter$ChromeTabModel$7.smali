.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$7;
.super Ljava/lang/Object;
.source "ContentViewListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$7;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel$7;->this$1:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->IS_ERROR_DIALOG_SHOWING:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;->access$3902(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$ChromeTabModel;Z)Z

    return-void
.end method
