.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$6;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->createPopUpMenu()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V

    return-void
.end method
