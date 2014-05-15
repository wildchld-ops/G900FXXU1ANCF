.class Lcom/sec/android/app/sbrowser/common/ColorPicker$1;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/ColorPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$1;->this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ColorPicker$1;->this$0:Lcom/sec/android/app/sbrowser/common/ColorPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ColorPicker;->dismiss()V

    return-void
.end method
