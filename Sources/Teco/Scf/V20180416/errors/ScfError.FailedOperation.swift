//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCScfError {
    public struct FailedOperation: TCScfErrorType {
        enum Code: String {
            case apiGateway = "FailedOperation.ApiGateway"
            case apigw = "FailedOperation.Apigw"
            case apmConfigInstanceId = "FailedOperation.ApmConfigInstanceId"
            case asyncEventStatus = "FailedOperation.AsyncEventStatus"
            case authFailure = "FailedOperation.AuthFailure"
            case callNetDeployFailed = "FailedOperation.CallNetDeployFailed"
            case callRoleFailed = "FailedOperation.CallRoleFailed"
            case clsServiceUnregistered = "FailedOperation.ClsServiceUnregistered"
            case copyAsyncRun = "FailedOperation.CopyAsyncRun"
            case copyFailed = "FailedOperation.CopyFailed"
            case copyFunction = "FailedOperation.CopyFunction"
            case cos = "FailedOperation.Cos"
            case createAlias = "FailedOperation.CreateAlias"
            case createFunction = "FailedOperation.CreateFunction"
            case createNamespace = "FailedOperation.CreateNamespace"
            case createTrigger = "FailedOperation.CreateTrigger"
            case debugModeStatus = "FailedOperation.DebugModeStatus"
            case debugModeUpdateTimeOutFail = "FailedOperation.DebugModeUpdateTimeOutFail"
            case deleteAlias = "FailedOperation.DeleteAlias"
            case deleteFunction = "FailedOperation.DeleteFunction"
            case deleteLayerVersion = "FailedOperation.DeleteLayerVersion"
            case deleteNamespace = "FailedOperation.DeleteNamespace"
            case deleteTrigger = "FailedOperation.DeleteTrigger"
            case functionNameStatusError = "FailedOperation.FunctionNameStatusError"
            case functionStatusError = "FailedOperation.FunctionStatusError"
            case functionVersionStatusNotActive = "FailedOperation.FunctionVersionStatusNotActive"
            case getAlias = "FailedOperation.GetAlias"
            case getFunctionAddress = "FailedOperation.GetFunctionAddress"
            case instanceNotFound = "FailedOperation.InstanceNotFound"
            case insufficientBalance = "FailedOperation.InsufficientBalance"
            case invokeFunction = "FailedOperation.InvokeFunction"
            case namespace = "FailedOperation.Namespace"
            case openService = "FailedOperation.OpenService"
            case operationConflict = "FailedOperation.OperationConflict"
            case provisionCreateTimer = "FailedOperation.ProvisionCreateTimer"
            case provisionDeleteTimer = "FailedOperation.ProvisionDeleteTimer"
            case provisionedExceedAvailable = "FailedOperation.ProvisionedExceedAvailable"
            case provisionedExceedReserved = "FailedOperation.ProvisionedExceedReserved"
            case provisionedInProgress = "FailedOperation.ProvisionedInProgress"
            case publishLayerVersion = "FailedOperation.PublishLayerVersion"
            case publishVersion = "FailedOperation.PublishVersion"
            case qcsRoleNotFound = "FailedOperation.QcsRoleNotFound"
            case reservedExceedTotal = "FailedOperation.ReservedExceedTotal"
            case reservedInProgress = "FailedOperation.ReservedInProgress"
            case serviceClosed = "FailedOperation.ServiceClosed"
            case topicNotExist = "FailedOperation.TopicNotExist"
            case totalConcurrencyMemoryInProgress = "FailedOperation.TotalConcurrencyMemoryInProgress"
            case unOpenedService = "FailedOperation.UnOpenedService"
            case updateAlias = "FailedOperation.UpdateAlias"
            case updateFunctionCode = "FailedOperation.UpdateFunctionCode"
            case updateFunctionConfiguration = "FailedOperation.UpdateFunctionConfiguration"
            case updateStatus = "FailedOperation.UpdateStatus"
            case updateTriggerStatus = "FailedOperation.UpdateTriggerStatus"
            case other = "FailedOperation"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// API网关触发器创建失败。
        public static var apiGateway: FailedOperation {
            FailedOperation(.apiGateway)
        }

        /// 创建触发器失败。
        public static var apigw: FailedOperation {
            FailedOperation(.apigw)
        }

        /// 获取Apm InstanceId失败。
        public static var apmConfigInstanceId: FailedOperation {
            FailedOperation(.apmConfigInstanceId)
        }

        /// 当前异步事件状态不支持此操作，请稍后重试。
        ///
        /// 异步事件状态可能为等待中、运行中、运行失败、已完成等，部分操作只允许作用于部分状态的事件，比如终止操作只能作用于运行中的事件。
        public static var asyncEventStatus: FailedOperation {
            FailedOperation(.asyncEventStatus)
        }

        /// 登录信息验证失败，token 验证失败。
        public static var authFailure: FailedOperation {
            FailedOperation(.authFailure)
        }

        /// 调用 NetDeploy 失败。
        public static var callNetDeployFailed: FailedOperation {
            FailedOperation(.callNetDeployFailed)
        }

        /// 请求role信息失败。
        public static var callRoleFailed: FailedOperation {
            FailedOperation(.callRoleFailed)
        }

        /// CLS服务未注册。
        public static var clsServiceUnregistered: FailedOperation {
            FailedOperation(.clsServiceUnregistered)
        }

        /// CopyAsyncRun 传参异常。
        public static var copyAsyncRun: FailedOperation {
            FailedOperation(.copyAsyncRun)
        }

        /// 复制函数失败。
        public static var copyFailed: FailedOperation {
            FailedOperation(.copyFailed)
        }

        /// 不支持复制到该地域。
        public static var copyFunction: FailedOperation {
            FailedOperation(.copyFunction)
        }

        /// 操作COS资源失败。
        public static var cos: FailedOperation {
            FailedOperation(.cos)
        }

        /// 创建别名失败。
        public static var createAlias: FailedOperation {
            FailedOperation(.createAlias)
        }

        /// 操作失败。
        public static var createFunction: FailedOperation {
            FailedOperation(.createFunction)
        }

        /// 创建命名空间失败。
        public static var createNamespace: FailedOperation {
            FailedOperation(.createNamespace)
        }

        /// 当前函数状态无法进行此操作。
        public static var createTrigger: FailedOperation {
            FailedOperation(.createTrigger)
        }

        /// 当前调试状态无法执行此操作。
        public static var debugModeStatus: FailedOperation {
            FailedOperation(.debugModeStatus)
        }

        /// 调试状态下无法更新执行超时时间。
        public static var debugModeUpdateTimeOutFail: FailedOperation {
            FailedOperation(.debugModeUpdateTimeOutFail)
        }

        /// 删除别名失败。
        public static var deleteAlias: FailedOperation {
            FailedOperation(.deleteAlias)
        }

        /// 当前函数状态无法进行此操作，请在函数状态正常时重试。
        public static var deleteFunction: FailedOperation {
            FailedOperation(.deleteFunction)
        }

        /// 删除layer版本失败。
        public static var deleteLayerVersion: FailedOperation {
            FailedOperation(.deleteLayerVersion)
        }

        /// 无法删除默认Namespace。
        public static var deleteNamespace: FailedOperation {
            FailedOperation(.deleteNamespace)
        }

        /// 删除触发器失败。
        public static var deleteTrigger: FailedOperation {
            FailedOperation(.deleteTrigger)
        }

        /// 当前函数状态无法更新代码，请在状态为正常时更新。
        public static var functionNameStatusError: FailedOperation {
            FailedOperation(.functionNameStatusError)
        }

        /// 函数在部署中,无法做此操作。
        public static var functionStatusError: FailedOperation {
            FailedOperation(.functionStatusError)
        }

        /// 当前函数版本状态无法进行此操作，请在版本状态为正常时重试。
        public static var functionVersionStatusNotActive: FailedOperation {
            FailedOperation(.functionVersionStatusNotActive)
        }

        /// 获取别名信息失败。
        public static var getAlias: FailedOperation {
            FailedOperation(.getAlias)
        }

        /// 获取函数代码地址失败。
        public static var getFunctionAddress: FailedOperation {
            FailedOperation(.getFunctionAddress)
        }

        /// InstanceNotFound 实例不存在。
        public static var instanceNotFound: FailedOperation {
            FailedOperation(.instanceNotFound)
        }

        /// 当前账号或命名空间处于欠费状态，请在可用时重试。
        public static var insufficientBalance: FailedOperation {
            FailedOperation(.insufficientBalance)
        }

        /// 调用函数失败。
        public static var invokeFunction: FailedOperation {
            FailedOperation(.invokeFunction)
        }

        /// 命名空间已存在，请勿重复创建。
        public static var namespace: FailedOperation {
            FailedOperation(.namespace)
        }

        /// 服务开通失败。
        public static var openService: FailedOperation {
            FailedOperation(.openService)
        }

        /// 操作冲突。
        public static var operationConflict: FailedOperation {
            FailedOperation(.operationConflict)
        }

        /// 创建定时预置任务失败。
        public static var provisionCreateTimer: FailedOperation {
            FailedOperation(.provisionCreateTimer)
        }

        /// 删除定时预置任务失败。
        public static var provisionDeleteTimer: FailedOperation {
            FailedOperation(.provisionDeleteTimer)
        }

        /// 预置超过可用。
        public static var provisionedExceedAvailable: FailedOperation {
            FailedOperation(.provisionedExceedAvailable)
        }

        /// 预置超限。
        public static var provisionedExceedReserved: FailedOperation {
            FailedOperation(.provisionedExceedReserved)
        }

        /// 当前函数版本已有预置任务处于进行中，请稍后重试。
        public static var provisionedInProgress: FailedOperation {
            FailedOperation(.provisionedInProgress)
        }

        /// 发布layer版本失败。
        public static var publishLayerVersion: FailedOperation {
            FailedOperation(.publishLayerVersion)
        }

        /// 当前函数状态无法发布版本，请在状态为正常时发布。
        public static var publishVersion: FailedOperation {
            FailedOperation(.publishVersion)
        }

        /// 角色不存在。
        public static var qcsRoleNotFound: FailedOperation {
            FailedOperation(.qcsRoleNotFound)
        }

        /// ReservedExceedTotal 总保留超限。
        public static var reservedExceedTotal: FailedOperation {
            FailedOperation(.reservedExceedTotal)
        }

        /// 当前函数已有保留并发设置任务处于进行中，请稍后重试。
        public static var reservedInProgress: FailedOperation {
            FailedOperation(.reservedInProgress)
        }

        /// ServiceClosed 请确认后再操作。
        public static var serviceClosed: FailedOperation {
            FailedOperation(.serviceClosed)
        }

        /// Topic不存在。
        public static var topicNotExist: FailedOperation {
            FailedOperation(.topicNotExist)
        }

        /// 用户并发内存配额设置任务处于进行中，请稍后重试。
        public static var totalConcurrencyMemoryInProgress: FailedOperation {
            FailedOperation(.totalConcurrencyMemoryInProgress)
        }

        /// 指定的服务未开通，可以提交工单申请开通服务。
        public static var unOpenedService: FailedOperation {
            FailedOperation(.unOpenedService)
        }

        /// 更新别名失败。
        public static var updateAlias: FailedOperation {
            FailedOperation(.updateAlias)
        }

        /// 当前函数状态无法更新代码，请在状态为正常时更新。
        public static var updateFunctionCode: FailedOperation {
            FailedOperation(.updateFunctionCode)
        }

        /// UpdateFunctionConfiguration操作失败。
        public static var updateFunctionConfiguration: FailedOperation {
            FailedOperation(.updateFunctionConfiguration)
        }

        /// 更新状态操作失败。
        public static var updateStatus: FailedOperation {
            FailedOperation(.updateStatus)
        }

        /// 与原状态一致，无需更改。
        public static var updateTriggerStatus: FailedOperation {
            FailedOperation(.updateTriggerStatus)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .apiGateway:
                code = .failedOperation_ApiGateway
            case .apigw:
                code = .failedOperation_Apigw
            case .apmConfigInstanceId:
                code = .failedOperation_ApmConfigInstanceId
            case .asyncEventStatus:
                code = .failedOperation_AsyncEventStatus
            case .authFailure:
                code = .failedOperation_AuthFailure
            case .callNetDeployFailed:
                code = .failedOperation_CallNetDeployFailed
            case .callRoleFailed:
                code = .failedOperation_CallRoleFailed
            case .clsServiceUnregistered:
                code = .failedOperation_ClsServiceUnregistered
            case .copyAsyncRun:
                code = .failedOperation_CopyAsyncRun
            case .copyFailed:
                code = .failedOperation_CopyFailed
            case .copyFunction:
                code = .failedOperation_CopyFunction
            case .cos:
                code = .failedOperation_Cos
            case .createAlias:
                code = .failedOperation_CreateAlias
            case .createFunction:
                code = .failedOperation_CreateFunction
            case .createNamespace:
                code = .failedOperation_CreateNamespace
            case .createTrigger:
                code = .failedOperation_CreateTrigger
            case .debugModeStatus:
                code = .failedOperation_DebugModeStatus
            case .debugModeUpdateTimeOutFail:
                code = .failedOperation_DebugModeUpdateTimeOutFail
            case .deleteAlias:
                code = .failedOperation_DeleteAlias
            case .deleteFunction:
                code = .failedOperation_DeleteFunction
            case .deleteLayerVersion:
                code = .failedOperation_DeleteLayerVersion
            case .deleteNamespace:
                code = .failedOperation_DeleteNamespace
            case .deleteTrigger:
                code = .failedOperation_DeleteTrigger
            case .functionNameStatusError:
                code = .failedOperation_FunctionNameStatusError
            case .functionStatusError:
                code = .failedOperation_FunctionStatusError
            case .functionVersionStatusNotActive:
                code = .failedOperation_FunctionVersionStatusNotActive
            case .getAlias:
                code = .failedOperation_GetAlias
            case .getFunctionAddress:
                code = .failedOperation_GetFunctionAddress
            case .instanceNotFound:
                code = .failedOperation_InstanceNotFound
            case .insufficientBalance:
                code = .failedOperation_InsufficientBalance
            case .invokeFunction:
                code = .failedOperation_InvokeFunction
            case .namespace:
                code = .failedOperation_Namespace
            case .openService:
                code = .failedOperation_OpenService
            case .operationConflict:
                code = .failedOperation_OperationConflict
            case .provisionCreateTimer:
                code = .failedOperation_ProvisionCreateTimer
            case .provisionDeleteTimer:
                code = .failedOperation_ProvisionDeleteTimer
            case .provisionedExceedAvailable:
                code = .failedOperation_ProvisionedExceedAvailable
            case .provisionedExceedReserved:
                code = .failedOperation_ProvisionedExceedReserved
            case .provisionedInProgress:
                code = .failedOperation_ProvisionedInProgress
            case .publishLayerVersion:
                code = .failedOperation_PublishLayerVersion
            case .publishVersion:
                code = .failedOperation_PublishVersion
            case .qcsRoleNotFound:
                code = .failedOperation_QcsRoleNotFound
            case .reservedExceedTotal:
                code = .failedOperation_ReservedExceedTotal
            case .reservedInProgress:
                code = .failedOperation_ReservedInProgress
            case .serviceClosed:
                code = .failedOperation_ServiceClosed
            case .topicNotExist:
                code = .failedOperation_TopicNotExist
            case .totalConcurrencyMemoryInProgress:
                code = .failedOperation_TotalConcurrencyMemoryInProgress
            case .unOpenedService:
                code = .failedOperation_UnOpenedService
            case .updateAlias:
                code = .failedOperation_UpdateAlias
            case .updateFunctionCode:
                code = .failedOperation_UpdateFunctionCode
            case .updateFunctionConfiguration:
                code = .failedOperation_UpdateFunctionConfiguration
            case .updateStatus:
                code = .failedOperation_UpdateStatus
            case .updateTriggerStatus:
                code = .failedOperation_UpdateTriggerStatus
            case .other:
                code = .failedOperation
            }
            return TCScfError(code, context: self.context)
        }
    }
}
