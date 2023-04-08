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

extension Tcr {
    /// ModifyApplicationTriggerPersonal请求参数结构体
    public struct ModifyApplicationTriggerPersonalRequest: TCRequestModel {
        /// 触发器关联的镜像仓库，library/test格式
        public let repoName: String?

        /// 触发器名称，必填参数
        public let triggerName: String?

        /// 触发方式，"all"全部触发，"taglist"指定tag触发，"regex"正则触发
        public let invokeMethod: String?

        /// 触发方式对应的表达式
        public let invokeExpr: String?

        /// 应用所在TKE集群ID
        public let clusterId: String?

        /// 应用所在TKE集群命名空间
        public let namespace: String?

        /// 应用所在TKE集群工作负载类型,支持Deployment、StatefulSet、DaemonSet、CronJob、Job。
        public let workloadType: String?

        /// 应用所在TKE集群工作负载名称
        public let workloadName: String?

        /// 应用所在TKE集群工作负载下容器名称
        public let containerName: String?

        /// 应用所在TKE集群地域数字ID，如1（广州）、16（成都）
        public let clusterRegion: Int64?

        /// 新触发器名称
        public let newTriggerName: String?

        public init(repoName: String? = nil, triggerName: String? = nil, invokeMethod: String? = nil, invokeExpr: String? = nil, clusterId: String? = nil, namespace: String? = nil, workloadType: String? = nil, workloadName: String? = nil, containerName: String? = nil, clusterRegion: Int64? = nil, newTriggerName: String? = nil) {
            self.repoName = repoName
            self.triggerName = triggerName
            self.invokeMethod = invokeMethod
            self.invokeExpr = invokeExpr
            self.clusterId = clusterId
            self.namespace = namespace
            self.workloadType = workloadType
            self.workloadName = workloadName
            self.containerName = containerName
            self.clusterRegion = clusterRegion
            self.newTriggerName = newTriggerName
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case triggerName = "TriggerName"
            case invokeMethod = "InvokeMethod"
            case invokeExpr = "InvokeExpr"
            case clusterId = "ClusterId"
            case namespace = "Namespace"
            case workloadType = "WorkloadType"
            case workloadName = "WorkloadName"
            case containerName = "ContainerName"
            case clusterRegion = "ClusterRegion"
            case newTriggerName = "NewTriggerName"
        }
    }

    /// ModifyApplicationTriggerPersonal返回参数结构体
    public struct ModifyApplicationTriggerPersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改应用更新触发器
    ///
    /// 用于修改应用更新触发器
    @inlinable @discardableResult
    public func modifyApplicationTriggerPersonal(_ input: ModifyApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationTriggerPersonalResponse> {
        self.client.execute(action: "ModifyApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用更新触发器
    ///
    /// 用于修改应用更新触发器
    @inlinable @discardableResult
    public func modifyApplicationTriggerPersonal(_ input: ModifyApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationTriggerPersonalResponse {
        try await self.client.execute(action: "ModifyApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用更新触发器
    ///
    /// 用于修改应用更新触发器
    @inlinable @discardableResult
    public func modifyApplicationTriggerPersonal(repoName: String? = nil, triggerName: String? = nil, invokeMethod: String? = nil, invokeExpr: String? = nil, clusterId: String? = nil, namespace: String? = nil, workloadType: String? = nil, workloadName: String? = nil, containerName: String? = nil, clusterRegion: Int64? = nil, newTriggerName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationTriggerPersonalResponse> {
        self.modifyApplicationTriggerPersonal(.init(repoName: repoName, triggerName: triggerName, invokeMethod: invokeMethod, invokeExpr: invokeExpr, clusterId: clusterId, namespace: namespace, workloadType: workloadType, workloadName: workloadName, containerName: containerName, clusterRegion: clusterRegion, newTriggerName: newTriggerName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用更新触发器
    ///
    /// 用于修改应用更新触发器
    @inlinable @discardableResult
    public func modifyApplicationTriggerPersonal(repoName: String? = nil, triggerName: String? = nil, invokeMethod: String? = nil, invokeExpr: String? = nil, clusterId: String? = nil, namespace: String? = nil, workloadType: String? = nil, workloadName: String? = nil, containerName: String? = nil, clusterRegion: Int64? = nil, newTriggerName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationTriggerPersonalResponse {
        try await self.modifyApplicationTriggerPersonal(.init(repoName: repoName, triggerName: triggerName, invokeMethod: invokeMethod, invokeExpr: invokeExpr, clusterId: clusterId, namespace: namespace, workloadType: workloadType, workloadName: workloadName, containerName: containerName, clusterRegion: clusterRegion, newTriggerName: newTriggerName), region: region, logger: logger, on: eventLoop)
    }
}
