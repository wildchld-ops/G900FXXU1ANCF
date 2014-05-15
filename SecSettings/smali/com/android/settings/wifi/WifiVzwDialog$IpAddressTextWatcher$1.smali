.class Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher$1;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher$1;->this$1:Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher$1;->this$1:Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    return-void
.end method
