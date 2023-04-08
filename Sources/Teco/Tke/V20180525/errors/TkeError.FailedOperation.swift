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

extension TCTkeError {
    public struct FailedOperation: TCTkeErrorType {
        enum Code: String {
            case accountCommon = "FailedOperation.AccountCommon"
            case accountUserNotAuthenticated = "FailedOperation.AccountUserNotAuthenticated"
            case asCommon = "FailedOperation.AsCommon"
            case camNoAuth = "FailedOperation.CamNoAuth"
            case clusterForbiddenToDelete = "FailedOperation.ClusterForbiddenToDelete"
            case clusterNotFound = "FailedOperation.ClusterNotFound"
            case clusterState = "FailedOperation.ClusterState"
            case clusterUpgradeNodeVersion = "FailedOperation.ClusterUpgradeNodeVersion"
            case componentClientCommon = "FailedOperation.ComponentClientCommon"
            case componentClientHttp = "FailedOperation.ComponentClientHttp"
            case componentClientUnpack = "FailedOperation.ComponentClientUnpack"
            case componentClinetHttp = "FailedOperation.ComponentClinetHttp"
            case createClsClient = "FailedOperation.CreateClsClient"
            case createClsConfig = "FailedOperation.CreateClsConfig"
            case createClsIndex = "FailedOperation.CreateClsIndex"
            case createClsLogSet = "FailedOperation.CreateClsLogSet"
            case createClsMachineGroup = "FailedOperation.CreateClsMachineGroup"
            case createClsTopic = "FailedOperation.CreateClsTopic"
            case cvmCommon = "FailedOperation.CvmCommon"
            case cvmNumberNotMatch = "FailedOperation.CvmNumberNotMatch"
            case cvmUnexpectedError = "FailedOperation.CVMUnexpectedError"
            case cvmVpcidNotMatch = "FailedOperation.CvmVpcidNotMatch"
            case db = "FailedOperation.Db"
            case dbRecordNotFound = "FailedOperation.DbRecordNotFound"
            case dfwGetUSGQuota = "FailedOperation.DfwGetUSGQuota"
            case disableVPCCNIFailed = "FailedOperation.DisableVPCCNIFailed"
            case enableVPCCNIFailed = "FailedOperation.EnableVPCCNIFailed"
            case getClsConfig = "FailedOperation.GetClsConfig"
            case getClsLogSet = "FailedOperation.GetClsLogSet"
            case getClsMachineGroup = "FailedOperation.GetClsMachineGroup"
            case kubeClientConf = "FailedOperation.KubeClientConf"
            case kubeClientConnection = "FailedOperation.KubeClientConnection"
            case kubeCommon = "FailedOperation.KubeCommon"
            case kubernetesClientBuildError = "FailedOperation.KubernetesClientBuildError"
            case kubernetesCreateOperationError = "FailedOperation.KubernetesCreateOperationError"
            case kubernetesDeleteOperationError = "FailedOperation.KubernetesDeleteOperationError"
            case kubernetesGetOperationError = "FailedOperation.KubernetesGetOperationError"
            case kubernetesInternal = "FailedOperation.KubernetesInternal"
            case kubernetesListOperationError = "FailedOperation.KubernetesListOperationError"
            case kubernetesPatchOperationError = "FailedOperation.KubernetesPatchOperationError"
            case lbCommon = "FailedOperation.LbCommon"
            case marketGetAuthFailed = "FailedOperation.MarketGetAuthFailed"
            case marketReleaseOperation = "FailedOperation.MarketReleaseOperation"
            case modifyClsIndex = "FailedOperation.ModifyClsIndex"
            case networkScaleError = "FailedOperation.NetworkScaleError"
            case osNotSupport = "FailedOperation.OsNotSupport"
            case param = "FailedOperation.Param"
            case policyServerCommonError = "FailedOperation.PolicyServerCommonError"
            case quotaMaxClsLimit = "FailedOperation.QuotaMaxClsLimit"
            case quotaMaxNodLimit = "FailedOperation.QuotaMaxNodLimit"
            case quotaUSGLimit = "FailedOperation.QuotaUSGLimit"
            case rbacForbidden = "FailedOperation.RBACForbidden"
            case recordNotFound = "FailedOperation.RecordNotFound"
            case taskAlreadyRunning = "FailedOperation.TaskAlreadyRunning"
            case taskLifeStateError = "FailedOperation.TaskLifeStateError"
            case tradeCommon = "FailedOperation.TradeCommon"
            case unexpectedError = "FailedOperation.UnexpectedError"
            case vpcCommon = "FailedOperation.VpcCommon"
            case vpcRecodrNotFound = "FailedOperation.VpcRecodrNotFound"
            case vpcUnexpectedError = "FailedOperation.VPCUnexpectedError"
            case whitelistUnexpectedError = "FailedOperation.WhitelistUnexpectedError"
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

        /// 获取用户认证信息失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var accountCommon: FailedOperation {
            FailedOperation(.accountCommon)
        }

        /// 账户未通过认证。
        ///
        /// 请提交工单联系我们协助处理
        public static var accountUserNotAuthenticated: FailedOperation {
            FailedOperation(.accountUserNotAuthenticated)
        }

        /// 伸缩组资源创建报错。
        ///
        /// 请提交工单联系我们协助处理
        public static var asCommon: FailedOperation {
            FailedOperation(.asCommon)
        }

        /// 无该接口CAM权限。
        ///
        /// 请提交工单联系我们协助处理
        public static var camNoAuth: FailedOperation {
            FailedOperation(.camNoAuth)
        }

        /// 集群禁止删除。
        ///
        /// 请先删除包年包月计费资源。
        public static var clusterForbiddenToDelete: FailedOperation {
            FailedOperation(.clusterForbiddenToDelete)
        }

        /// 集群未找到。
        ///
        /// 请提交工单联系我们协助处理
        public static var clusterNotFound: FailedOperation {
            FailedOperation(.clusterNotFound)
        }

        /// 集群状态错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var clusterState: FailedOperation {
            FailedOperation(.clusterState)
        }

        /// 集群节点版本过低。
        ///
        /// 请提交工单联系我们协助处理
        public static var clusterUpgradeNodeVersion: FailedOperation {
            FailedOperation(.clusterUpgradeNodeVersion)
        }

        /// 内部Client错误。
        ///
        /// 请向腾讯云提工单寻求支持。
        public static var componentClientCommon: FailedOperation {
            FailedOperation(.componentClientCommon)
        }

        /// 内部HTTP客户端错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var componentClientHttp: FailedOperation {
            FailedOperation(.componentClientHttp)
        }

        /// 内部HTTP解包失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var componentClientUnpack: FailedOperation {
            FailedOperation(.componentClientUnpack)
        }

        /// 请求(http请求)其他云服务失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var componentClinetHttp: FailedOperation {
            FailedOperation(.componentClinetHttp)
        }

        /// 创建CLS客户端失败。
        public static var createClsClient: FailedOperation {
            FailedOperation(.createClsClient)
        }

        /// 创建CLS采集配置失败。
        public static var createClsConfig: FailedOperation {
            FailedOperation(.createClsConfig)
        }

        /// 创建CLS索引失败。
        public static var createClsIndex: FailedOperation {
            FailedOperation(.createClsIndex)
        }

        /// 创建CLS日志集失败。
        public static var createClsLogSet: FailedOperation {
            FailedOperation(.createClsLogSet)
        }

        /// 创建CLS机器组失败。
        public static var createClsMachineGroup: FailedOperation {
            FailedOperation(.createClsMachineGroup)
        }

        /// 创建 CLS 主题失败。
        ///
        /// 请向腾讯云提工单寻求支持。
        public static var createClsTopic: FailedOperation {
            FailedOperation(.createClsTopic)
        }

        /// cvm创建节点报错。
        ///
        /// 请提交工单联系我们协助处理
        public static var cvmCommon: FailedOperation {
            FailedOperation(.cvmCommon)
        }

        /// 存在云服务器在CVM侧查询不到。
        ///
        /// 请提交工单联系我们协助处理
        public static var cvmNumberNotMatch: FailedOperation {
            FailedOperation(.cvmNumberNotMatch)
        }

        /// CVM未知错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var cvmUnexpectedError: FailedOperation {
            FailedOperation(.cvmUnexpectedError)
        }

        /// CVM 和 VPC ID 不匹配。
        ///
        /// 请提交工单联系我们协助处理
        public static var cvmVpcidNotMatch: FailedOperation {
            FailedOperation(.cvmVpcidNotMatch)
        }

        /// db错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var db: FailedOperation {
            FailedOperation(.db)
        }

        /// 记录未找到。
        ///
        /// 请提交工单联系我们协助处理
        public static var dbRecordNotFound: FailedOperation {
            FailedOperation(.dbRecordNotFound)
        }

        /// 获得安全组配额失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var dfwGetUSGQuota: FailedOperation {
            FailedOperation(.dfwGetUSGQuota)
        }

        /// 集群关闭 VPC-CNI 模式失败。
        public static var disableVPCCNIFailed: FailedOperation {
            FailedOperation(.disableVPCCNIFailed)
        }

        /// 开启 VPC-CNI 模式失败。
        public static var enableVPCCNIFailed: FailedOperation {
            FailedOperation(.enableVPCCNIFailed)
        }

        /// 获取CLS采集配置失败。
        public static var getClsConfig: FailedOperation {
            FailedOperation(.getClsConfig)
        }

        /// 查询主题集失败。
        ///
        /// 请向腾讯云提工单寻求支持。
        public static var getClsLogSet: FailedOperation {
            FailedOperation(.getClsLogSet)
        }

        /// 获取CLS机器组失败。
        public static var getClsMachineGroup: FailedOperation {
            FailedOperation(.getClsMachineGroup)
        }

        /// 通过配置文件创建集群Client错误。
        public static var kubeClientConf: FailedOperation {
            FailedOperation(.kubeClientConf)
        }

        /// 连接用户Kubernetes集群失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubeClientConnection: FailedOperation {
            FailedOperation(.kubeClientConnection)
        }

        /// KubernetesAPI错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubeCommon: FailedOperation {
            FailedOperation(.kubeCommon)
        }

        /// Kubernetes client建立失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubernetesClientBuildError: FailedOperation {
            FailedOperation(.kubernetesClientBuildError)
        }

        /// 创建集群Client出错。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubernetesCreateOperationError: FailedOperation {
            FailedOperation(.kubernetesCreateOperationError)
        }

        /// Kubernetes Delete 操作错误。
        ///
        /// 请重试。
        public static var kubernetesDeleteOperationError: FailedOperation {
            FailedOperation(.kubernetesDeleteOperationError)
        }

        /// 获取Kubernetes资源失败。
        public static var kubernetesGetOperationError: FailedOperation {
            FailedOperation(.kubernetesGetOperationError)
        }

        /// Kubernetes未知错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubernetesInternal: FailedOperation {
            FailedOperation(.kubernetesInternal)
        }

        /// 获取Kubernetes资源列表失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var kubernetesListOperationError: FailedOperation {
            FailedOperation(.kubernetesListOperationError)
        }

        /// Kubernetes patch 操作失败。
        ///
        /// 请重试。
        public static var kubernetesPatchOperationError: FailedOperation {
            FailedOperation(.kubernetesPatchOperationError)
        }

        /// 底层调用CLB未知错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var lbCommon: FailedOperation {
            FailedOperation(.lbCommon)
        }

        /// 获取集群认证信息失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var marketGetAuthFailed: FailedOperation {
            FailedOperation(.marketGetAuthFailed)
        }

        /// 操作应用Release失败。
        ///
        /// 请提交工单联系我们协助处理
        public static var marketReleaseOperation: FailedOperation {
            FailedOperation(.marketReleaseOperation)
        }

        /// 修改CLS索引失败。
        public static var modifyClsIndex: FailedOperation {
            FailedOperation(.modifyClsIndex)
        }

        /// 网络扩展错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var networkScaleError: FailedOperation {
            FailedOperation(.networkScaleError)
        }

        /// 镜像OS不支持。
        ///
        /// 请提交工单联系我们协助处理
        public static var osNotSupport: FailedOperation {
            FailedOperation(.osNotSupport)
        }

        /// 参数错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var param: FailedOperation {
            FailedOperation(.param)
        }

        /// gpe错误。
        public static var policyServerCommonError: FailedOperation {
            FailedOperation(.policyServerCommonError)
        }

        /// 超过配额限制。
        ///
        /// 请提交工单联系我们协助处理
        public static var quotaMaxClsLimit: FailedOperation {
            FailedOperation(.quotaMaxClsLimit)
        }

        /// 超过配额限制。
        ///
        /// 请提交工单联系我们协助处理
        public static var quotaMaxNodLimit: FailedOperation {
            FailedOperation(.quotaMaxNodLimit)
        }

        /// 安全组配额不足。
        ///
        /// 请提交工单联系我们协助处理
        public static var quotaUSGLimit: FailedOperation {
            FailedOperation(.quotaUSGLimit)
        }

        /// 子账户RBAC权限不足。
        public static var rbacForbidden: FailedOperation {
            FailedOperation(.rbacForbidden)
        }

        /// 记录没有发现。
        public static var recordNotFound: FailedOperation {
            FailedOperation(.recordNotFound)
        }

        /// 已有相同任务执行中。
        ///
        /// 请提交工单联系我们协助处理
        public static var taskAlreadyRunning: FailedOperation {
            FailedOperation(.taskAlreadyRunning)
        }

        /// 任务当前所处状态不支持此操作。
        ///
        /// 请提交工单联系我们协助处理
        public static var taskLifeStateError: FailedOperation {
            FailedOperation(.taskLifeStateError)
        }

        /// 询价错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var tradeCommon: FailedOperation {
            FailedOperation(.tradeCommon)
        }

        /// 不可预知的错误。
        public static var unexpectedError: FailedOperation {
            FailedOperation(.unexpectedError)
        }

        /// VPC报错。
        ///
        /// 请提交工单联系我们协助处理
        public static var vpcCommon: FailedOperation {
            FailedOperation(.vpcCommon)
        }

        /// 未发现vpc记录。
        ///
        /// 请提交工单联系我们协助处理
        public static var vpcRecodrNotFound: FailedOperation {
            FailedOperation(.vpcRecodrNotFound)
        }

        /// VPC未知错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var vpcUnexpectedError: FailedOperation {
            FailedOperation(.vpcUnexpectedError)
        }

        /// 白名单错误。
        ///
        /// 请提单申请。
        public static var whitelistUnexpectedError: FailedOperation {
            FailedOperation(.whitelistUnexpectedError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .accountCommon:
                code = .failedOperation_AccountCommon
            case .accountUserNotAuthenticated:
                code = .failedOperation_AccountUserNotAuthenticated
            case .asCommon:
                code = .failedOperation_AsCommon
            case .camNoAuth:
                code = .failedOperation_CamNoAuth
            case .clusterForbiddenToDelete:
                code = .failedOperation_ClusterForbiddenToDelete
            case .clusterNotFound:
                code = .failedOperation_ClusterNotFound
            case .clusterState:
                code = .failedOperation_ClusterState
            case .clusterUpgradeNodeVersion:
                code = .failedOperation_ClusterUpgradeNodeVersion
            case .componentClientCommon:
                code = .failedOperation_ComponentClientCommon
            case .componentClientHttp:
                code = .failedOperation_ComponentClientHttp
            case .componentClientUnpack:
                code = .failedOperation_ComponentClientUnpack
            case .componentClinetHttp:
                code = .failedOperation_ComponentClinetHttp
            case .createClsClient:
                code = .failedOperation_CreateClsClient
            case .createClsConfig:
                code = .failedOperation_CreateClsConfig
            case .createClsIndex:
                code = .failedOperation_CreateClsIndex
            case .createClsLogSet:
                code = .failedOperation_CreateClsLogSet
            case .createClsMachineGroup:
                code = .failedOperation_CreateClsMachineGroup
            case .createClsTopic:
                code = .failedOperation_CreateClsTopic
            case .cvmCommon:
                code = .failedOperation_CvmCommon
            case .cvmNumberNotMatch:
                code = .failedOperation_CvmNumberNotMatch
            case .cvmUnexpectedError:
                code = .failedOperation_CVMUnexpectedError
            case .cvmVpcidNotMatch:
                code = .failedOperation_CvmVpcidNotMatch
            case .db:
                code = .failedOperation_Db
            case .dbRecordNotFound:
                code = .failedOperation_DbRecordNotFound
            case .dfwGetUSGQuota:
                code = .failedOperation_DfwGetUSGQuota
            case .disableVPCCNIFailed:
                code = .failedOperation_DisableVPCCNIFailed
            case .enableVPCCNIFailed:
                code = .failedOperation_EnableVPCCNIFailed
            case .getClsConfig:
                code = .failedOperation_GetClsConfig
            case .getClsLogSet:
                code = .failedOperation_GetClsLogSet
            case .getClsMachineGroup:
                code = .failedOperation_GetClsMachineGroup
            case .kubeClientConf:
                code = .failedOperation_KubeClientConf
            case .kubeClientConnection:
                code = .failedOperation_KubeClientConnection
            case .kubeCommon:
                code = .failedOperation_KubeCommon
            case .kubernetesClientBuildError:
                code = .failedOperation_KubernetesClientBuildError
            case .kubernetesCreateOperationError:
                code = .failedOperation_KubernetesCreateOperationError
            case .kubernetesDeleteOperationError:
                code = .failedOperation_KubernetesDeleteOperationError
            case .kubernetesGetOperationError:
                code = .failedOperation_KubernetesGetOperationError
            case .kubernetesInternal:
                code = .failedOperation_KubernetesInternal
            case .kubernetesListOperationError:
                code = .failedOperation_KubernetesListOperationError
            case .kubernetesPatchOperationError:
                code = .failedOperation_KubernetesPatchOperationError
            case .lbCommon:
                code = .failedOperation_LbCommon
            case .marketGetAuthFailed:
                code = .failedOperation_MarketGetAuthFailed
            case .marketReleaseOperation:
                code = .failedOperation_MarketReleaseOperation
            case .modifyClsIndex:
                code = .failedOperation_ModifyClsIndex
            case .networkScaleError:
                code = .failedOperation_NetworkScaleError
            case .osNotSupport:
                code = .failedOperation_OsNotSupport
            case .param:
                code = .failedOperation_Param
            case .policyServerCommonError:
                code = .failedOperation_PolicyServerCommonError
            case .quotaMaxClsLimit:
                code = .failedOperation_QuotaMaxClsLimit
            case .quotaMaxNodLimit:
                code = .failedOperation_QuotaMaxNodLimit
            case .quotaUSGLimit:
                code = .failedOperation_QuotaUSGLimit
            case .rbacForbidden:
                code = .failedOperation_RBACForbidden
            case .recordNotFound:
                code = .failedOperation_RecordNotFound
            case .taskAlreadyRunning:
                code = .failedOperation_TaskAlreadyRunning
            case .taskLifeStateError:
                code = .failedOperation_TaskLifeStateError
            case .tradeCommon:
                code = .failedOperation_TradeCommon
            case .unexpectedError:
                code = .failedOperation_UnexpectedError
            case .vpcCommon:
                code = .failedOperation_VpcCommon
            case .vpcRecodrNotFound:
                code = .failedOperation_VpcRecodrNotFound
            case .vpcUnexpectedError:
                code = .failedOperation_VPCUnexpectedError
            case .whitelistUnexpectedError:
                code = .failedOperation_WhitelistUnexpectedError
            case .other:
                code = .failedOperation
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
