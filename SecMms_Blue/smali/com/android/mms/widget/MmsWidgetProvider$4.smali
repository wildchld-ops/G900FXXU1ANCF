.class Lcom/android/mms/widget/MmsWidgetProvider$4;
.super Ljava/lang/Object;
.source "MmsWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/MmsWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/MmsWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/MmsWidgetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetProvider$4;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetProvider$4;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    iget-object v2, v2, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetProvider$4;->this$0:Lcom/android/mms/widget/MmsWidgetProvider;

    iget-object v2, v2, Lcom/android/mms/widget/MmsWidgetProvider;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/widget/MmsWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    const v3, 0x7f0b014d

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    return-void
.end method
