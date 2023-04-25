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

extension TCTsfError {
    public struct InternalError: TCTsfErrorType {
        enum Code: String {
            case applicationMasterFeignError = "InternalError.ApplicationMasterFeignError"
            case applicationMasterNuknownError = "InternalError.ApplicationMasterNuknownError"
            case applicationRepoDeletePkg = "InternalError.ApplicationRepoDeletePkg"
            case applicationScalableInitError = "InternalError.ApplicationScalableInitError"
            case camRoleRequestError = "InternalError.CamRoleRequestError"
            case canNotConnConsulServer = "InternalError.CanNotConnConsulServer"
            case cloudApiProxyError = "InternalError.CloudApiProxyError"
            case clusterCommonError = "InternalError.ClusterCommonError"
            case clusterMasterFeignError = "InternalError.ClusterMasterFeignError"
            case clusterNotExistOrPrivilegeError = "InternalError.ClusterNotExistOrPrivilegeError"
            case consulServerError = "InternalError.ConsulServerError"
            case containergroupKuberneteApiInvokeError = "InternalError.ContainergroupKuberneteApiInvokeError"
            case containergroupKuberneteConnectError = "InternalError.ContainergroupKuberneteConnectError"
            case containergroupKuberneteDeploymentNotfound = "InternalError.ContainergroupKuberneteDeploymentNotfound"
            case containergroupSqlFailed = "InternalError.ContainergroupSqlFailed"
            case cpClusterUnavailable = "InternalError.CpClusterUnavailable"
            case cvmCaeMasterDispatchError = "InternalError.CvmCaeMasterDispatchError"
            case cvmCaeMasterInternalError = "InternalError.CvmCaeMasterInternalError"
            case cvmCaeMasterNonAlive = "InternalError.CvmCaeMasterNonAlive"
            case cvmCaeMasterQueryError = "InternalError.CvmCaeMasterQueryError"
            case dispatchCommonError = "InternalError.DispatchCommonError"
            case gatewayCommonError = "InternalError.GatewayCommonError"
            case gatewayConsistencyError = "InternalError.GatewayConsistencyError"
            case gatewayConsulError = "InternalError.GatewayConsulError"
            case gatewayDbError = "InternalError.GatewayDbError"
            case groupCommonError = "InternalError.GroupCommonError"
            case groupMasterNuknownError = "InternalError.GroupMasterNuknownError"
            case imagerepoTcrBindError = "InternalError.ImagerepoTcrBindError"
            case instanceCommonError = "InternalError.InstanceCommonError"
            case kubernetesApiCreateNamespacesError = "InternalError.KubernetesApiCreateNamespacesError"
            case kubernetesApiCreateSecretError = "InternalError.KubernetesApiCreateSecretError"
            case kubernetesCallError = "InternalError.KubernetesCallError"
            case remoteServiceCallError = "InternalError.RemoteServiceCallError"
            case runtimeError = "InternalError.RuntimeError"
            case sqlTooManyInItem = "InternalError.SqlTooManyInItem"
            case taskInternalError = "InternalError.TaskInternalError"
            case tkeApiFailedOperation = "InternalError.TkeApiFailedOperation"
            case tsfApmBusiLogCfgAppRelationMasterError = "InternalError.TsfApmBusiLogCfgAppRelationMasterError"
            case tsfApmCallTsfMsFailed = "InternalError.TsfApmCallTsfMsFailed"
            case tsfApmCommonError = "InternalError.TsfApmCommonError"
            case tsfApmEsResponseStatusException = "InternalError.TsfApmEsResponseStatusException"
            case tsfApmInternalError = "InternalError.TsfApmInternalError"
            case tsfMonitorDateParseFailed = "InternalError.TsfMonitorDateParseFailed"
            case tsfMonitorInternalError = "InternalError.TsfMonitorInternalError"
            case unhandledException = "InternalError.UnhandledException"
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

        /// 应用操作请求MASTER FEIGN失败。
        public static var applicationMasterFeignError: InternalError {
            InternalError(.applicationMasterFeignError)
        }

        /// 应用操作请求MASTER 操作失败。
        public static var applicationMasterNuknownError: InternalError {
            InternalError(.applicationMasterNuknownError)
        }

        /// 删除应用程序包请求仓库失败。
        public static var applicationRepoDeletePkg: InternalError {
            InternalError(.applicationRepoDeletePkg)
        }

        /// 创建应用初始化tsf-scalable请求失败。
        public static var applicationScalableInitError: InternalError {
            InternalError(.applicationScalableInitError)
        }

        /// TSF云API调用申请角色临时凭证调用请求失败。
        public static var camRoleRequestError: InternalError {
            InternalError(.camRoleRequestError)
        }

        /// 配置发布失败：无法连接配置中心服务器。
        public static var canNotConnConsulServer: InternalError {
            InternalError(.canNotConnConsulServer)
        }

        /// TSF云API请求调用失败。
        public static var cloudApiProxyError: InternalError {
            InternalError(.cloudApiProxyError)
        }

        /// 集群通用错误。
        public static var clusterCommonError: InternalError {
            InternalError(.clusterCommonError)
        }

        /// 虚拟机集群请求MASTER FEIGN失败。
        public static var clusterMasterFeignError: InternalError {
            InternalError(.clusterMasterFeignError)
        }

        /// 无法找到部署组，或相应集群/命名空间/应用的权限不足。
        public static var clusterNotExistOrPrivilegeError: InternalError {
            InternalError(.clusterNotExistOrPrivilegeError)
        }

        /// 配置发布失败：配置中心服务器处理失败。
        public static var consulServerError: InternalError {
            InternalError(.consulServerError)
        }

        /// 访问TKE服务失败。
        public static var containergroupKuberneteApiInvokeError: InternalError {
            InternalError(.containergroupKuberneteApiInvokeError)
        }

        /// 连接TKE服务失败。
        public static var containergroupKuberneteConnectError: InternalError {
            InternalError(.containergroupKuberneteConnectError)
        }

        /// Kubernetes deployment 未找到。
        public static var containergroupKuberneteDeploymentNotfound: InternalError {
            InternalError(.containergroupKuberneteDeploymentNotfound)
        }

        /// 容器应用SQL错误。
        public static var containergroupSqlFailed: InternalError {
            InternalError(.containergroupSqlFailed)
        }

        /// 容器平台集群不可用，当前状态 %s。
        public static var cpClusterUnavailable: InternalError {
            InternalError(.cpClusterUnavailable)
        }

        /// 命令下放失败。
        public static var cvmCaeMasterDispatchError: InternalError {
            InternalError(.cvmCaeMasterDispatchError)
        }

        /// TSF MASTER 内部执行错误。
        public static var cvmCaeMasterInternalError: InternalError {
            InternalError(.cvmCaeMasterInternalError)
        }

        /// MASTER通道查询失败。
        public static var cvmCaeMasterNonAlive: InternalError {
            InternalError(.cvmCaeMasterNonAlive)
        }

        /// 数据查询失败。
        public static var cvmCaeMasterQueryError: InternalError {
            InternalError(.cvmCaeMasterQueryError)
        }

        /// TSF暂时不能响应请求。。
        public static var dispatchCommonError: InternalError {
            InternalError(.dispatchCommonError)
        }

        /// 网关通用异常:%s。
        public static var gatewayCommonError: InternalError {
            InternalError(.gatewayCommonError)
        }

        /// 数据一致性异常:%s。
        public static var gatewayConsistencyError: InternalError {
            InternalError(.gatewayConsistencyError)
        }

        /// 配置中心访问异常。
        public static var gatewayConsulError: InternalError {
            InternalError(.gatewayConsulError)
        }

        /// 网关数据异常。
        public static var gatewayDbError: InternalError {
            InternalError(.gatewayDbError)
        }

        /// 部署组通用异常。
        public static var groupCommonError: InternalError {
            InternalError(.groupCommonError)
        }

        /// 部署组操作请求MASTER 操作失败。
        public static var groupMasterNuknownError: InternalError {
            InternalError(.groupMasterNuknownError)
        }

        /// tcr仓库绑定失败。
        public static var imagerepoTcrBindError: InternalError {
            InternalError(.imagerepoTcrBindError)
        }

        /// TSF节点管理通用错误信息。
        public static var instanceCommonError: InternalError {
            InternalError(.instanceCommonError)
        }

        /// 创建kubernetes命名空间失败。
        public static var kubernetesApiCreateNamespacesError: InternalError {
            InternalError(.kubernetesApiCreateNamespacesError)
        }

        /// 创建kubernetes密钥失败。
        public static var kubernetesApiCreateSecretError: InternalError {
            InternalError(.kubernetesApiCreateSecretError)
        }

        /// kubernetes api 调用失败。
        public static var kubernetesCallError: InternalError {
            InternalError(.kubernetesCallError)
        }

        /// 远程调用失败。
        public static var remoteServiceCallError: InternalError {
            InternalError(.remoteServiceCallError)
        }

        /// 仓库内部错误。
        public static var runtimeError: InternalError {
            InternalError(.runtimeError)
        }

        /// IN子句中超过1000个候选项。
        public static var sqlTooManyInItem: InternalError {
            InternalError(.sqlTooManyInItem)
        }

        /// 任务内部异常。
        public static var taskInternalError: InternalError {
            InternalError(.taskInternalError)
        }

        /// 调用 TKE 接口失败，%s。
        public static var tkeApiFailedOperation: InternalError {
            InternalError(.tkeApiFailedOperation)
        }

        /// TSF应用性能管理业务日志配置与应用关联处理错误。
        public static var tsfApmBusiLogCfgAppRelationMasterError: InternalError {
            InternalError(.tsfApmBusiLogCfgAppRelationMasterError)
        }

        /// TSF应用性能管理调用tsf-ms模块失败。
        public static var tsfApmCallTsfMsFailed: InternalError {
            InternalError(.tsfApmCallTsfMsFailed)
        }

        /// TSF应用性能管理通用异常。
        public static var tsfApmCommonError: InternalError {
            InternalError(.tsfApmCommonError)
        }

        /// TSF应用性能管理ES客户端响应状态异常。
        public static var tsfApmEsResponseStatusException: InternalError {
            InternalError(.tsfApmEsResponseStatusException)
        }

        /// TSF应用性能管理内部异常, 请稍后重试。
        public static var tsfApmInternalError: InternalError {
            InternalError(.tsfApmInternalError)
        }

        /// TSF监控统计时间日期解析失败。
        public static var tsfMonitorDateParseFailed: InternalError {
            InternalError(.tsfMonitorDateParseFailed)
        }

        /// TSF监控统计内部异常, 请稍后重试。
        public static var tsfMonitorInternalError: InternalError {
            InternalError(.tsfMonitorInternalError)
        }

        /// [%s]模块未处理异常。。
        public static var unhandledException: InternalError {
            InternalError(.unhandledException)
        }

        public func asTsfError() -> TCTsfError {
            let code: TCTsfError.Code
            switch self.error {
            case .applicationMasterFeignError:
                code = .internalError_ApplicationMasterFeignError
            case .applicationMasterNuknownError:
                code = .internalError_ApplicationMasterNuknownError
            case .applicationRepoDeletePkg:
                code = .internalError_ApplicationRepoDeletePkg
            case .applicationScalableInitError:
                code = .internalError_ApplicationScalableInitError
            case .camRoleRequestError:
                code = .internalError_CamRoleRequestError
            case .canNotConnConsulServer:
                code = .internalError_CanNotConnConsulServer
            case .cloudApiProxyError:
                code = .internalError_CloudApiProxyError
            case .clusterCommonError:
                code = .internalError_ClusterCommonError
            case .clusterMasterFeignError:
                code = .internalError_ClusterMasterFeignError
            case .clusterNotExistOrPrivilegeError:
                code = .internalError_ClusterNotExistOrPrivilegeError
            case .consulServerError:
                code = .internalError_ConsulServerError
            case .containergroupKuberneteApiInvokeError:
                code = .internalError_ContainergroupKuberneteApiInvokeError
            case .containergroupKuberneteConnectError:
                code = .internalError_ContainergroupKuberneteConnectError
            case .containergroupKuberneteDeploymentNotfound:
                code = .internalError_ContainergroupKuberneteDeploymentNotfound
            case .containergroupSqlFailed:
                code = .internalError_ContainergroupSqlFailed
            case .cpClusterUnavailable:
                code = .internalError_CpClusterUnavailable
            case .cvmCaeMasterDispatchError:
                code = .internalError_CvmCaeMasterDispatchError
            case .cvmCaeMasterInternalError:
                code = .internalError_CvmCaeMasterInternalError
            case .cvmCaeMasterNonAlive:
                code = .internalError_CvmCaeMasterNonAlive
            case .cvmCaeMasterQueryError:
                code = .internalError_CvmCaeMasterQueryError
            case .dispatchCommonError:
                code = .internalError_DispatchCommonError
            case .gatewayCommonError:
                code = .internalError_GatewayCommonError
            case .gatewayConsistencyError:
                code = .internalError_GatewayConsistencyError
            case .gatewayConsulError:
                code = .internalError_GatewayConsulError
            case .gatewayDbError:
                code = .internalError_GatewayDbError
            case .groupCommonError:
                code = .internalError_GroupCommonError
            case .groupMasterNuknownError:
                code = .internalError_GroupMasterNuknownError
            case .imagerepoTcrBindError:
                code = .internalError_ImagerepoTcrBindError
            case .instanceCommonError:
                code = .internalError_InstanceCommonError
            case .kubernetesApiCreateNamespacesError:
                code = .internalError_KubernetesApiCreateNamespacesError
            case .kubernetesApiCreateSecretError:
                code = .internalError_KubernetesApiCreateSecretError
            case .kubernetesCallError:
                code = .internalError_KubernetesCallError
            case .remoteServiceCallError:
                code = .internalError_RemoteServiceCallError
            case .runtimeError:
                code = .internalError_RuntimeError
            case .sqlTooManyInItem:
                code = .internalError_SqlTooManyInItem
            case .taskInternalError:
                code = .internalError_TaskInternalError
            case .tkeApiFailedOperation:
                code = .internalError_TkeApiFailedOperation
            case .tsfApmBusiLogCfgAppRelationMasterError:
                code = .internalError_TsfApmBusiLogCfgAppRelationMasterError
            case .tsfApmCallTsfMsFailed:
                code = .internalError_TsfApmCallTsfMsFailed
            case .tsfApmCommonError:
                code = .internalError_TsfApmCommonError
            case .tsfApmEsResponseStatusException:
                code = .internalError_TsfApmEsResponseStatusException
            case .tsfApmInternalError:
                code = .internalError_TsfApmInternalError
            case .tsfMonitorDateParseFailed:
                code = .internalError_TsfMonitorDateParseFailed
            case .tsfMonitorInternalError:
                code = .internalError_TsfMonitorInternalError
            case .unhandledException:
                code = .internalError_UnhandledException
            }
            return TCTsfError(code, context: self.context)
        }
    }
}
