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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCMongodbError {
    public struct InvalidParameterValue: TCMongodbErrorType {
        enum Code: String {
            case backupFileNotFound = "InvalidParameterValue.BackupFileNotFound"
            case checkAppIdFailed = "InvalidParameterValue.CheckAppIdFailed"
            case clusterTypeError = "InvalidParameterValue.ClusterTypeError"
            case illegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
            case illegalInstanceStatus = "InvalidParameterValue.IllegalInstanceStatus"
            case illegalStatusToOffline = "InvalidParameterValue.IllegalStatusToOffline"
            case instanceHasBeenDeleted = "InvalidParameterValue.InstanceHasBeenDeleted"
            case instanceHasBeenIsolated = "InvalidParameterValue.InstanceHasBeenIsolated"
            case invalidTradeOperation = "InvalidParameterValue.InvalidTradeOperation"
            case lockFailed = "InvalidParameterValue.LockFailed"
            case machineTypeError = "InvalidParameterValue.MachineTypeError"
            case modifyModeError = "InvalidParameterValue.ModifyModeError"
            case mongoVersionError = "InvalidParameterValue.MongoVersionError"
            case mongoVersionNotSupportQueryClient = "InvalidParameterValue.MongoVersionNotSupportQueryClient"
            case nodeNotFoundInReplica = "InvalidParameterValue.NodeNotFoundInReplica"
            case notFoundInstance = "InvalidParameterValue.NotFoundInstance"
            case oplogSizeOutOfRange = "InvalidParameterValue.OplogSizeOutOfRange"
            case passwordRuleFailed = "InvalidParameterValue.PasswordRuleFailed"
            case postPaidInstanceBeyondLimit = "InvalidParameterValue.PostPaidInstanceBeyondLimit"
            case prePaidInstanceUnableToIsolate = "InvalidParameterValue.PrePaidInstanceUnableToIsolate"
            case projectNotFound = "InvalidParameterValue.ProjectNotFound"
            case proxyNotSupportQueryClient = "InvalidParameterValue.ProxyNotSupportQueryClient"
            case queryOutOfRange = "InvalidParameterValue.QueryOutOfRange"
            case queryTimeOutOfRange = "InvalidParameterValue.QueryTimeOutOfRange"
            case queryTimeRangeBeyondLimit = "InvalidParameterValue.QueryTimeRangeBeyondLimit"
            case regionError = "InvalidParameterValue.RegionError"
            case regionNotSupportOperation = "InvalidParameterValue.RegionNotSupportOperation"
            case regionNotSupportQueryClient = "InvalidParameterValue.RegionNotSupportQueryClient"
            case replicaNotFound = "InvalidParameterValue.ReplicaNotFound"
            case replicaSetNumError = "InvalidParameterValue.ReplicaSetNumError"
            case secondaryNumError = "InvalidParameterValue.SecondaryNumError"
            case securityGroupId = "InvalidParameterValue.SecurityGroupId"
            case setDiskLessThanUsed = "InvalidParameterValue.SetDiskLessThanUsed"
            case slowMSBelowLimit = "InvalidParameterValue.SlowMSBelowLimit"
            case specNotOnSale = "InvalidParameterValue.SpecNotOnSale"
            case startTimeNotBeforeThanEndTime = "InvalidParameterValue.StartTimeNotBeforeThanEndTime"
            case statusAbnormal = "InvalidParameterValue.StatusAbnormal"
            case tagNotFound = "InvalidParameterValue.TagNotFound"
            case userNotFound = "InvalidParameterValue.UserNotFound"
            case vpcIdOrSubnetIdNotFound = "InvalidParameterValue.VpcIdOrSubnetIdNotFound"
            case zoneClosed = "InvalidParameterValue.ZoneClosed"
            case zoneError = "InvalidParameterValue.ZoneError"
            case other = "InvalidParameterValue"
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

        /// 备份文件未找到。
        public static var backupFileNotFound: InvalidParameterValue {
            InvalidParameterValue(.backupFileNotFound)
        }

        /// appId校验失败。
        public static var checkAppIdFailed: InvalidParameterValue {
            InvalidParameterValue(.checkAppIdFailed)
        }

        /// 无效的实例类型。
        public static var clusterTypeError: InvalidParameterValue {
            InvalidParameterValue(.clusterTypeError)
        }

        /// 非法的实例名。
        public static var illegalInstanceName: InvalidParameterValue {
            InvalidParameterValue(.illegalInstanceName)
        }

        /// 非法的实例状态。
        public static var illegalInstanceStatus: InvalidParameterValue {
            InvalidParameterValue(.illegalInstanceStatus)
        }

        /// 实例状态不允许进行下线，进行下线操作的实例状态必须为隔离状态。
        public static var illegalStatusToOffline: InvalidParameterValue {
            InvalidParameterValue(.illegalStatusToOffline)
        }

        /// 实例已删除。
        public static var instanceHasBeenDeleted: InvalidParameterValue {
            InvalidParameterValue(.instanceHasBeenDeleted)
        }

        /// 实例已隔离。
        public static var instanceHasBeenIsolated: InvalidParameterValue {
            InvalidParameterValue(.instanceHasBeenIsolated)
        }

        /// 计费相关错误，不允许对当前实例进行对应的新购/续费/配置变更操作。
        public static var invalidTradeOperation: InvalidParameterValue {
            InvalidParameterValue(.invalidTradeOperation)
        }

        /// 实例锁定失败。
        public static var lockFailed: InvalidParameterValue {
            InvalidParameterValue(.lockFailed)
        }

        /// 错误的机型。
        public static var machineTypeError: InvalidParameterValue {
            InvalidParameterValue(.machineTypeError)
        }

        /// 内存和磁盘必须同时升配或降配。
        public static var modifyModeError: InvalidParameterValue {
            InvalidParameterValue(.modifyModeError)
        }

        /// 实例版本错误。
        public static var mongoVersionError: InvalidParameterValue {
            InvalidParameterValue(.mongoVersionError)
        }

        /// 实例版本不支持查询客户端信息。
        public static var mongoVersionNotSupportQueryClient: InvalidParameterValue {
            InvalidParameterValue(.mongoVersionNotSupportQueryClient)
        }

        /// 当前副本集/分片未找到该节点。
        public static var nodeNotFoundInReplica: InvalidParameterValue {
            InvalidParameterValue(.nodeNotFoundInReplica)
        }

        /// 未找到实例。
        public static var notFoundInstance: InvalidParameterValue {
            InvalidParameterValue(.notFoundInstance)
        }

        /// OplogSize参数设置错误，应介于磁盘容量的10%和90%之间。
        public static var oplogSizeOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.oplogSizeOutOfRange)
        }

        /// 密码不符合规范。
        public static var passwordRuleFailed: InvalidParameterValue {
            InvalidParameterValue(.passwordRuleFailed)
        }

        /// 单个地域后付费实例数量超过限制。
        public static var postPaidInstanceBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.postPaidInstanceBeyondLimit)
        }

        /// 预付费实例不支持销毁。
        public static var prePaidInstanceUnableToIsolate: InvalidParameterValue {
            InvalidParameterValue(.prePaidInstanceUnableToIsolate)
        }

        /// 项目不存在。
        public static var projectNotFound: InvalidParameterValue {
            InvalidParameterValue(.projectNotFound)
        }

        /// proxy版本不支持查询客户端信息，请联系工作人员进行升级。
        public static var proxyNotSupportQueryClient: InvalidParameterValue {
            InvalidParameterValue(.proxyNotSupportQueryClient)
        }

        /// 查询offset超出范围。
        public static var queryOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.queryOutOfRange)
        }

        /// 只能查询7天内的慢日志。
        public static var queryTimeOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.queryTimeOutOfRange)
        }

        /// 只能查询7天内的慢日志。
        public static var queryTimeRangeBeyondLimit: InvalidParameterValue {
            InvalidParameterValue(.queryTimeRangeBeyondLimit)
        }

        /// 无效的地域。
        public static var regionError: InvalidParameterValue {
            InvalidParameterValue(.regionError)
        }

        /// 当前地域尚不支持该操作。
        public static var regionNotSupportOperation: InvalidParameterValue {
            InvalidParameterValue(.regionNotSupportOperation)
        }

        /// 地域尚不支持查询客户端信息。
        public static var regionNotSupportQueryClient: InvalidParameterValue {
            InvalidParameterValue(.regionNotSupportQueryClient)
        }

        /// 未找到副本集/分片。
        public static var replicaNotFound: InvalidParameterValue {
            InvalidParameterValue(.replicaNotFound)
        }

        /// 副本集（分片）数量错误。
        public static var replicaSetNumError: InvalidParameterValue {
            InvalidParameterValue(.replicaSetNumError)
        }

        /// 从节点数错误。
        public static var secondaryNumError: InvalidParameterValue {
            InvalidParameterValue(.secondaryNumError)
        }

        /// 安全组ID无效。
        ///
        /// 请输入正确的安全组ID。
        public static var securityGroupId: InvalidParameterValue {
            InvalidParameterValue(.securityGroupId)
        }

        /// 设置的磁盘大小不得低于已用磁盘的1.2倍。
        public static var setDiskLessThanUsed: InvalidParameterValue {
            InvalidParameterValue(.setDiskLessThanUsed)
        }

        /// slowMS参数取值范围[100, 。
        public static var slowMSBelowLimit: InvalidParameterValue {
            InvalidParameterValue(.slowMSBelowLimit)
        }

        /// 购买规格错误。
        public static var specNotOnSale: InvalidParameterValue {
            InvalidParameterValue(.specNotOnSale)
        }

        /// 起始时间晚于结束时间。
        public static var startTimeNotBeforeThanEndTime: InvalidParameterValue {
            InvalidParameterValue(.startTimeNotBeforeThanEndTime)
        }

        /// 实例处于不允许操作的状态。
        public static var statusAbnormal: InvalidParameterValue {
            InvalidParameterValue(.statusAbnormal)
        }

        /// 未找到指定的标签。
        public static var tagNotFound: InvalidParameterValue {
            InvalidParameterValue(.tagNotFound)
        }

        /// 用户账户不存在。
        public static var userNotFound: InvalidParameterValue {
            InvalidParameterValue(.userNotFound)
        }

        /// 未找到虚拟网络（子网）。
        public static var vpcIdOrSubnetIdNotFound: InvalidParameterValue {
            InvalidParameterValue(.vpcIdOrSubnetIdNotFound)
        }

        /// 可用区已关闭售卖。
        public static var zoneClosed: InvalidParameterValue {
            InvalidParameterValue(.zoneClosed)
        }

        /// 无效的可用区。
        public static var zoneError: InvalidParameterValue {
            InvalidParameterValue(.zoneError)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asMongodbError() -> TCMongodbError {
            let code: TCMongodbError.Code
            switch self.error {
            case .backupFileNotFound:
                code = .invalidParameterValue_BackupFileNotFound
            case .checkAppIdFailed:
                code = .invalidParameterValue_CheckAppIdFailed
            case .clusterTypeError:
                code = .invalidParameterValue_ClusterTypeError
            case .illegalInstanceName:
                code = .invalidParameterValue_IllegalInstanceName
            case .illegalInstanceStatus:
                code = .invalidParameterValue_IllegalInstanceStatus
            case .illegalStatusToOffline:
                code = .invalidParameterValue_IllegalStatusToOffline
            case .instanceHasBeenDeleted:
                code = .invalidParameterValue_InstanceHasBeenDeleted
            case .instanceHasBeenIsolated:
                code = .invalidParameterValue_InstanceHasBeenIsolated
            case .invalidTradeOperation:
                code = .invalidParameterValue_InvalidTradeOperation
            case .lockFailed:
                code = .invalidParameterValue_LockFailed
            case .machineTypeError:
                code = .invalidParameterValue_MachineTypeError
            case .modifyModeError:
                code = .invalidParameterValue_ModifyModeError
            case .mongoVersionError:
                code = .invalidParameterValue_MongoVersionError
            case .mongoVersionNotSupportQueryClient:
                code = .invalidParameterValue_MongoVersionNotSupportQueryClient
            case .nodeNotFoundInReplica:
                code = .invalidParameterValue_NodeNotFoundInReplica
            case .notFoundInstance:
                code = .invalidParameterValue_NotFoundInstance
            case .oplogSizeOutOfRange:
                code = .invalidParameterValue_OplogSizeOutOfRange
            case .passwordRuleFailed:
                code = .invalidParameterValue_PasswordRuleFailed
            case .postPaidInstanceBeyondLimit:
                code = .invalidParameterValue_PostPaidInstanceBeyondLimit
            case .prePaidInstanceUnableToIsolate:
                code = .invalidParameterValue_PrePaidInstanceUnableToIsolate
            case .projectNotFound:
                code = .invalidParameterValue_ProjectNotFound
            case .proxyNotSupportQueryClient:
                code = .invalidParameterValue_ProxyNotSupportQueryClient
            case .queryOutOfRange:
                code = .invalidParameterValue_QueryOutOfRange
            case .queryTimeOutOfRange:
                code = .invalidParameterValue_QueryTimeOutOfRange
            case .queryTimeRangeBeyondLimit:
                code = .invalidParameterValue_QueryTimeRangeBeyondLimit
            case .regionError:
                code = .invalidParameterValue_RegionError
            case .regionNotSupportOperation:
                code = .invalidParameterValue_RegionNotSupportOperation
            case .regionNotSupportQueryClient:
                code = .invalidParameterValue_RegionNotSupportQueryClient
            case .replicaNotFound:
                code = .invalidParameterValue_ReplicaNotFound
            case .replicaSetNumError:
                code = .invalidParameterValue_ReplicaSetNumError
            case .secondaryNumError:
                code = .invalidParameterValue_SecondaryNumError
            case .securityGroupId:
                code = .invalidParameterValue_SecurityGroupId
            case .setDiskLessThanUsed:
                code = .invalidParameterValue_SetDiskLessThanUsed
            case .slowMSBelowLimit:
                code = .invalidParameterValue_SlowMSBelowLimit
            case .specNotOnSale:
                code = .invalidParameterValue_SpecNotOnSale
            case .startTimeNotBeforeThanEndTime:
                code = .invalidParameterValue_StartTimeNotBeforeThanEndTime
            case .statusAbnormal:
                code = .invalidParameterValue_StatusAbnormal
            case .tagNotFound:
                code = .invalidParameterValue_TagNotFound
            case .userNotFound:
                code = .invalidParameterValue_UserNotFound
            case .vpcIdOrSubnetIdNotFound:
                code = .invalidParameterValue_VpcIdOrSubnetIdNotFound
            case .zoneClosed:
                code = .invalidParameterValue_ZoneClosed
            case .zoneError:
                code = .invalidParameterValue_ZoneError
            case .other:
                code = .invalidParameterValue
            }
            return TCMongodbError(code, context: self.context)
        }
    }
}
