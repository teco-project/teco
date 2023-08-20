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

import TecoCore

extension TCLighthouseError {
    public struct FailedOperation: TCLighthouseErrorType {
        enum Code: String {
            case createBlueprintFailed = "FailedOperation.CreateBlueprintFailed"
            case createDisksFailed = "FailedOperation.CreateDisksFailed"
            case createInstancesFailed = "FailedOperation.CreateInstancesFailed"
            case createKeyPairFailed = "FailedOperation.CreateKeyPairFailed"
            case deleteKeyPairFailed = "FailedOperation.DeleteKeyPairFailed"
            case describeBlueprintsFailed = "FailedOperation.DescribeBlueprintsFailed"
            case describeInstanceStatus = "FailedOperation.DescribeInstanceStatus"
            case describeInstancesModificationError = "FailedOperation.DescribeInstancesModificationError"
            case describeInstancesReturnableError = "FailedOperation.DescribeInstancesReturnableError"
            case describeInstancesTrafficPackagesFailed = "FailedOperation.DescribeInstancesTrafficPackagesFailed"
            case describeResourcesReturnableError = "FailedOperation.DescribeResourcesReturnableError"
            case destroyResourcesFailed = "FailedOperation.DestroyResourcesFailed"
            case dockerContainersListTooLarge = "FailedOperation.DockerContainersListTooLarge"
            case dockerOperationFailed = "FailedOperation.DockerOperationFailed"
            case firewallRulesOperationFailed = "FailedOperation.FirewallRulesOperationFailed"
            case importKeyPairFailed = "FailedOperation.ImportKeyPairFailed"
            case instanceOperationFailed = "FailedOperation.InstanceOperationFailed"
            case insufficientBalance = "FailedOperation.InsufficientBalance"
            case invalidCommandNotFound = "FailedOperation.InvalidCommandNotFound"
            case isolateResourcesFailed = "FailedOperation.IsolateResourcesFailed"
            case modifyInstancesBundleFailed = "FailedOperation.ModifyInstancesBundleFailed"
            case modifyResourcesAttributeFailed = "FailedOperation.ModifyResourcesAttributeFailed"
            case renewResourcesFailed = "FailedOperation.RenewResourcesFailed"
            case requestError = "FailedOperation.RequestError"
            case snapshotOperationFailed = "FailedOperation.SnapshotOperationFailed"
            case tatInvocationNotFinished = "FailedOperation.TATInvocationNotFinished"
            case tradeCallBillingGatewayFailed = "FailedOperation.TradeCallBillingGatewayFailed"
            case tradeGetPriceFailed = "FailedOperation.TradeGetPriceFailed"
            case unableToCreateBlueprint = "FailedOperation.UnableToCreateBlueprint"
            case unableToCreateInstances = "FailedOperation.UnableToCreateInstances"
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

        /// 创建镜像失败。
        public static var createBlueprintFailed: FailedOperation {
            FailedOperation(.createBlueprintFailed)
        }

        /// 创建云硬盘失败。
        public static var createDisksFailed: FailedOperation {
            FailedOperation(.createDisksFailed)
        }

        /// 创建实例失败。
        public static var createInstancesFailed: FailedOperation {
            FailedOperation(.createInstancesFailed)
        }

        /// 对密钥对的创建操作失败。
        public static var createKeyPairFailed: FailedOperation {
            FailedOperation(.createKeyPairFailed)
        }

        /// 对密钥对的删除操作失败。
        public static var deleteKeyPairFailed: FailedOperation {
            FailedOperation(.deleteKeyPairFailed)
        }

        /// 查询镜像失败，请稍后再试。
        public static var describeBlueprintsFailed: FailedOperation {
            FailedOperation(.describeBlueprintsFailed)
        }

        /// 查询实例状态错误。
        public static var describeInstanceStatus: FailedOperation {
            FailedOperation(.describeInstanceStatus)
        }

        /// 查询实例变配套餐失败。
        public static var describeInstancesModificationError: FailedOperation {
            FailedOperation(.describeInstancesModificationError)
        }

        /// 查询实例退还错误。
        public static var describeInstancesReturnableError: FailedOperation {
            FailedOperation(.describeInstancesReturnableError)
        }

        /// 查询流量包失败。
        public static var describeInstancesTrafficPackagesFailed: FailedOperation {
            FailedOperation(.describeInstancesTrafficPackagesFailed)
        }

        /// 查询资源返回了不符合要求内容。
        public static var describeResourcesReturnableError: FailedOperation {
            FailedOperation(.describeResourcesReturnableError)
        }

        /// 销毁资源失败，请稍后重新操作。
        public static var destroyResourcesFailed: FailedOperation {
            FailedOperation(.destroyResourcesFailed)
        }

        /// 容器列表过长。
        public static var dockerContainersListTooLarge: FailedOperation {
            FailedOperation(.dockerContainersListTooLarge)
        }

        /// 指定Docker环境操作失败, 请检查Docker环境。
        public static var dockerOperationFailed: FailedOperation {
            FailedOperation(.dockerOperationFailed)
        }

        /// 对防火墙规则的操作失败。
        public static var firewallRulesOperationFailed: FailedOperation {
            FailedOperation(.firewallRulesOperationFailed)
        }

        /// 对密钥对的导入操作失败。
        public static var importKeyPairFailed: FailedOperation {
            FailedOperation(.importKeyPairFailed)
        }

        /// 对实例的操作失败。
        public static var instanceOperationFailed: FailedOperation {
            FailedOperation(.instanceOperationFailed)
        }

        public static var insufficientBalance: FailedOperation {
            FailedOperation(.insufficientBalance)
        }

        /// 命令无法找到。
        public static var invalidCommandNotFound: FailedOperation {
            FailedOperation(.invalidCommandNotFound)
        }

        /// 退还资源失败。
        public static var isolateResourcesFailed: FailedOperation {
            FailedOperation(.isolateResourcesFailed)
        }

        /// 变更实例套餐失败。
        public static var modifyInstancesBundleFailed: FailedOperation {
            FailedOperation(.modifyInstancesBundleFailed)
        }

        /// 变更资源属性失败，请稍后重新操作。
        public static var modifyResourcesAttributeFailed: FailedOperation {
            FailedOperation(.modifyResourcesAttributeFailed)
        }

        /// 续费资源失败。
        public static var renewResourcesFailed: FailedOperation {
            FailedOperation(.renewResourcesFailed)
        }

        /// 请求错误。
        public static var requestError: FailedOperation {
            FailedOperation(.requestError)
        }

        /// 快照操作失败。
        public static var snapshotOperationFailed: FailedOperation {
            FailedOperation(.snapshotOperationFailed)
        }

        /// TAT命令未完成。
        public static var tatInvocationNotFinished: FailedOperation {
            FailedOperation(.tatInvocationNotFinished)
        }

        /// 调用计费网关服务失败，请稍后重新操作操作。
        public static var tradeCallBillingGatewayFailed: FailedOperation {
            FailedOperation(.tradeCallBillingGatewayFailed)
        }

        /// 计费询价失败。
        public static var tradeGetPriceFailed: FailedOperation {
            FailedOperation(.tradeGetPriceFailed)
        }

        /// 操作失败，不能创建自定义镜像。
        public static var unableToCreateBlueprint: FailedOperation {
            FailedOperation(.unableToCreateBlueprint)
        }

        /// 无法创建实例。
        ///
        /// 请稍后重试。
        public static var unableToCreateInstances: FailedOperation {
            FailedOperation(.unableToCreateInstances)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .createBlueprintFailed:
                code = .failedOperation_CreateBlueprintFailed
            case .createDisksFailed:
                code = .failedOperation_CreateDisksFailed
            case .createInstancesFailed:
                code = .failedOperation_CreateInstancesFailed
            case .createKeyPairFailed:
                code = .failedOperation_CreateKeyPairFailed
            case .deleteKeyPairFailed:
                code = .failedOperation_DeleteKeyPairFailed
            case .describeBlueprintsFailed:
                code = .failedOperation_DescribeBlueprintsFailed
            case .describeInstanceStatus:
                code = .failedOperation_DescribeInstanceStatus
            case .describeInstancesModificationError:
                code = .failedOperation_DescribeInstancesModificationError
            case .describeInstancesReturnableError:
                code = .failedOperation_DescribeInstancesReturnableError
            case .describeInstancesTrafficPackagesFailed:
                code = .failedOperation_DescribeInstancesTrafficPackagesFailed
            case .describeResourcesReturnableError:
                code = .failedOperation_DescribeResourcesReturnableError
            case .destroyResourcesFailed:
                code = .failedOperation_DestroyResourcesFailed
            case .dockerContainersListTooLarge:
                code = .failedOperation_DockerContainersListTooLarge
            case .dockerOperationFailed:
                code = .failedOperation_DockerOperationFailed
            case .firewallRulesOperationFailed:
                code = .failedOperation_FirewallRulesOperationFailed
            case .importKeyPairFailed:
                code = .failedOperation_ImportKeyPairFailed
            case .instanceOperationFailed:
                code = .failedOperation_InstanceOperationFailed
            case .insufficientBalance:
                code = .failedOperation_InsufficientBalance
            case .invalidCommandNotFound:
                code = .failedOperation_InvalidCommandNotFound
            case .isolateResourcesFailed:
                code = .failedOperation_IsolateResourcesFailed
            case .modifyInstancesBundleFailed:
                code = .failedOperation_ModifyInstancesBundleFailed
            case .modifyResourcesAttributeFailed:
                code = .failedOperation_ModifyResourcesAttributeFailed
            case .renewResourcesFailed:
                code = .failedOperation_RenewResourcesFailed
            case .requestError:
                code = .failedOperation_RequestError
            case .snapshotOperationFailed:
                code = .failedOperation_SnapshotOperationFailed
            case .tatInvocationNotFinished:
                code = .failedOperation_TATInvocationNotFinished
            case .tradeCallBillingGatewayFailed:
                code = .failedOperation_TradeCallBillingGatewayFailed
            case .tradeGetPriceFailed:
                code = .failedOperation_TradeGetPriceFailed
            case .unableToCreateBlueprint:
                code = .failedOperation_UnableToCreateBlueprint
            case .unableToCreateInstances:
                code = .failedOperation_UnableToCreateInstances
            case .other:
                code = .failedOperation
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
