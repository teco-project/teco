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

extension TCMonitorError {
    public struct FailedOperation: TCMonitorErrorType {
        enum Code: String {
            case accessSTSFail = "FailedOperation.AccessSTSFail"
            case accessTKEFail = "FailedOperation.AccessTKEFail"
            case accessTagFail = "FailedOperation.AccessTagFail"
            case agentNotAllowed = "FailedOperation.AgentNotAllowed"
            case agentVersionNotSupported = "FailedOperation.AgentVersionNotSupported"
            case agentsNotInUninstallStage = "FailedOperation.AgentsNotInUninstallStage"
            case alertFilterRuleDeleteFailed = "FailedOperation.AlertFilterRuleDeleteFailed"
            case alertPolicyCreateFailed = "FailedOperation.AlertPolicyCreateFailed"
            case alertPolicyDeleteFailed = "FailedOperation.AlertPolicyDeleteFailed"
            case alertPolicyDescribeFailed = "FailedOperation.AlertPolicyDescribeFailed"
            case alertPolicyModifyFailed = "FailedOperation.AlertPolicyModifyFailed"
            case alertTriggerRuleDeleteFailed = "FailedOperation.AlertTriggerRuleDeleteFailed"
            case badYamlFormat = "FailedOperation.BadYamlFormat"
            case componentClientCommon = "FailedOperation.ComponentClientCommon"
            case componentClientHttp = "FailedOperation.ComponentClientHttp"
            case componentClientUnpack = "FailedOperation.ComponentClientUnpack"
            case createInstance = "FailedOperation.CreateInstance"
            case createInstanceLimited = "FailedOperation.CreateInstanceLimited"
            case dataColumnNotFound = "FailedOperation.DataColumnNotFound"
            case dataQueryFailed = "FailedOperation.DataQueryFailed"
            case dataTableNotFound = "FailedOperation.DataTableNotFound"
            case db = "FailedOperation.Db"
            case dbQueryFailed = "FailedOperation.DbQueryFailed"
            case dbRecordCreateFailed = "FailedOperation.DbRecordCreateFailed"
            case dbRecordDeleteFailed = "FailedOperation.DbRecordDeleteFailed"
            case dbRecordNotFound = "FailedOperation.DbRecordNotFound"
            case dbRecordUpdateFailed = "FailedOperation.DbRecordUpdateFailed"
            case dbTransactionBeginFailed = "FailedOperation.DbTransactionBeginFailed"
            case dbTransactionCommitFailed = "FailedOperation.DbTransactionCommitFailed"
            case dimQueryRequestFailed = "FailedOperation.DimQueryRequestFailed"
            case divisionByZero = "FailedOperation.DivisionByZero"
            case doHTTPTransferFailed = "FailedOperation.DoHTTPTransferFailed"
            case doTRPCTransferFailed = "FailedOperation.DoTRPCTransferFailed"
            case druidQueryFailed = "FailedOperation.DruidQueryFailed"
            case druidTableNotFound = "FailedOperation.DruidTableNotFound"
            case duplicateName = "FailedOperation.DuplicateName"
            case errNotOpen = "FailedOperation.ErrNotOpen"
            case errOwed = "FailedOperation.ErrOwed"
            case generateInstanceIDFailed = "FailedOperation.GenerateInstanceIDFailed"
            case instanceNotFound = "FailedOperation.InstanceNotFound"
            case instanceNotRunning = "FailedOperation.InstanceNotRunning"
            case internalError = "FailedOperation.InternalError"
            case kubeClientConf = "FailedOperation.KubeClientConf"
            case kubeCommon = "FailedOperation.KubeCommon"
            case regionUnavailable = "FailedOperation.RegionUnavailable"
            case resourceExist = "FailedOperation.ResourceExist"
            case resourceNotFound = "FailedOperation.ResourceNotFound"
            case resourceOperating = "FailedOperation.ResourceOperating"
            case sendRequest = "FailedOperation.SendRequest"
            case serviceNotEnabled = "FailedOperation.ServiceNotEnabled"
            case tkeClientAuthFail = "FailedOperation.TKEClientAuthFail"
            case tkeEndpointStatusError = "FailedOperation.TKEEndpointStatusError"
            case tkeResourceConflict = "FailedOperation.TKEResourceConflict"
            case zoneUnavailable = "FailedOperation.ZoneUnavailable"
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

        /// 访问STS失败。
        public static var accessSTSFail: FailedOperation {
            FailedOperation(.accessSTSFail)
        }

        /// 访问用户TKE集群失败。
        public static var accessTKEFail: FailedOperation {
            FailedOperation(.accessTKEFail)
        }

        /// 访问标签服务失败。
        public static var accessTagFail: FailedOperation {
            FailedOperation(.accessTagFail)
        }

        /// agent当前状态不允许该操作。
        public static var agentNotAllowed: FailedOperation {
            FailedOperation(.agentNotAllowed)
        }

        /// Agent版本不支持该操作，请升级Agent。
        public static var agentVersionNotSupported: FailedOperation {
            FailedOperation(.agentVersionNotSupported)
        }

        /// 该实例上有正在运行的Agent。
        public static var agentsNotInUninstallStage: FailedOperation {
            FailedOperation(.agentsNotInUninstallStage)
        }

        /// 删除过滤条件失败。
        public static var alertFilterRuleDeleteFailed: FailedOperation {
            FailedOperation(.alertFilterRuleDeleteFailed)
        }

        /// 创建告警策略失败。
        public static var alertPolicyCreateFailed: FailedOperation {
            FailedOperation(.alertPolicyCreateFailed)
        }

        /// 告警策略删除失败。
        public static var alertPolicyDeleteFailed: FailedOperation {
            FailedOperation(.alertPolicyDeleteFailed)
        }

        /// 告警策略查询失败。
        public static var alertPolicyDescribeFailed: FailedOperation {
            FailedOperation(.alertPolicyDescribeFailed)
        }

        /// 告警策略修改失败。
        public static var alertPolicyModifyFailed: FailedOperation {
            FailedOperation(.alertPolicyModifyFailed)
        }

        /// 删除触发条件失败。
        public static var alertTriggerRuleDeleteFailed: FailedOperation {
            FailedOperation(.alertTriggerRuleDeleteFailed)
        }

        /// Yaml 格式不正确。
        ///
        /// 修改您输入的 Yaml 数据
        public static var badYamlFormat: FailedOperation {
            FailedOperation(.badYamlFormat)
        }

        /// FailedOperation.ComponentClientCommon
        public static var componentClientCommon: FailedOperation {
            FailedOperation(.componentClientCommon)
        }

        /// FailedOperation.ComponentClientHttp
        public static var componentClientHttp: FailedOperation {
            FailedOperation(.componentClientHttp)
        }

        /// FailedOperation.ComponentClientUnpack
        public static var componentClientUnpack: FailedOperation {
            FailedOperation(.componentClientUnpack)
        }

        /// 创建实例失败。
        public static var createInstance: FailedOperation {
            FailedOperation(.createInstance)
        }

        /// 该账号创建实例被限制。
        public static var createInstanceLimited: FailedOperation {
            FailedOperation(.createInstanceLimited)
        }

        /// 数据表字段不存在。
        public static var dataColumnNotFound: FailedOperation {
            FailedOperation(.dataColumnNotFound)
        }

        /// 数据查询失败。
        public static var dataQueryFailed: FailedOperation {
            FailedOperation(.dataQueryFailed)
        }

        /// 数据表不存在。
        public static var dataTableNotFound: FailedOperation {
            FailedOperation(.dataTableNotFound)
        }

        /// FailedOperation.Db
        public static var db: FailedOperation {
            FailedOperation(.db)
        }

        /// 数据库查询失败。
        public static var dbQueryFailed: FailedOperation {
            FailedOperation(.dbQueryFailed)
        }

        /// 创建数据库记录失败。
        public static var dbRecordCreateFailed: FailedOperation {
            FailedOperation(.dbRecordCreateFailed)
        }

        /// 数据库记录删除失败。
        public static var dbRecordDeleteFailed: FailedOperation {
            FailedOperation(.dbRecordDeleteFailed)
        }

        /// FailedOperation.DbRecordNotFound
        public static var dbRecordNotFound: FailedOperation {
            FailedOperation(.dbRecordNotFound)
        }

        /// 数据库记录更新失败。
        public static var dbRecordUpdateFailed: FailedOperation {
            FailedOperation(.dbRecordUpdateFailed)
        }

        /// 数据库事务开始失败。
        public static var dbTransactionBeginFailed: FailedOperation {
            FailedOperation(.dbTransactionBeginFailed)
        }

        /// 数据库事务提交失败。
        public static var dbTransactionCommitFailed: FailedOperation {
            FailedOperation(.dbTransactionCommitFailed)
        }

        /// 请求维度查询服务失败。
        public static var dimQueryRequestFailed: FailedOperation {
            FailedOperation(.dimQueryRequestFailed)
        }

        /// 被除数为0。
        public static var divisionByZero: FailedOperation {
            FailedOperation(.divisionByZero)
        }

        /// 后端服务超时
        public static var doHTTPTransferFailed: FailedOperation {
            FailedOperation(.doHTTPTransferFailed)
        }

        /// DoTRPCTransferFailed
        public static var doTRPCTransferFailed: FailedOperation {
            FailedOperation(.doTRPCTransferFailed)
        }

        /// 查询分析数据失败。
        public static var druidQueryFailed: FailedOperation {
            FailedOperation(.druidQueryFailed)
        }

        /// druid表不存在。
        public static var druidTableNotFound: FailedOperation {
            FailedOperation(.druidTableNotFound)
        }

        /// 名字重复。
        public static var duplicateName: FailedOperation {
            FailedOperation(.duplicateName)
        }

        /// 未开通。
        public static var errNotOpen: FailedOperation {
            FailedOperation(.errNotOpen)
        }

        /// 欠费。
        public static var errOwed: FailedOperation {
            FailedOperation(.errOwed)
        }

        /// 生成资源ID错误。
        public static var generateInstanceIDFailed: FailedOperation {
            FailedOperation(.generateInstanceIDFailed)
        }

        /// 实例不存在。
        public static var instanceNotFound: FailedOperation {
            FailedOperation(.instanceNotFound)
        }

        /// 实例没有运行。
        public static var instanceNotRunning: FailedOperation {
            FailedOperation(.instanceNotRunning)
        }

        /// 内部服务错误。
        public static var internalError: FailedOperation {
            FailedOperation(.internalError)
        }

        /// FailedOperation.KubeClientConf
        public static var kubeClientConf: FailedOperation {
            FailedOperation(.kubeClientConf)
        }

        /// FailedOperation.KubeCommon
        public static var kubeCommon: FailedOperation {
            FailedOperation(.kubeCommon)
        }

        /// 地区不可用。
        public static var regionUnavailable: FailedOperation {
            FailedOperation(.regionUnavailable)
        }

        /// 资源已经存在。
        public static var resourceExist: FailedOperation {
            FailedOperation(.resourceExist)
        }

        /// 资源不存在。
        public static var resourceNotFound: FailedOperation {
            FailedOperation(.resourceNotFound)
        }

        /// 资源正在被操作。
        public static var resourceOperating: FailedOperation {
            FailedOperation(.resourceOperating)
        }

        /// 发送授权请求失败。
        public static var sendRequest: FailedOperation {
            FailedOperation(.sendRequest)
        }

        /// 服务未启用，开通服务后方可使用。
        public static var serviceNotEnabled: FailedOperation {
            FailedOperation(.serviceNotEnabled)
        }

        /// 没有访问TKE权限。
        public static var tkeClientAuthFail: FailedOperation {
            FailedOperation(.tkeClientAuthFail)
        }

        /// TKE的endpoint不可访问。
        public static var tkeEndpointStatusError: FailedOperation {
            FailedOperation(.tkeEndpointStatusError)
        }

        /// 更新TKE资源时出现冲突。
        public static var tkeResourceConflict: FailedOperation {
            FailedOperation(.tkeResourceConflict)
        }

        /// 可用区不可用。
        public static var zoneUnavailable: FailedOperation {
            FailedOperation(.zoneUnavailable)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .accessSTSFail:
                code = .failedOperation_AccessSTSFail
            case .accessTKEFail:
                code = .failedOperation_AccessTKEFail
            case .accessTagFail:
                code = .failedOperation_AccessTagFail
            case .agentNotAllowed:
                code = .failedOperation_AgentNotAllowed
            case .agentVersionNotSupported:
                code = .failedOperation_AgentVersionNotSupported
            case .agentsNotInUninstallStage:
                code = .failedOperation_AgentsNotInUninstallStage
            case .alertFilterRuleDeleteFailed:
                code = .failedOperation_AlertFilterRuleDeleteFailed
            case .alertPolicyCreateFailed:
                code = .failedOperation_AlertPolicyCreateFailed
            case .alertPolicyDeleteFailed:
                code = .failedOperation_AlertPolicyDeleteFailed
            case .alertPolicyDescribeFailed:
                code = .failedOperation_AlertPolicyDescribeFailed
            case .alertPolicyModifyFailed:
                code = .failedOperation_AlertPolicyModifyFailed
            case .alertTriggerRuleDeleteFailed:
                code = .failedOperation_AlertTriggerRuleDeleteFailed
            case .badYamlFormat:
                code = .failedOperation_BadYamlFormat
            case .componentClientCommon:
                code = .failedOperation_ComponentClientCommon
            case .componentClientHttp:
                code = .failedOperation_ComponentClientHttp
            case .componentClientUnpack:
                code = .failedOperation_ComponentClientUnpack
            case .createInstance:
                code = .failedOperation_CreateInstance
            case .createInstanceLimited:
                code = .failedOperation_CreateInstanceLimited
            case .dataColumnNotFound:
                code = .failedOperation_DataColumnNotFound
            case .dataQueryFailed:
                code = .failedOperation_DataQueryFailed
            case .dataTableNotFound:
                code = .failedOperation_DataTableNotFound
            case .db:
                code = .failedOperation_Db
            case .dbQueryFailed:
                code = .failedOperation_DbQueryFailed
            case .dbRecordCreateFailed:
                code = .failedOperation_DbRecordCreateFailed
            case .dbRecordDeleteFailed:
                code = .failedOperation_DbRecordDeleteFailed
            case .dbRecordNotFound:
                code = .failedOperation_DbRecordNotFound
            case .dbRecordUpdateFailed:
                code = .failedOperation_DbRecordUpdateFailed
            case .dbTransactionBeginFailed:
                code = .failedOperation_DbTransactionBeginFailed
            case .dbTransactionCommitFailed:
                code = .failedOperation_DbTransactionCommitFailed
            case .dimQueryRequestFailed:
                code = .failedOperation_DimQueryRequestFailed
            case .divisionByZero:
                code = .failedOperation_DivisionByZero
            case .doHTTPTransferFailed:
                code = .failedOperation_DoHTTPTransferFailed
            case .doTRPCTransferFailed:
                code = .failedOperation_DoTRPCTransferFailed
            case .druidQueryFailed:
                code = .failedOperation_DruidQueryFailed
            case .druidTableNotFound:
                code = .failedOperation_DruidTableNotFound
            case .duplicateName:
                code = .failedOperation_DuplicateName
            case .errNotOpen:
                code = .failedOperation_ErrNotOpen
            case .errOwed:
                code = .failedOperation_ErrOwed
            case .generateInstanceIDFailed:
                code = .failedOperation_GenerateInstanceIDFailed
            case .instanceNotFound:
                code = .failedOperation_InstanceNotFound
            case .instanceNotRunning:
                code = .failedOperation_InstanceNotRunning
            case .internalError:
                code = .failedOperation_InternalError
            case .kubeClientConf:
                code = .failedOperation_KubeClientConf
            case .kubeCommon:
                code = .failedOperation_KubeCommon
            case .regionUnavailable:
                code = .failedOperation_RegionUnavailable
            case .resourceExist:
                code = .failedOperation_ResourceExist
            case .resourceNotFound:
                code = .failedOperation_ResourceNotFound
            case .resourceOperating:
                code = .failedOperation_ResourceOperating
            case .sendRequest:
                code = .failedOperation_SendRequest
            case .serviceNotEnabled:
                code = .failedOperation_ServiceNotEnabled
            case .tkeClientAuthFail:
                code = .failedOperation_TKEClientAuthFail
            case .tkeEndpointStatusError:
                code = .failedOperation_TKEEndpointStatusError
            case .tkeResourceConflict:
                code = .failedOperation_TKEResourceConflict
            case .zoneUnavailable:
                code = .failedOperation_ZoneUnavailable
            case .other:
                code = .failedOperation
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
