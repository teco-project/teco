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

extension TCTkeError {
    public struct InternalError: TCTkeErrorType {
        enum Code: String {
            case accountCommon = "InternalError.AccountCommon"
            case accountUserNotAuthenticated = "InternalError.AccountUserNotAuthenticated"
            case asCommon = "InternalError.AsCommon"
            case camNoAuth = "InternalError.CamNoAuth"
            case cidrConflictWithOtherCluster = "InternalError.CidrConflictWithOtherCluster"
            case cidrConflictWithOtherRoute = "InternalError.CidrConflictWithOtherRoute"
            case cidrConflictWithVpcCidr = "InternalError.CidrConflictWithVpcCidr"
            case cidrConflictWithVpcGlobalRoute = "InternalError.CidrConflictWithVpcGlobalRoute"
            case cidrInvali = "InternalError.CidrInvali"
            case cidrMaskSizeOutOfRange = "InternalError.CidrMaskSizeOutOfRange"
            case cidrOutOfRouteTable = "InternalError.CidrOutOfRouteTable"
            case clusterNotFound = "InternalError.ClusterNotFound"
            case clusterState = "InternalError.ClusterState"
            case clusterUpgradeNodeVersion = "InternalError.ClusterUpgradeNodeVersion"
            case cmdTimeout = "InternalError.CmdTimeout"
            case componentClientHttp = "InternalError.ComponentClientHttp"
            case componentClinetHttp = "InternalError.ComponentClinetHttp"
            case containerNotFound = "InternalError.ContainerNotFound"
            case createMasterFailed = "InternalError.CreateMasterFailed"
            case cvmCommon = "InternalError.CvmCommon"
            case cvmNotFound = "InternalError.CvmNotFound"
            case cvmNumberNotMatch = "InternalError.CvmNumberNotMatch"
            case cvmStatus = "InternalError.CvmStatus"
            case db = "InternalError.Db"
            case dbAffectivedRows = "InternalError.DbAffectivedRows"
            case dbRecordNotFound = "InternalError.DbRecordNotFound"
            case dfwGetUSGCount = "InternalError.DfwGetUSGCount"
            case dfwGetUSGQuota = "InternalError.DfwGetUSGQuota"
            case emptyClusterNotSupport = "InternalError.EmptyClusterNotSupport"
            case gatewayAlreadyAssociatedCidr = "InternalError.GatewayAlreadyAssociatedCidr"
            case imageIdNotFound = "InternalError.ImageIdNotFound"
            case initMasterFailed = "InternalError.InitMasterFailed"
            case invalidPrivateNetworkCidr = "InternalError.InvalidPrivateNetworkCidr"
            case kubeClientConnection = "InternalError.KubeClientConnection"
            case kubeClientCreate = "InternalError.KubeClientCreate"
            case kubeCommon = "InternalError.KubeCommon"
            case kubernetesClientBuildError = "InternalError.KubernetesClientBuildError"
            case kubernetesCreateOperationError = "InternalError.KubernetesCreateOperationError"
            case kubernetesDeleteOperationError = "InternalError.KubernetesDeleteOperationError"
            case kubernetesGetOperationError = "InternalError.KubernetesGetOperationError"
            case kubernetesInternal = "InternalError.KubernetesInternal"
            case kubernetesPatchOperationError = "InternalError.KubernetesPatchOperationError"
            case lbCommon = "InternalError.LbCommon"
            case osNotSupport = "InternalError.OsNotSupport"
            case param = "InternalError.Param"
            case podNotFound = "InternalError.PodNotFound"
            case publicClusterOpNotSupport = "InternalError.PublicClusterOpNotSupport"
            case quotaMaxClsLimit = "InternalError.QuotaMaxClsLimit"
            case quotaMaxNodLimit = "InternalError.QuotaMaxNodLimit"
            case quotaMaxRtLimit = "InternalError.QuotaMaxRtLimit"
            case quotaUSGLimit = "InternalError.QuotaUSGLimit"
            case resourceExistAlready = "InternalError.ResourceExistAlready"
            case routeTableNotEmpty = "InternalError.RouteTableNotEmpty"
            case routeTableNotFound = "InternalError.RouteTableNotFound"
            case taskAlreadyRunning = "InternalError.TaskAlreadyRunning"
            case taskCreateFailed = "InternalError.TaskCreateFailed"
            case taskLifeStateError = "InternalError.TaskLifeStateError"
            case taskNotFound = "InternalError.TaskNotFound"
            case tradeCommon = "InternalError.TradeCommon"
            case tradeInsufficientBalance = "InternalError.TradeInsufficientBalance"
            case unexceptedInternal = "InternalError.UnexceptedInternal"
            case unexpectedInternal = "InternalError.UnexpectedInternal"
            case vpcCommon = "InternalError.VpcCommon"
            case vpcPeerNotFound = "InternalError.VpcPeerNotFound"
            case vpcRecodrNotFound = "InternalError.VpcRecodrNotFound"
            case vpcUnexpectedError = "InternalError.VPCUnexpectedError"
            case vstationError = "InternalError.VstationError"
            case whitelistUnexpectedError = "InternalError.WhitelistUnexpectedError"
            case other = "InternalError"
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
        public static var accountCommon: InternalError {
            InternalError(.accountCommon)
        }

        /// 账户未通过认证。
        public static var accountUserNotAuthenticated: InternalError {
            InternalError(.accountUserNotAuthenticated)
        }

        /// 伸缩组资源创建报错。
        public static var asCommon: InternalError {
            InternalError(.asCommon)
        }

        /// 没有权限。
        public static var camNoAuth: InternalError {
            InternalError(.camNoAuth)
        }

        /// CIDR和其他集群CIDR冲突。
        public static var cidrConflictWithOtherCluster: InternalError {
            InternalError(.cidrConflictWithOtherCluster)
        }

        /// CIDR和其他路由冲突。
        public static var cidrConflictWithOtherRoute: InternalError {
            InternalError(.cidrConflictWithOtherRoute)
        }

        /// CIDR和vpc冲突。
        public static var cidrConflictWithVpcCidr: InternalError {
            InternalError(.cidrConflictWithVpcCidr)
        }

        /// CIDR和全局路由冲突。
        public static var cidrConflictWithVpcGlobalRoute: InternalError {
            InternalError(.cidrConflictWithVpcGlobalRoute)
        }

        /// CIDR无效。
        public static var cidrInvali: InternalError {
            InternalError(.cidrInvali)
        }

        /// CIDR掩码无效。
        public static var cidrMaskSizeOutOfRange: InternalError {
            InternalError(.cidrMaskSizeOutOfRange)
        }

        /// CIDR不在路由表之内。
        public static var cidrOutOfRouteTable: InternalError {
            InternalError(.cidrOutOfRouteTable)
        }

        /// 集群未找到。
        public static var clusterNotFound: InternalError {
            InternalError(.clusterNotFound)
        }

        /// 集群状态错误。
        public static var clusterState: InternalError {
            InternalError(.clusterState)
        }

        /// 集群节点版本过低。
        public static var clusterUpgradeNodeVersion: InternalError {
            InternalError(.clusterUpgradeNodeVersion)
        }

        /// 执行命令超时。
        public static var cmdTimeout: InternalError {
            InternalError(.cmdTimeout)
        }

        /// 内部HTTP客户端错误。
        public static var componentClientHttp: InternalError {
            InternalError(.componentClientHttp)
        }

        /// 请求(http请求)其他云服务失败。
        public static var componentClinetHttp: InternalError {
            InternalError(.componentClinetHttp)
        }

        /// 容器未找到。
        public static var containerNotFound: InternalError {
            InternalError(.containerNotFound)
        }

        /// 创建集群失败。
        public static var createMasterFailed: InternalError {
            InternalError(.createMasterFailed)
        }

        /// cvm创建节点报错。
        public static var cvmCommon: InternalError {
            InternalError(.cvmCommon)
        }

        /// cvm不存在。
        public static var cvmNotFound: InternalError {
            InternalError(.cvmNotFound)
        }

        /// 存在云服务器在CVM侧查询不到。
        public static var cvmNumberNotMatch: InternalError {
            InternalError(.cvmNumberNotMatch)
        }

        /// cvm状态不正常。
        public static var cvmStatus: InternalError {
            InternalError(.cvmStatus)
        }

        /// db错误。
        public static var db: InternalError {
            InternalError(.db)
        }

        /// DB错误。
        public static var dbAffectivedRows: InternalError {
            InternalError(.dbAffectivedRows)
        }

        /// 记录未找到。
        public static var dbRecordNotFound: InternalError {
            InternalError(.dbRecordNotFound)
        }

        /// 获得当前安全组总数失败。
        public static var dfwGetUSGCount: InternalError {
            InternalError(.dfwGetUSGCount)
        }

        /// 获得安全组配额失败。
        public static var dfwGetUSGQuota: InternalError {
            InternalError(.dfwGetUSGQuota)
        }

        /// 不支持空集群。
        public static var emptyClusterNotSupport: InternalError {
            InternalError(.emptyClusterNotSupport)
        }

        /// 下一跳地址已关联CIDR。
        public static var gatewayAlreadyAssociatedCidr: InternalError {
            InternalError(.gatewayAlreadyAssociatedCidr)
        }

        /// 镜像未找到。
        public static var imageIdNotFound: InternalError {
            InternalError(.imageIdNotFound)
        }

        /// 初始化master失败。
        public static var initMasterFailed: InternalError {
            InternalError(.initMasterFailed)
        }

        /// 无效CIDR。
        public static var invalidPrivateNetworkCidr: InternalError {
            InternalError(.invalidPrivateNetworkCidr)
        }

        /// 连接用户Kubernetes集群失败。
        public static var kubeClientConnection: InternalError {
            InternalError(.kubeClientConnection)
        }

        /// 创建集群Client出错。
        public static var kubeClientCreate: InternalError {
            InternalError(.kubeClientCreate)
        }

        /// KubernetesAPI错误。
        public static var kubeCommon: InternalError {
            InternalError(.kubeCommon)
        }

        /// kubernetes client建立失败。
        public static var kubernetesClientBuildError: InternalError {
            InternalError(.kubernetesClientBuildError)
        }

        /// 创建Kubernetes资源失败。
        public static var kubernetesCreateOperationError: InternalError {
            InternalError(.kubernetesCreateOperationError)
        }

        /// 删除Kubernetes资源失败。
        public static var kubernetesDeleteOperationError: InternalError {
            InternalError(.kubernetesDeleteOperationError)
        }

        /// 获取Kubernetes资源失败。
        public static var kubernetesGetOperationError: InternalError {
            InternalError(.kubernetesGetOperationError)
        }

        /// Kubernetes未知错误。
        ///
        /// 如果您是独立集群请检查集群master组件是否正常，如果您是托管集群请立即提工单给我们。
        public static var kubernetesInternal: InternalError {
            InternalError(.kubernetesInternal)
        }

        /// Kubernetes Patch操作失败。
        public static var kubernetesPatchOperationError: InternalError {
            InternalError(.kubernetesPatchOperationError)
        }

        /// 底层调用CLB未知错误。
        ///
        /// 请提交工单联系我们协助处理
        public static var lbCommon: InternalError {
            InternalError(.lbCommon)
        }

        /// 镜像OS不支持。
        public static var osNotSupport: InternalError {
            InternalError(.osNotSupport)
        }

        /// Param。
        public static var param: InternalError {
            InternalError(.param)
        }

        /// Pod未找到。
        public static var podNotFound: InternalError {
            InternalError(.podNotFound)
        }

        /// 集群不支持当前操作。
        public static var publicClusterOpNotSupport: InternalError {
            InternalError(.publicClusterOpNotSupport)
        }

        /// 超过配额限制。
        public static var quotaMaxClsLimit: InternalError {
            InternalError(.quotaMaxClsLimit)
        }

        /// 超过配额限制。
        public static var quotaMaxNodLimit: InternalError {
            InternalError(.quotaMaxNodLimit)
        }

        /// 超过配额限制。
        public static var quotaMaxRtLimit: InternalError {
            InternalError(.quotaMaxRtLimit)
        }

        /// 安全组配额不足。
        public static var quotaUSGLimit: InternalError {
            InternalError(.quotaUSGLimit)
        }

        /// 资源已存在。
        public static var resourceExistAlready: InternalError {
            InternalError(.resourceExistAlready)
        }

        /// 路由表非空。
        public static var routeTableNotEmpty: InternalError {
            InternalError(.routeTableNotEmpty)
        }

        /// 路由表不存在。
        public static var routeTableNotFound: InternalError {
            InternalError(.routeTableNotFound)
        }

        /// 已有相同任务执行中。
        ///
        /// 等待任务执行完毕
        public static var taskAlreadyRunning: InternalError {
            InternalError(.taskAlreadyRunning)
        }

        /// 创建任务失败。
        public static var taskCreateFailed: InternalError {
            InternalError(.taskCreateFailed)
        }

        /// 任务当前所处状态不支持此操作。
        public static var taskLifeStateError: InternalError {
            InternalError(.taskLifeStateError)
        }

        /// 任务未找到。
        public static var taskNotFound: InternalError {
            InternalError(.taskNotFound)
        }

        /// 询价错误。
        public static var tradeCommon: InternalError {
            InternalError(.tradeCommon)
        }

        /// 账户余额不足。
        public static var tradeInsufficientBalance: InternalError {
            InternalError(.tradeInsufficientBalance)
        }

        /// 内部错误。
        public static var unexceptedInternal: InternalError {
            InternalError(.unexceptedInternal)
        }

        /// 未知的内部错误。
        public static var unexpectedInternal: InternalError {
            InternalError(.unexpectedInternal)
        }

        /// VPC报错。
        public static var vpcCommon: InternalError {
            InternalError(.vpcCommon)
        }

        /// 对等连接不存在。
        public static var vpcPeerNotFound: InternalError {
            InternalError(.vpcPeerNotFound)
        }

        /// 未发现vpc记录。
        public static var vpcRecodrNotFound: InternalError {
            InternalError(.vpcRecodrNotFound)
        }

        /// VPC未知错误。
        public static var vpcUnexpectedError: InternalError {
            InternalError(.vpcUnexpectedError)
        }

        /// VstationError。
        public static var vstationError: InternalError {
            InternalError(.vstationError)
        }

        /// 白名单未知错误。
        public static var whitelistUnexpectedError: InternalError {
            InternalError(.whitelistUnexpectedError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .accountCommon:
                code = .internalError_AccountCommon
            case .accountUserNotAuthenticated:
                code = .internalError_AccountUserNotAuthenticated
            case .asCommon:
                code = .internalError_AsCommon
            case .camNoAuth:
                code = .internalError_CamNoAuth
            case .cidrConflictWithOtherCluster:
                code = .internalError_CidrConflictWithOtherCluster
            case .cidrConflictWithOtherRoute:
                code = .internalError_CidrConflictWithOtherRoute
            case .cidrConflictWithVpcCidr:
                code = .internalError_CidrConflictWithVpcCidr
            case .cidrConflictWithVpcGlobalRoute:
                code = .internalError_CidrConflictWithVpcGlobalRoute
            case .cidrInvali:
                code = .internalError_CidrInvali
            case .cidrMaskSizeOutOfRange:
                code = .internalError_CidrMaskSizeOutOfRange
            case .cidrOutOfRouteTable:
                code = .internalError_CidrOutOfRouteTable
            case .clusterNotFound:
                code = .internalError_ClusterNotFound
            case .clusterState:
                code = .internalError_ClusterState
            case .clusterUpgradeNodeVersion:
                code = .internalError_ClusterUpgradeNodeVersion
            case .cmdTimeout:
                code = .internalError_CmdTimeout
            case .componentClientHttp:
                code = .internalError_ComponentClientHttp
            case .componentClinetHttp:
                code = .internalError_ComponentClinetHttp
            case .containerNotFound:
                code = .internalError_ContainerNotFound
            case .createMasterFailed:
                code = .internalError_CreateMasterFailed
            case .cvmCommon:
                code = .internalError_CvmCommon
            case .cvmNotFound:
                code = .internalError_CvmNotFound
            case .cvmNumberNotMatch:
                code = .internalError_CvmNumberNotMatch
            case .cvmStatus:
                code = .internalError_CvmStatus
            case .db:
                code = .internalError_Db
            case .dbAffectivedRows:
                code = .internalError_DbAffectivedRows
            case .dbRecordNotFound:
                code = .internalError_DbRecordNotFound
            case .dfwGetUSGCount:
                code = .internalError_DfwGetUSGCount
            case .dfwGetUSGQuota:
                code = .internalError_DfwGetUSGQuota
            case .emptyClusterNotSupport:
                code = .internalError_EmptyClusterNotSupport
            case .gatewayAlreadyAssociatedCidr:
                code = .internalError_GatewayAlreadyAssociatedCidr
            case .imageIdNotFound:
                code = .internalError_ImageIdNotFound
            case .initMasterFailed:
                code = .internalError_InitMasterFailed
            case .invalidPrivateNetworkCidr:
                code = .internalError_InvalidPrivateNetworkCidr
            case .kubeClientConnection:
                code = .internalError_KubeClientConnection
            case .kubeClientCreate:
                code = .internalError_KubeClientCreate
            case .kubeCommon:
                code = .internalError_KubeCommon
            case .kubernetesClientBuildError:
                code = .internalError_KubernetesClientBuildError
            case .kubernetesCreateOperationError:
                code = .internalError_KubernetesCreateOperationError
            case .kubernetesDeleteOperationError:
                code = .internalError_KubernetesDeleteOperationError
            case .kubernetesGetOperationError:
                code = .internalError_KubernetesGetOperationError
            case .kubernetesInternal:
                code = .internalError_KubernetesInternal
            case .kubernetesPatchOperationError:
                code = .internalError_KubernetesPatchOperationError
            case .lbCommon:
                code = .internalError_LbCommon
            case .osNotSupport:
                code = .internalError_OsNotSupport
            case .param:
                code = .internalError_Param
            case .podNotFound:
                code = .internalError_PodNotFound
            case .publicClusterOpNotSupport:
                code = .internalError_PublicClusterOpNotSupport
            case .quotaMaxClsLimit:
                code = .internalError_QuotaMaxClsLimit
            case .quotaMaxNodLimit:
                code = .internalError_QuotaMaxNodLimit
            case .quotaMaxRtLimit:
                code = .internalError_QuotaMaxRtLimit
            case .quotaUSGLimit:
                code = .internalError_QuotaUSGLimit
            case .resourceExistAlready:
                code = .internalError_ResourceExistAlready
            case .routeTableNotEmpty:
                code = .internalError_RouteTableNotEmpty
            case .routeTableNotFound:
                code = .internalError_RouteTableNotFound
            case .taskAlreadyRunning:
                code = .internalError_TaskAlreadyRunning
            case .taskCreateFailed:
                code = .internalError_TaskCreateFailed
            case .taskLifeStateError:
                code = .internalError_TaskLifeStateError
            case .taskNotFound:
                code = .internalError_TaskNotFound
            case .tradeCommon:
                code = .internalError_TradeCommon
            case .tradeInsufficientBalance:
                code = .internalError_TradeInsufficientBalance
            case .unexceptedInternal:
                code = .internalError_UnexceptedInternal
            case .unexpectedInternal:
                code = .internalError_UnexpectedInternal
            case .vpcCommon:
                code = .internalError_VpcCommon
            case .vpcPeerNotFound:
                code = .internalError_VpcPeerNotFound
            case .vpcRecodrNotFound:
                code = .internalError_VpcRecodrNotFound
            case .vpcUnexpectedError:
                code = .internalError_VPCUnexpectedError
            case .vstationError:
                code = .internalError_VstationError
            case .whitelistUnexpectedError:
                code = .internalError_WhitelistUnexpectedError
            case .other:
                code = .internalError
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
