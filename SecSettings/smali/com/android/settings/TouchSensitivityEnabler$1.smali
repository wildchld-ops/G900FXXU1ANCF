.class Lcom/android/settings/TouchSensitivityEnabler$1;
.super Ljava/lang/Object;
.source "TouchSensitivityEnabler.java"

# interfaces
.implements Lcom/android/settings/ToggleImageView$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TouchSensitivityEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TouchSensitivityEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/TouchSensitivityEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TouchSensitivityEnabler$1;->this$0:Lcom/android/settings/TouchSensitivityEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/android/settings/ToggleImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TouchSensitivityEnabler$1;->this$0:Lcom/android/settings/TouchSensitivityEnabler;

    #calls: Lcom/android/settings/TouchSensitivityEnabler;->onToggleChanged()V
    invoke-static {v0}, Lcom/android/settings/TouchSensitivityEnabler;->access$000(Lcom/android/settings/TouchSensitivityEnabler;)V

    return-void
.end method
