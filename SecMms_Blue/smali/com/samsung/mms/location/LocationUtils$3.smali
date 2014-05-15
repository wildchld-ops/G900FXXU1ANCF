.class final Lcom/samsung/mms/location/LocationUtils$3;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$stringResourceID:I

.field final synthetic val$toastShowLength:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$stringResourceID:I

    iput p3, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$toastShowLength:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$stringResourceID:I

    iget v2, p0, Lcom/samsung/mms/location/LocationUtils$3;->val$toastShowLength:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
