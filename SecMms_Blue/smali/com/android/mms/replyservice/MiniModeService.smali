.class public abstract Lcom/android/mms/replyservice/MiniModeService;
.super Landroid/app/Service;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/replyservice/MiniModeService$24;,
        Lcom/android/mms/replyservice/MiniModeService$TouchListener;,
        Lcom/android/mms/replyservice/MiniModeService$Vec2D;,
        Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;,
        Lcom/android/mms/replyservice/MiniModeService$MoveParam;,
        Lcom/android/mms/replyservice/MiniModeService$Resizable;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field public static final ALARM_ALERT_ACTION:[Ljava/lang/String; = null

.field private static final ANIMATION_POPUP_DURATION:I = 0x258

.field private static final ANIMATION_POPUP_Y_END:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_POPUP_Y_START:F = 0.0f

.field public static final CATEGORY_NAME:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field public static final CLOSE_EFFECT_DEFAULT:I = 0x0

.field public static final CLOSE_EFFECT_FULLMODE:I = 0x1

.field public static final CLOSE_REASON_ALARM:I = 0x6

.field public static final CLOSE_REASON_APPLICATION_REQUEST:I = 0x7

.field public static final CLOSE_REASON_BACK_KEY_PRESSED:I = 0x1

.field public static final CLOSE_REASON_CLOSE_BUTTON_CLICKED:I = 0x3

.field public static final CLOSE_REASON_FORCE_CLOSED:I = 0x2

.field public static final CLOSE_REASON_FULL_BUTTON_CLICKED:I = 0x4

.field public static final CLOSE_REASON_INCOMING_CALL:I = 0x5

.field private static final CLOSE_REQUESTED_MSG:I = 0x4

.field static final DEBUG:Z = false

.field static final DEBUG_APP_POSITION:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_VERBOSE:Z = false

.field static final DEBUG_WINDOW_SIZE:Z = false

.field private static final DIALOG_HEIGHT:I = 0xb0

.field private static final DUMMY_NOTIFICATION_ID:I = 0x1

.field static final ENABLE_DEBUG_BY_SERVICE_NAME:Z = false

.field private static ENABLE_MINIMIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z = false

.field private static final FLOATING_ALPHA_DOWN_SCALE_FACTOR:F = 0.6f

.field private static final FLOATING_DEFAULT_ANIMATION_DURATION:I = 0x96

.field private static final FLOATING_SIZE_SCALE_FACTOR:F = 0.95f

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final HIDE_REQUESTED_MSG:I = 0x7

.field private static final LAYOUT_CHANGED_MSG:I = 0x3

.field public static final MAIN_ACTIVITY_META_DATA:Ljava/lang/String; = "com.sec.minimode.main_activity"

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final MINI_MODE_APP_MANAGER:Ljava/lang/String; = "mini_mode_app_manager"

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field private static final RESIZE_WINDOW_MSG:I = 0x5

.field static final SCALE_DOWN_ANIM:Z = false

.field private static final SHOW_REQUESTED_MSG:I = 0x6

.field public static final SOFT_INPUT_MODE_NOT_INITIALIZED:I = -0x1

.field static STATIC_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MiniModeService"

.field public static final WINDOW_DEFAULT_HEIGHT:I = 0x0

.field public static final WINDOW_DEFAULT_POS_X:I = -0x2710

.field public static final WINDOW_DEFAULT_POS_Y:I = -0x2710

.field public static final WINDOW_DEFAULT_WIDTH:I = 0x0

.field public static final WINDOW_MAXIMUM_SIZE_H:Ljava/lang/String; = null

.field public static final WINDOW_MAXIMUM_SIZE_W:Ljava/lang/String; = null

.field public static final WINDOW_MINIMUM_SIZE_H:Ljava/lang/String; = null

.field public static final WINDOW_MINIMUM_SIZE_W:Ljava/lang/String; = null

.field public static final WINDOW_POS_X:Ljava/lang/String; = "window.pos.x"

.field public static final WINDOW_POS_Y:Ljava/lang/String; = "window.pos.y"

.field public static final X_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field public static final Y_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field private static mHasStatusBar:Z

.field private static mIsDragRestricted:Z

.field private static mIsTabletMode:Z


# instance fields
.field private CALCULATED_BODY_VIEW_ANCHOR_ID:I

.field protected CLOSE_MINIAPP_DELAY:I

.field protected MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

.field private MINIMIZED_TITLE_BAR_WIDTH:I

.field protected RESIZE_HANDLER_SHOW_TIMEOUT:I

.field protected X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field protected Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field private lastKeyCode:I

.field private lastKeyEvent:Landroid/view/KeyEvent;

.field private mAlarmStateListner:Landroid/content/BroadcastReceiver;

.field private mAnimView:Landroid/view/View;

.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field private mAttached:Z

.field public mAxisXGapBetweenMultiMiniApp:I

.field public mAxisYGapBetweenMultiMiniApp:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBgEnabled:Z

.field private mBodyView:Landroid/view/View;

.field private mBottomPaddingOfMiniApp:I

.field private mCalculatedBodyView:Landroid/view/View;

.field private mCalculatedBodyViewID:I

.field private mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentHasBeenSet:Z

.field private mContentView:Landroid/view/View;

.field private mContentViewLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorContentView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mDimEnabled:Z

.field private mDimView:Landroid/view/View;

.field private mDismissed:Z

.field private mFirstShow:Z

.field private mFloatingEndAnim:Landroid/animation/AnimatorSet;

.field private mFloatingStartAnim:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mHideOverlayTitleBar:Ljava/lang/Runnable;

.field private mHideResizeHandler:Ljava/lang/Runnable;

.field protected mIWindowManager:Landroid/view/IWindowManager;

.field private mIsMinimized:Z

.field private mIsOverlayTitleBarShown:Z

.field private mIsResizeHandlerShown:Z

.field private mLastDisplayRect:Landroid/graphics/Rect;

.field private mLastFocus:Z

.field private mLaunchMainRunnable:Ljava/lang/Runnable;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftPaddingOfMiniApp:I

.field private mMainActivity:Landroid/content/ComponentName;

.field protected mMainView:Lcom/sec/android/app/minimode/MainView;

.field private mMaximizeButton:Landroid/widget/Button;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMinimizeButton:Landroid/widget/Button;

.field private mMinimizeFunctionRequested:Z

.field private mMinimizedBar:Landroid/widget/RelativeLayout;

.field private mMinimizedBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mMinimizedBarTouchListener:Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

.field private mMinimumSize:Landroid/graphics/Rect;

.field private mOldDecorViewHeight:I

.field private mOldDecorViewWidth:I

.field private mOverlayFrame:Landroid/widget/RelativeLayout;

.field private mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

.field private mOverlayFrameWindow:Landroid/view/View;

.field private mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

.field private mOverlayResizeHandler:Landroid/view/View;

.field private mOverlayTitleBar:Landroid/widget/RelativeLayout;

.field private mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhone2:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneStatusBarHeight:I

.field private mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;

.field private mResizeFunctionRequested:Z

.field private mResizeHandler:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mRightPaddingOfMiniApp:I

.field private mSavedSoftInputMode:I

.field protected mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mSavedWindowAttributesFlags:I

.field protected mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

.field private mStartDrag:Z

.field private mStatusBarHeight:I

.field private mTitleView:Landroid/view/View;

.field private mTopPaddingOfMiniApp:I

.field private mTouchListener:Lcom/android/mms/replyservice/MiniModeService$TouchListener;

.field private mUseCustomResizeHandler:Z

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/high16 v4, 0x43b4

    const/high16 v3, 0x432f

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "MiniModeService"

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MINIMUM_SIZE_W:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MINIMUM_SIZE_H:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MAXIMUM_SIZE_W:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MAXIMUM_SIZE_H:Ljava/lang/String;

    sput-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->mHasStatusBar:Z

    sput-boolean v1, Lcom/android/mms/replyservice/MiniModeService;->mIsDragRestricted:Z

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    aput-object v3, v2, v0

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "com.android.calendar.CALENDAR_ALARM_ALERT"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/mms/replyservice/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    sput-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    sput-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    sget-boolean v2, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    const/high16 v0, 0x4330

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/android/mms/replyservice/MiniModeService;->ANIMATION_POPUP_Y_START:F

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributesFlags:I

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    iput-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mDismissed:Z

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mBodyView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLeftPaddingOfMiniApp:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mTopPaddingOfMiniApp:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mRightPaddingOfMiniApp:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mBottomPaddingOfMiniApp:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    iput-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    iput-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z

    iput-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mBgEnabled:Z

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentHasBeenSet:Z

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$1;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    iput-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    sget-object v0, Lcom/android/mms/replyservice/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mUseCustomResizeHandler:Z

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsResizeHandlerShown:Z

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsOverlayTitleBarShown:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    const v0, 0xff00f0

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBarTouchListener:Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$2;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$7;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$7;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$15;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$15;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$16;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$16;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$21;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$21;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$TouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/replyservice/MiniModeService$TouchListener;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mTouchListener:Lcom/android/mms/replyservice/MiniModeService$TouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/replyservice/MiniModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/replyservice/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/replyservice/MiniModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/replyservice/MiniModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->mIsTabletMode:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/replyservice/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/replyservice/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/replyservice/MiniModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/replyservice/MiniModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedSoftInputMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsResizeHandlerShown:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/replyservice/MiniModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsResizeHandlerShown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsOverlayTitleBarShown:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/replyservice/MiniModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsOverlayTitleBarShown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->startDrag()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->endDrag()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/mms/replyservice/MiniModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/replyservice/MiniModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/replyservice/MiniModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/replyservice/MiniModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/replyservice/MiniModeService;)Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBarTouchListener:Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/mms/replyservice/MiniModeService;)Lcom/android/mms/replyservice/MiniModeService$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mTouchListener:Lcom/android/mms/replyservice/MiniModeService$TouchListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/replyservice/MiniModeService;)Lcom/android/mms/replyservice/MiniModeService$Resizable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/replyservice/MiniModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/mms/replyservice/MiniModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/replyservice/MiniModeService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4600()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/mms/replyservice/MiniModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/replyservice/MiniModeService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/replyservice/MiniModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->lastKeyCode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/replyservice/MiniModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/replyservice/MiniModeService;->lastKeyCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/replyservice/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method private static calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;
    .locals 25

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    int-to-double v0, v11

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v19, v21, v23

    int-to-double v0, v10

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v6, v21, v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    sget-boolean v21, Lcom/android/mms/replyservice/MiniModeService;->mIsDragRestricted:Z

    if-nez v21, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    double-to-int v0, v6

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    double-to-int v0, v6

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_2

    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v15, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v12, v2}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v13, v3}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x2

    new-instance v22, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v4}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x3

    new-instance v22, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v5}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x0

    aget-object v9, v17, v21

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    invoke-virtual {v9}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->getLength()F

    move-result v21

    aget-object v22, v17, v8

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->getLength()F

    move-result v22

    cmpg-float v21, v21, v22

    if-gez v21, :cond_1

    aget-object v9, v17, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(II)V

    :cond_3
    return-object v9
.end method

.method private calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_0
    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_2

    const/4 v7, 0x1

    :goto_1
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_3

    const/4 v9, 0x1

    :goto_2
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_4

    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_3
    new-instance v3, Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/android/mms/replyservice/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_5
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/android/mms/replyservice/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_6

    const/4 v7, 0x1

    :goto_4
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_7

    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_1

    if-nez v7, :cond_1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v10, v11}, Lcom/android/mms/replyservice/MiniModeService;->shiftDownMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v4

    iget v10, v4, Landroid/graphics/Point;->x:I

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method private calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 16

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget v12, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    div-double v6, v12, v14

    iget v12, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    div-double v8, v12, v14

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    double-to-int v2, v12

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-int v3, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v2, v12

    iput v12, v4, Landroid/graphics/Point;->x:I

    iput v3, v4, Landroid/graphics/Point;->y:I

    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v10, v12, v13

    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Point;->y:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, -0x2710

    const/16 v3, 0x7d2

    :try_start_0
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "TYPE_MINI_APP"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1040360

    const/4 v5, -0x3

    invoke-direct {v1, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x30

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v4, 0x20

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v4, "com.sec.android.app.minimode.res"

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ne v4, v6, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v6, :cond_1

    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    return-object v1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private endDrag()V
    .locals 10

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0, v3}, Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v2

    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v4, v6, v7}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(II)V

    new-instance v1, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v2, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(II)V

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$8;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$8;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->getLength()F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$9;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$9;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$10;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$10;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->getLength()F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/mms/replyservice/MiniModeService$11;

    invoke-direct {v7, p0}, Lcom/android/mms/replyservice/MiniModeService$11;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, v7, :cond_0

    :cond_3
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_0
.end method

.method private findBodyView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getFocusedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    return-object v0
.end method

.method private handleClose(I)V
    .locals 3

    const-string v0, "Mms/MiniModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClose() : reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->onClose(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->isNeededToSave(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/mms/replyservice/MiniModeService;->onSaveInstanceState(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->dismiss()V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->stopSelf()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private initAlarmEventListener()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/mms/replyservice/MiniModeService$6;

    invoke-direct {v2, p0}, Lcom/android/mms/replyservice/MiniModeService$6;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/mms/replyservice/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/mms/replyservice/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private initFloatingAnimations()V
    .locals 11

    const-wide/16 v9, 0x96

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$13;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/MiniModeService$13;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$14;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/MiniModeService$14;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initOverlayFrameWindow()V
    .locals 14

    const/16 v13, 0xb

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x2

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f030001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x835

    const v7, 0x1040368

    const/4 v8, -0x3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f02000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v6, 0x7f080002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x6

    iget v6, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x7

    iget v6, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$17;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$17;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/android/mms/replyservice/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    invoke-direct {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$18;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$18;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBarTouchListener:Lcom/android/mms/replyservice/MiniModeService$MinimizedBarTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$19;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$19;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v6, Lcom/android/mms/replyservice/MiniModeService$20;

    invoke-direct {v6, p0}, Lcom/android/mms/replyservice/MiniModeService$20;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initTelephonyEventListener()V
    .locals 7

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/mms/replyservice/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$4;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/MiniModeService$4;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    const-class v4, Landroid/content/Context;

    const-string v5, "TELEPHONY_SERVICE_2"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/mms/replyservice/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    new-instance v4, Lcom/android/mms/replyservice/MiniModeService$5;

    invoke-direct {v4, p0}, Lcom/android/mms/replyservice/MiniModeService$5;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v2

    const-string v4, "Mms/MiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiniApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "Mms/MiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiniApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1

    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method private initWindowEventListeners()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    new-instance v1, Lcom/android/mms/replyservice/MiniModeService$12;

    invoke-direct {v1, p0}, Lcom/android/mms/replyservice/MiniModeService$12;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    return-void
.end method

.method private isNeededToSave(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadResizeInfo()V
    .locals 14

    const/4 v13, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    iget-object v4, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v7, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :try_start_1
    iget-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_3

    sget-object v10, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MINIMUM_SIZE_W:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    :cond_0
    sget-object v10, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MINIMUM_SIZE_H:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    :cond_1
    sget-object v10, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MAXIMUM_SIZE_W:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    :cond_2
    sget-object v10, Lcom/android/mms/replyservice/MiniModeService;->WINDOW_MAXIMUM_SIZE_H:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    float-to-int v2, v10

    :cond_3
    :goto_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/mms/replyservice/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    :cond_4
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private setPopupSlideAnimation(Landroid/view/View;)V
    .locals 5

    sget v1, Lcom/android/mms/replyservice/MiniModeService;->ANIMATION_POPUP_Y_START:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private shiftDownMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private shiftMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private startDrag()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    :goto_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mStartDrag:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    goto :goto_0
.end method


# virtual methods
.method protected closeOtherMiniApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->closeOthers()V

    return-void
.end method

.method public dismiss()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mDismissed:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iput-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    iput-boolean v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mDismissed:Z

    sget-boolean v3, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->removePosition()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    invoke-virtual {p0, v7}, Lcom/android/mms/replyservice/MiniModeService;->stopForeground(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected enableBg(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mBgEnabled:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->postInvalidate()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mBgEnabled:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/app/minimode/MainView;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected enableDim(Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z

    if-eq v1, p1, :cond_1

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewWidth:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOldDecorViewHeight:I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimEnabled:Z

    return-void

    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public enableDragRestriction(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/mms/replyservice/MiniModeService;->mIsDragRestricted:Z

    return-void
.end method

.method public enableMinimizeFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    return-void
.end method

.method public enableResizeFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    return-void
.end method

.method public enableResizeHandler(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    goto :goto_0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDecorationPadding()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected getDisplayRect()Landroid/graphics/Rect;
    .locals 7

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v2, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    return-object v0
.end method

.method protected getFocusedComponentName()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMainActivityComponent()Landroid/content/ComponentName;
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.sec.minimode.main_activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing main.app"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    return-object v0
.end method

.method protected getMiniAppRect()Landroid/graphics/Rect;
    .locals 7

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-boolean v5, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mIsMinimized:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/mms/replyservice/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManger()Landroid/view/WindowManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    return v0
.end method

.method public hide()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    sget-boolean v3, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-boolean v3, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public isFirstShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method public isWindowAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    return v0
.end method

.method public isWindowDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDismissed:Z

    return v0
.end method

.method public move(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClose(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v6, "Mms/MiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged( newConfig = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mCurrentOrientation:I

    if-eq v6, v7, :cond_5

    sget-boolean v6, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->loadResizeInfo()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/replyservice/MiniModeService;->calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v1, v4}, Lcom/android/mms/replyservice/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v3, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->x:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v3, Lcom/android/mms/replyservice/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastFocus:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    :cond_5
    :goto_1
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mCurrentOrientation:I

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->updatePosition(II)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/mms/replyservice/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMainActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.sec.android.app.minimode.res"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v4, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f03

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/minimode/MainView;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Lcom/sec/android/app/minimode/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAnimView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/replyservice/MiniModeService;->mIsTabletMode:Z

    sget-boolean v4, Lcom/android/mms/replyservice/MiniModeService;->mIsTabletMode:Z

    if-nez v4, :cond_0

    sput-boolean v7, Lcom/android/mms/replyservice/MiniModeService;->mHasStatusBar:Z

    :cond_0
    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v7, Lcom/android/mms/replyservice/MiniModeService;->mHasStatusBar:Z

    :cond_1
    sget-boolean v4, Lcom/android/mms/replyservice/MiniModeService;->mHasStatusBar:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStatusBarHeight:I

    :cond_2
    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    iget v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/mms/replyservice/MiniModeService$3;

    invoke-direct {v5, p0}, Lcom/android/mms/replyservice/MiniModeService$3;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->initWindowEventListeners()V

    sget-boolean v4, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->initOverlayFrameWindow()V

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->loadResizeInfo()V

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->initFloatingAnimations()V

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->initTelephonyEventListener()V

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->initAlarmEventListener()V

    return-void

    :catch_0
    move-exception v2

    const-string v4, "Mms/MiniModeService"

    const-string v5, "Error on get minimode res"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentHasBeenSet:Z

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MainView;->removeAllViews()V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAnimView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    :cond_3
    iput-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mContext:Landroid/content/Context;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Mms/MiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onMaximized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMinimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(I)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const-string v6, "Mms/MiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v6, "Mms/MiniModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand() : duplicated start command! just ignore. (mAttached="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v2, 0x0

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v7, "window.pos.x"

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v7, "window.pos.y"

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v7, -0x2710

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    sget-boolean v6, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_5

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x7

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mTouchListener:Lcom/android/mms/replyservice/MiniModeService$TouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    sget-boolean v6, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v6, :cond_8

    if-eqz v2, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_6
    iget-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mUseCustomResizeHandler:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x8

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x7

    iget v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->show()V

    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v6, 0x2

    goto/16 :goto_0
.end method

.method protected onWindowFocusChanged(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, -0x2

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x837

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_2
    return-void
.end method

.method public setClosingAnimation(I)V
    .locals 0

    return-void
.end method

.method public setContentView(IIII)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/replyservice/MiniModeService;->setContentView(IIIII)V

    return-void
.end method

.method public setContentView(IIIII)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v1, "Mms/MiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentView() : updated main id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    sget-boolean v1, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget v1, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v1, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/mms/replyservice/MiniModeService;->setContentViewInner(IIII)V

    return-void
.end method

.method public setContentView(Landroid/view/View;II)V
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/replyservice/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    return-void
.end method

.method public setContentView(Landroid/view/View;III)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/replyservice/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    return-void
.end method

.method public setContentView(Landroid/view/View;IIII)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Mms/MiniModeService"

    const-string v1, "setContentView() : contentView is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mBodyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget v0, p0, Lcom/android/mms/replyservice/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/mms/replyservice/MiniModeService;->setContentViewInner(IIII)V

    goto :goto_0
.end method

.method protected setContentViewInner(IIII)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentHasBeenSet:Z

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/mms/replyservice/MiniModeService$22;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/MiniModeService$22;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mTouchListener:Lcom/android/mms/replyservice/MiniModeService$TouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/android/mms/replyservice/MiniModeService$23;

    invoke-direct {v3, p0}, Lcom/android/mms/replyservice/MiniModeService$23;-><init>(Lcom/android/mms/replyservice/MiniModeService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mBodyView:Landroid/view/View;

    return-void
.end method

.method protected setCustomResizeHandler(Lcom/android/mms/replyservice/MiniModeService$Resizable;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 9

    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, -0x1

    sget-boolean v2, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mUseCustomResizeHandler:Z

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz p3, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result p3

    :cond_0
    sget-object v2, Lcom/android/mms/replyservice/MiniModeService$24;->$SwitchMap$com$android$mms$replyservice$MiniModeService$Resizable:[I

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeDirection:Lcom/android/mms/replyservice/MiniModeService$Resizable;

    invoke-virtual {v3}, Lcom/android/mms/replyservice/MiniModeService$Resizable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    const/16 v2, 0x55

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :pswitch_0
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    const/16 v2, 0x50

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    :cond_4
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDimAmount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/MiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/mms/replyservice/MiniModeService;->mAttached:Z

    iput-boolean v5, p0, Lcom/android/mms/replyservice/MiniModeService;->mDismissed:Z

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mCurrentOrientation:I

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/mms/replyservice/MiniModeService;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/replyservice/MiniModeService;->setPopupSlideAnimation(Landroid/view/View;)V

    sget-boolean v2, Lcom/android/mms/replyservice/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/replyservice/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/replyservice/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/mms/replyservice/MiniModeService;->setClosingAnimation(I)V

    iget-boolean v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v3, p0, Lcom/android/mms/replyservice/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method
