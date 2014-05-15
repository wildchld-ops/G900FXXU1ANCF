.class Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$2;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteActivity;->finish()V

    return-void
.end method
