.class Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmartScrollSettingOn:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmartScrollOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmartScrollSettingOn:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SmartScrollObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    goto :goto_0
.end method
