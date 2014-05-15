.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$22;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$22;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$22;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setClearTabStateOfOtherInstance(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)V

    return-void
.end method
