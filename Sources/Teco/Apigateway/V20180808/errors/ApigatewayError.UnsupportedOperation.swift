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

extension TCApigatewayError {
    public struct UnsupportedOperation: TCApigatewayErrorType {
        enum Code: String {
            case accountArrears = "UnsupportedOperation.AccountArrears"
            case alreadyBindUsagePlan = "UnsupportedOperation.AlreadyBindUsagePlan"
            case attachPlugin = "UnsupportedOperation.AttachPlugin"
            case basicServiceNoMoreApi = "UnsupportedOperation.BasicServiceNoMoreApi"
            case clsSearchTime = "UnsupportedOperation.ClsSearchTime"
            case forceHttps = "UnsupportedOperation.ForceHttps"
            case invalidAction = "UnsupportedOperation.InvalidAction"
            case invalidEndpointType = "UnsupportedOperation.InvalidEndpointType"
            case invalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
            case invalidServiceTrade = "UnsupportedOperation.InvalidServiceTrade"
            case invalidStatus = "UnsupportedOperation.InvalidStatus"
            case modifyEIAMAuthApi = "UnsupportedOperation.ModifyEIAMAuthApi"
            case modifyNetType = "UnsupportedOperation.ModifyNetType"
            case modifyProtocol = "UnsupportedOperation.ModifyProtocol"
            case noUsagePlanEnv = "UnsupportedOperation.NoUsagePlanEnv"
            case reduceNetTypes = "UnsupportedOperation.ReduceNetTypes"
            case resourceAssociated = "UnsupportedOperation.ResourceAssociated"
            case resourceIsInUse = "UnsupportedOperation.ResourceIsInUse"
            case resourceUnassociated = "UnsupportedOperation.ResourceUnassociated"
            case uinNotInWhiteList = "UnsupportedOperation.UinNotInWhiteList"
            case unsupportedBindApiKey = "UnsupportedOperation.UnsupportedBindApiKey"
            case unsupportedBindEnvironment = "UnsupportedOperation.UnsupportedBindEnvironment"
            case unsupportedDeleteApi = "UnsupportedOperation.UnsupportedDeleteApi"
            case unsupportedDeleteService = "UnsupportedOperation.UnsupportedDeleteService"
            case unsupportedDeleteUpstream = "UnsupportedOperation.UnsupportedDeleteUpstream"
            case unsupportedNetType = "UnsupportedOperation.UnsupportedNetType"
            case unsupportedUnBindEnvironment = "UnsupportedOperation.UnsupportedUnBindEnvironment"
            case unsupportedUpdateApiKey = "UnsupportedOperation.UnsupportedUpdateApiKey"
            case usagePlanInUse = "UnsupportedOperation.UsagePlanInUse"
            case other = "UnsupportedOperation"
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

        /// 账号余额不足
        ///
        /// 建议给账号余额冲正后重试
        public static var accountArrears: UnsupportedOperation {
            UnsupportedOperation(.accountArrears)
        }

        /// 密钥已绑定使用计划。
        public static var alreadyBindUsagePlan: UnsupportedOperation {
            UnsupportedOperation(.alreadyBindUsagePlan)
        }

        /// 当前插件不支持绑定。
        public static var attachPlugin: UnsupportedOperation {
            UnsupportedOperation(.attachPlugin)
        }

        /// 基础版服务不能创建超过一个API。
        public static var basicServiceNoMoreApi: UnsupportedOperation {
            UnsupportedOperation(.basicServiceNoMoreApi)
        }

        /// 日志检索起始时间间隔。
        public static var clsSearchTime: UnsupportedOperation {
            UnsupportedOperation(.clsSearchTime)
        }

        /// 协议为HTTP时，不支持强制Https。
        public static var forceHttps: UnsupportedOperation {
            UnsupportedOperation(.forceHttps)
        }

        /// 接口错误。
        public static var invalidAction: UnsupportedOperation {
            UnsupportedOperation(.invalidAction)
        }

        /// 不支持后端类型。
        public static var invalidEndpointType: UnsupportedOperation {
            UnsupportedOperation(.invalidEndpointType)
        }

        /// 当前实例状态，不支持当前操作。
        public static var invalidInstanceState: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceState)
        }

        /// 当前服务处于隔离中，暂不支持此操作。
        public static var invalidServiceTrade: UnsupportedOperation {
            UnsupportedOperation(.invalidServiceTrade)
        }

        /// 当前密钥状态不支持此操作。
        public static var invalidStatus: UnsupportedOperation {
            UnsupportedOperation(.invalidStatus)
        }

        /// 不支持修改EIAM类型授权API。
        public static var modifyEIAMAuthApi: UnsupportedOperation {
            UnsupportedOperation(.modifyEIAMAuthApi)
        }

        /// 网络类型不支持修改。
        public static var modifyNetType: UnsupportedOperation {
            UnsupportedOperation(.modifyNetType)
        }

        /// 前端协议类型不支持修改。
        public static var modifyProtocol: UnsupportedOperation {
            UnsupportedOperation(.modifyProtocol)
        }

        /// 当前使用计划未绑定环境。
        public static var noUsagePlanEnv: UnsupportedOperation {
            UnsupportedOperation(.noUsagePlanEnv)
        }

        /// 不支持减少网络类型的操作。
        public static var reduceNetTypes: UnsupportedOperation {
            UnsupportedOperation(.reduceNetTypes)
        }

        /// 资源已关联，请先解除。
        public static var resourceAssociated: UnsupportedOperation {
            UnsupportedOperation(.resourceAssociated)
        }

        /// 密钥已绑定使用计划，请先解绑再试。
        public static var resourceIsInUse: UnsupportedOperation {
            UnsupportedOperation(.resourceIsInUse)
        }

        /// 资源未关联。
        public static var resourceUnassociated: UnsupportedOperation {
            UnsupportedOperation(.resourceUnassociated)
        }

        /// 当前Uin未在手工密钥白名单列表内。
        public static var uinNotInWhiteList: UnsupportedOperation {
            UnsupportedOperation(.uinNotInWhiteList)
        }

        /// 密钥已绑定使用计划。
        public static var unsupportedBindApiKey: UnsupportedOperation {
            UnsupportedOperation(.unsupportedBindApiKey)
        }

        /// 不支持绑定环境。
        public static var unsupportedBindEnvironment: UnsupportedOperation {
            UnsupportedOperation(.unsupportedBindEnvironment)
        }

        /// 当前API已绑定业务API，请先解绑再试。
        public static var unsupportedDeleteApi: UnsupportedOperation {
            UnsupportedOperation(.unsupportedDeleteApi)
        }

        /// 服务使用中，不能被删除。
        public static var unsupportedDeleteService: UnsupportedOperation {
            UnsupportedOperation(.unsupportedDeleteService)
        }

        /// 当前VPC通道存在绑定关系，不支持当前操作。
        public static var unsupportedDeleteUpstream: UnsupportedOperation {
            UnsupportedOperation(.unsupportedDeleteUpstream)
        }

        /// 不支持网络类型。
        public static var unsupportedNetType: UnsupportedOperation {
            UnsupportedOperation(.unsupportedNetType)
        }

        /// 不支持解绑环境，存在未绑定使用计划的API。
        public static var unsupportedUnBindEnvironment: UnsupportedOperation {
            UnsupportedOperation(.unsupportedUnBindEnvironment)
        }

        /// 当前密钥状态不支持此操作。
        public static var unsupportedUpdateApiKey: UnsupportedOperation {
            UnsupportedOperation(.unsupportedUpdateApiKey)
        }

        /// 当前使用计划在使用中，请先解绑再试。
        public static var usagePlanInUse: UnsupportedOperation {
            UnsupportedOperation(.usagePlanInUse)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .accountArrears:
                code = .unsupportedOperation_AccountArrears
            case .alreadyBindUsagePlan:
                code = .unsupportedOperation_AlreadyBindUsagePlan
            case .attachPlugin:
                code = .unsupportedOperation_AttachPlugin
            case .basicServiceNoMoreApi:
                code = .unsupportedOperation_BasicServiceNoMoreApi
            case .clsSearchTime:
                code = .unsupportedOperation_ClsSearchTime
            case .forceHttps:
                code = .unsupportedOperation_ForceHttps
            case .invalidAction:
                code = .unsupportedOperation_InvalidAction
            case .invalidEndpointType:
                code = .unsupportedOperation_InvalidEndpointType
            case .invalidInstanceState:
                code = .unsupportedOperation_InvalidInstanceState
            case .invalidServiceTrade:
                code = .unsupportedOperation_InvalidServiceTrade
            case .invalidStatus:
                code = .unsupportedOperation_InvalidStatus
            case .modifyEIAMAuthApi:
                code = .unsupportedOperation_ModifyEIAMAuthApi
            case .modifyNetType:
                code = .unsupportedOperation_ModifyNetType
            case .modifyProtocol:
                code = .unsupportedOperation_ModifyProtocol
            case .noUsagePlanEnv:
                code = .unsupportedOperation_NoUsagePlanEnv
            case .reduceNetTypes:
                code = .unsupportedOperation_ReduceNetTypes
            case .resourceAssociated:
                code = .unsupportedOperation_ResourceAssociated
            case .resourceIsInUse:
                code = .unsupportedOperation_ResourceIsInUse
            case .resourceUnassociated:
                code = .unsupportedOperation_ResourceUnassociated
            case .uinNotInWhiteList:
                code = .unsupportedOperation_UinNotInWhiteList
            case .unsupportedBindApiKey:
                code = .unsupportedOperation_UnsupportedBindApiKey
            case .unsupportedBindEnvironment:
                code = .unsupportedOperation_UnsupportedBindEnvironment
            case .unsupportedDeleteApi:
                code = .unsupportedOperation_UnsupportedDeleteApi
            case .unsupportedDeleteService:
                code = .unsupportedOperation_UnsupportedDeleteService
            case .unsupportedDeleteUpstream:
                code = .unsupportedOperation_UnsupportedDeleteUpstream
            case .unsupportedNetType:
                code = .unsupportedOperation_UnsupportedNetType
            case .unsupportedUnBindEnvironment:
                code = .unsupportedOperation_UnsupportedUnBindEnvironment
            case .unsupportedUpdateApiKey:
                code = .unsupportedOperation_UnsupportedUpdateApiKey
            case .usagePlanInUse:
                code = .unsupportedOperation_UsagePlanInUse
            case .other:
                code = .unsupportedOperation
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
