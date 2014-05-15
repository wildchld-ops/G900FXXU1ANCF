.class Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$1;
.super Ljava/lang/Object;
.source "AddQuickAccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->finish()V

    return-void
.end method
