//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCTsfError {
    public struct FailedOperation: TCTsfErrorType {
        enum Code: String {
            case apiMetaParseFailed = "FailedOperation.ApiMetaParseFailed"
            case applicationCreateEsAtuhError = "FailedOperation.ApplicationCreateEsAtuhError"
            case applicationQueryFailed = "FailedOperation.ApplicationQueryFailed"
            case clusterCreateVpcFail = "FailedOperation.ClusterCreateVpcFail"
            case clusterQueryFailed = "FailedOperation.ClusterQueryFailed"
            case configApplicationQueryFailed = "FailedOperation.ConfigApplicationQueryFailed"
            case configCreateFailed = "FailedOperation.ConfigCreateFailed"
            case configGroupQueryFailed = "FailedOperation.ConfigGroupQueryFailed"
            case configNamespaceQueryFailed = "FailedOperation.ConfigNamespaceQueryFailed"
            case configQueryFailed = "FailedOperation.ConfigQueryFailed"
            case configReleaseQueryFailed = "FailedOperation.ConfigReleaseQueryFailed"
            case containergroupGroupHasrun = "FailedOperation.ContainergroupGroupHasrun"
            case containergroupGroupHasstop = "FailedOperation.ContainergroupGroupHasstop"
            case cvmCaeMasterHealthCheckConfigError = "FailedOperation.CvmCaeMasterHealthCheckConfigError"
            case gatewayRemoteCallError = "FailedOperation.GatewayRemoteCallError"
            case groupExists = "FailedOperation.GroupExists"
            case groupQueryFaild = "FailedOperation.GroupQueryFaild"
            case instanceDeleteFailed = "FailedOperation.InstanceDeleteFailed"
            case instanceQueryFailed = "FailedOperation.InstanceQueryFailed"
            case instanceResetError = "FailedOperation.InstanceResetError"
            case instanceResetTimeout = "FailedOperation.InstanceResetTimeout"
            case instanceUpdateFailed = "FailedOperation.InstanceUpdateFailed"
            case laneInfoDeleteConsulFailed = "FailedOperation.LaneInfoDeleteConsulFailed"
            case laneInfoGroupNotEmpty = "FailedOperation.LaneInfoGroupNotEmpty"
            case laneInfoReleaseConsulFailed = "FailedOperation.LaneInfoReleaseConsulFailed"
            case laneInfoReleaseMeshFailed = "FailedOperation.LaneInfoReleaseMeshFailed"
            case laneRuleEnableConsulFailed = "FailedOperation.LaneRuleEnableConsulFailed"
            case laneRuleMaxLimit = "FailedOperation.LaneRuleMaxLimit"
            case namespaceCreateFailed = "FailedOperation.NamespaceCreateFailed"
            case namespaceQueryFailed = "FailedOperation.NamespaceQueryFailed"
            case ratelimitConsulError = "FailedOperation.RatelimitConsulError"
            case serviceInsertFailed = "FailedOperation.ServiceInsertFailed"
            case serviceQueryFailed = "FailedOperation.ServiceQueryFailed"
            case taskCreateError = "FailedOperation.TaskCreateError"
            case taskDeleteError = "FailedOperation.TaskDeleteError"
            case taskOperationFailed = "FailedOperation.TaskOperationFailed"
            case taskOperationForbidden = "FailedOperation.TaskOperationForbidden"
            case taskPushError = "FailedOperation.TaskPushError"
            case taskQueryError = "FailedOperation.TaskQueryError"
            case taskTerminateFailed = "FailedOperation.TaskTerminateFailed"
            case taskUpdateError = "FailedOperation.TaskUpdateError"
            case tkeClusterCreateFailed = "FailedOperation.TkeClusterCreateFailed"
            case tkeClusterQueryFailed = "FailedOperation.TkeClusterQueryFailed"
            case tsfApmBusiLogCfgSchemaQueryError = "FailedOperation.TsfApmBusiLogCfgSchemaQueryError"
            case tsfApmBusiLogCfgWriteError = "FailedOperation.TsfApmBusiLogCfgWriteError"
            case tsfApmCtsdbClientRequestError = "FailedOperation.TsfApmCtsdbClientRequestError"
            case tsfCmonitorCtsdbClientRequestFail = "FailedOperation.TsfCmonitorCtsdbClientRequestFail"
            case tsfMonitorWaitedTimeout = "FailedOperation.TsfMonitorWaitedTimeout"
            case tsfPrivilegeError = "FailedOperation.TsfPrivilegeError"
            case unhandledException = "FailedOperation.UnhandledException"
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

        /// API元数据解析失败。
        public static var apiMetaParseFailed: FailedOperation {
            FailedOperation(.apiMetaParseFailed)
        }

        /// 创建应用，获取ES鉴权信息失败。
        public static var applicationCreateEsAtuhError: FailedOperation {
            FailedOperation(.applicationCreateEsAtuhError)
        }

        /// 应用查询失败。
        public static var applicationQueryFailed: FailedOperation {
            FailedOperation(.applicationQueryFailed)
        }

        /// 创建集群，开通VPC网络权限失败。
        public static var clusterCreateVpcFail: FailedOperation {
            FailedOperation(.clusterCreateVpcFail)
        }

        /// 查询集群失败。
        public static var clusterQueryFailed: FailedOperation {
            FailedOperation(.clusterQueryFailed)
        }

        /// 应用查询失败。
        public static var configApplicationQueryFailed: FailedOperation {
            FailedOperation(.configApplicationQueryFailed)
        }

        /// 配置项创建失败。
        public static var configCreateFailed: FailedOperation {
            FailedOperation(.configCreateFailed)
        }

        /// 部署组查询失败。
        public static var configGroupQueryFailed: FailedOperation {
            FailedOperation(.configGroupQueryFailed)
        }

        /// 命名空间查询失败。
        public static var configNamespaceQueryFailed: FailedOperation {
            FailedOperation(.configNamespaceQueryFailed)
        }

        /// 配置项查询失败。
        public static var configQueryFailed: FailedOperation {
            FailedOperation(.configQueryFailed)
        }

        /// 配置项发布信息查询失败。
        public static var configReleaseQueryFailed: FailedOperation {
            FailedOperation(.configReleaseQueryFailed)
        }

        /// 部署组处于运行状态，无法启动。
        public static var containergroupGroupHasrun: FailedOperation {
            FailedOperation(.containergroupGroupHasrun)
        }

        /// 部署组处于停止状态，无法执行此操作。
        public static var containergroupGroupHasstop: FailedOperation {
            FailedOperation(.containergroupGroupHasstop)
        }

        /// 健康检查配置失败。
        public static var cvmCaeMasterHealthCheckConfigError: FailedOperation {
            FailedOperation(.cvmCaeMasterHealthCheckConfigError)
        }

        /// 远端访问错误: %s。
        public static var gatewayRemoteCallError: FailedOperation {
            FailedOperation(.gatewayRemoteCallError)
        }

        /// 命名空间下存在部署组。
        public static var groupExists: FailedOperation {
            FailedOperation(.groupExists)
        }

        /// 部署组查询失败。
        public static var groupQueryFaild: FailedOperation {
            FailedOperation(.groupQueryFaild)
        }

        /// 机器实例删除失败。
        public static var instanceDeleteFailed: FailedOperation {
            FailedOperation(.instanceDeleteFailed)
        }

        /// 查询机器实例部分失败。
        public static var instanceQueryFailed: FailedOperation {
            FailedOperation(.instanceQueryFailed)
        }

        /// 重装系统失败，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var instanceResetError: FailedOperation {
            FailedOperation(.instanceResetError)
        }

        /// 重装系统，请求超时。
        public static var instanceResetTimeout: FailedOperation {
            FailedOperation(.instanceResetTimeout)
        }

        /// 机器实例更新失败。
        public static var instanceUpdateFailed: FailedOperation {
            FailedOperation(.instanceUpdateFailed)
        }

        /// 泳道从consul删除失败。
        public static var laneInfoDeleteConsulFailed: FailedOperation {
            FailedOperation(.laneInfoDeleteConsulFailed)
        }

        /// 新增关联部署组不能为空。
        public static var laneInfoGroupNotEmpty: FailedOperation {
            FailedOperation(.laneInfoGroupNotEmpty)
        }

        /// 泳道同步到consul失败。
        public static var laneInfoReleaseConsulFailed: FailedOperation {
            FailedOperation(.laneInfoReleaseConsulFailed)
        }

        /// 泳道发布到mesh失败。
        public static var laneInfoReleaseMeshFailed: FailedOperation {
            FailedOperation(.laneInfoReleaseMeshFailed)
        }

        /// 全链路灰度规则启用失败。
        public static var laneRuleEnableConsulFailed: FailedOperation {
            FailedOperation(.laneRuleEnableConsulFailed)
        }

        /// 用户全链路灰度规则最大100条。
        public static var laneRuleMaxLimit: FailedOperation {
            FailedOperation(.laneRuleMaxLimit)
        }

        /// 无法创建命名空间。
        public static var namespaceCreateFailed: FailedOperation {
            FailedOperation(.namespaceCreateFailed)
        }

        /// 命名空间查询失败。
        public static var namespaceQueryFailed: FailedOperation {
            FailedOperation(.namespaceQueryFailed)
        }

        /// 访问配置中心失败。
        public static var ratelimitConsulError: FailedOperation {
            FailedOperation(.ratelimitConsulError)
        }

        /// 服务数据库入库失败。
        public static var serviceInsertFailed: FailedOperation {
            FailedOperation(.serviceInsertFailed)
        }

        /// 服务查询失败。
        public static var serviceQueryFailed: FailedOperation {
            FailedOperation(.serviceQueryFailed)
        }

        /// 任务创建异常。
        public static var taskCreateError: FailedOperation {
            FailedOperation(.taskCreateError)
        }

        /// 任务删除异常。
        public static var taskDeleteError: FailedOperation {
            FailedOperation(.taskDeleteError)
        }

        /// 操作失败。
        public static var taskOperationFailed: FailedOperation {
            FailedOperation(.taskOperationFailed)
        }

        /// 禁止操作。
        public static var taskOperationForbidden: FailedOperation {
            FailedOperation(.taskOperationForbidden)
        }

        /// 任务下发异常。
        public static var taskPushError: FailedOperation {
            FailedOperation(.taskPushError)
        }

        /// 任务查询异常。
        public static var taskQueryError: FailedOperation {
            FailedOperation(.taskQueryError)
        }

        /// 停止任务失败。
        public static var taskTerminateFailed: FailedOperation {
            FailedOperation(.taskTerminateFailed)
        }

        /// 任务更新异常。
        public static var taskUpdateError: FailedOperation {
            FailedOperation(.taskUpdateError)
        }

        /// TKE 集群创建失败，%s。
        public static var tkeClusterCreateFailed: FailedOperation {
            FailedOperation(.tkeClusterCreateFailed)
        }

        /// TKE 集群查询失败。
        public static var tkeClusterQueryFailed: FailedOperation {
            FailedOperation(.tkeClusterQueryFailed)
        }

        /// TSF应用性能管理业务日志配置解析规则查询失败。
        public static var tsfApmBusiLogCfgSchemaQueryError: FailedOperation {
            FailedOperation(.tsfApmBusiLogCfgSchemaQueryError)
        }

        /// TSF应用性能管理业务日志配置数据库写入失败。
        public static var tsfApmBusiLogCfgWriteError: FailedOperation {
            FailedOperation(.tsfApmBusiLogCfgWriteError)
        }

        /// TSF应用性能管理CTSDB客户端调用失败。
        public static var tsfApmCtsdbClientRequestError: FailedOperation {
            FailedOperation(.tsfApmCtsdbClientRequestError)
        }

        /// ctsdb数据库请求失败。
        public static var tsfCmonitorCtsdbClientRequestFail: FailedOperation {
            FailedOperation(.tsfCmonitorCtsdbClientRequestFail)
        }

        /// TSF监控统计等待超时, 请稍后重试。
        public static var tsfMonitorWaitedTimeout: FailedOperation {
            FailedOperation(.tsfMonitorWaitedTimeout)
        }

        /// TSF权限模块异常，请联系系统管理员。。
        public static var tsfPrivilegeError: FailedOperation {
            FailedOperation(.tsfPrivilegeError)
        }

        /// 模块未处理异常。
        public static var unhandledException: FailedOperation {
            FailedOperation(.unhandledException)
        }

        public func asTsfError() -> TCTsfError {
            let code: TCTsfError.Code
            switch self.error {
            case .apiMetaParseFailed:
                code = .failedOperation_ApiMetaParseFailed
            case .applicationCreateEsAtuhError:
                code = .failedOperation_ApplicationCreateEsAtuhError
            case .applicationQueryFailed:
                code = .failedOperation_ApplicationQueryFailed
            case .clusterCreateVpcFail:
                code = .failedOperation_ClusterCreateVpcFail
            case .clusterQueryFailed:
                code = .failedOperation_ClusterQueryFailed
            case .configApplicationQueryFailed:
                code = .failedOperation_ConfigApplicationQueryFailed
            case .configCreateFailed:
                code = .failedOperation_ConfigCreateFailed
            case .configGroupQueryFailed:
                code = .failedOperation_ConfigGroupQueryFailed
            case .configNamespaceQueryFailed:
                code = .failedOperation_ConfigNamespaceQueryFailed
            case .configQueryFailed:
                code = .failedOperation_ConfigQueryFailed
            case .configReleaseQueryFailed:
                code = .failedOperation_ConfigReleaseQueryFailed
            case .containergroupGroupHasrun:
                code = .failedOperation_ContainergroupGroupHasrun
            case .containergroupGroupHasstop:
                code = .failedOperation_ContainergroupGroupHasstop
            case .cvmCaeMasterHealthCheckConfigError:
                code = .failedOperation_CvmCaeMasterHealthCheckConfigError
            case .gatewayRemoteCallError:
                code = .failedOperation_GatewayRemoteCallError
            case .groupExists:
                code = .failedOperation_GroupExists
            case .groupQueryFaild:
                code = .failedOperation_GroupQueryFaild
            case .instanceDeleteFailed:
                code = .failedOperation_InstanceDeleteFailed
            case .instanceQueryFailed:
                code = .failedOperation_InstanceQueryFailed
            case .instanceResetError:
                code = .failedOperation_InstanceResetError
            case .instanceResetTimeout:
                code = .failedOperation_InstanceResetTimeout
            case .instanceUpdateFailed:
                code = .failedOperation_InstanceUpdateFailed
            case .laneInfoDeleteConsulFailed:
                code = .failedOperation_LaneInfoDeleteConsulFailed
            case .laneInfoGroupNotEmpty:
                code = .failedOperation_LaneInfoGroupNotEmpty
            case .laneInfoReleaseConsulFailed:
                code = .failedOperation_LaneInfoReleaseConsulFailed
            case .laneInfoReleaseMeshFailed:
                code = .failedOperation_LaneInfoReleaseMeshFailed
            case .laneRuleEnableConsulFailed:
                code = .failedOperation_LaneRuleEnableConsulFailed
            case .laneRuleMaxLimit:
                code = .failedOperation_LaneRuleMaxLimit
            case .namespaceCreateFailed:
                code = .failedOperation_NamespaceCreateFailed
            case .namespaceQueryFailed:
                code = .failedOperation_NamespaceQueryFailed
            case .ratelimitConsulError:
                code = .failedOperation_RatelimitConsulError
            case .serviceInsertFailed:
                code = .failedOperation_ServiceInsertFailed
            case .serviceQueryFailed:
                code = .failedOperation_ServiceQueryFailed
            case .taskCreateError:
                code = .failedOperation_TaskCreateError
            case .taskDeleteError:
                code = .failedOperation_TaskDeleteError
            case .taskOperationFailed:
                code = .failedOperation_TaskOperationFailed
            case .taskOperationForbidden:
                code = .failedOperation_TaskOperationForbidden
            case .taskPushError:
                code = .failedOperation_TaskPushError
            case .taskQueryError:
                code = .failedOperation_TaskQueryError
            case .taskTerminateFailed:
                code = .failedOperation_TaskTerminateFailed
            case .taskUpdateError:
                code = .failedOperation_TaskUpdateError
            case .tkeClusterCreateFailed:
                code = .failedOperation_TkeClusterCreateFailed
            case .tkeClusterQueryFailed:
                code = .failedOperation_TkeClusterQueryFailed
            case .tsfApmBusiLogCfgSchemaQueryError:
                code = .failedOperation_TsfApmBusiLogCfgSchemaQueryError
            case .tsfApmBusiLogCfgWriteError:
                code = .failedOperation_TsfApmBusiLogCfgWriteError
            case .tsfApmCtsdbClientRequestError:
                code = .failedOperation_TsfApmCtsdbClientRequestError
            case .tsfCmonitorCtsdbClientRequestFail:
                code = .failedOperation_TsfCmonitorCtsdbClientRequestFail
            case .tsfMonitorWaitedTimeout:
                code = .failedOperation_TsfMonitorWaitedTimeout
            case .tsfPrivilegeError:
                code = .failedOperation_TsfPrivilegeError
            case .unhandledException:
                code = .failedOperation_UnhandledException
            }
            return TCTsfError(code, context: self.context)
        }
    }
}
