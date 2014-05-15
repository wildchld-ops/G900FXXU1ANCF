.class Lcom/android/settings/AirplaneModeSwitchEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/ToggleImageView$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/android/settings/ToggleImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #calls: Lcom/android/settings/AirplaneModeSwitchEnabler;->onToggleChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$200(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    return-void
.end method
