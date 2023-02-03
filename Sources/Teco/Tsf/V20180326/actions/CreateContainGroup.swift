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

extension Tsf {
    /// CreateContainGroup请求参数结构体
    public struct CreateContainGroupRequest: TCRequestModel {
        /// 分组所属应用ID
        public let applicationId: String

        /// 分组所属命名空间ID
        public let namespaceId: String

        /// 分组名称字段，长度1~60，字母或下划线开头，可包含字母数字下划线
        public let groupName: String

        /// 实例数量
        public let instanceNum: Int64

        /// 0:公网 1:集群内访问 2：NodePort
        public let accessType: Int64

        /// 数组对象，见下方定义
        public let protocolPorts: [ProtocolPort]

        /// 集群ID
        public let clusterId: String

        /// 最大分配 CPU 核数，对应 K8S limit
        public let cpuLimit: String?

        /// 最大分配内存 MiB 数，对应 K8S limit
        public let memLimit: String?

        /// 分组备注字段，长度应不大于200字符
        public let groupComment: String?

        /// 更新方式：0:快速更新 1:滚动更新
        public let updateType: Int64?

        /// 滚动更新必填，更新间隔
        public let updateIvl: Int64?

        /// 初始分配的 CPU 核数，对应 K8S request
        public let cpuRequest: String?

        /// 初始分配的内存 MiB 数，对应 K8S request
        public let memRequest: String?

        /// 部署组资源类型
        public let groupResourceType: String?

        /// 子网ID
        public let subnetId: String?

        /// agent 容器分配的 CPU 核数，对应 K8S 的 request
        public let agentCpuRequest: String?

        /// agent 容器最大的 CPU 核数，对应 K8S 的 limit
        public let agentCpuLimit: String?

        /// agent 容器分配的内存 MiB 数，对应 K8S 的 request
        public let agentMemRequest: String?

        /// agent 容器最大的内存 MiB 数，对应 K8S 的 limit
        public let agentMemLimit: String?

        /// istioproxy 容器分配的 CPU 核数，对应 K8S 的 request
        public let istioCpuRequest: String?

        /// istioproxy 容器最大的 CPU 核数，对应 K8S 的 limit
        public let istioCpuLimit: String?

        /// istioproxy 容器分配的内存 MiB 数，对应 K8S 的 request
        public let istioMemRequest: String?

        /// istioproxy 容器最大的内存 MiB 数，对应 K8S 的 limit
        public let istioMemLimit: String?

        public init(applicationId: String, namespaceId: String, groupName: String, instanceNum: Int64, accessType: Int64, protocolPorts: [ProtocolPort], clusterId: String, cpuLimit: String? = nil, memLimit: String? = nil, groupComment: String? = nil, updateType: Int64? = nil, updateIvl: Int64? = nil, cpuRequest: String? = nil, memRequest: String? = nil, groupResourceType: String? = nil, subnetId: String? = nil, agentCpuRequest: String? = nil, agentCpuLimit: String? = nil, agentMemRequest: String? = nil, agentMemLimit: String? = nil, istioCpuRequest: String? = nil, istioCpuLimit: String? = nil, istioMemRequest: String? = nil, istioMemLimit: String? = nil) {
            self.applicationId = applicationId
            self.namespaceId = namespaceId
            self.groupName = groupName
            self.instanceNum = instanceNum
            self.accessType = accessType
            self.protocolPorts = protocolPorts
            self.clusterId = clusterId
            self.cpuLimit = cpuLimit
            self.memLimit = memLimit
            self.groupComment = groupComment
            self.updateType = updateType
            self.updateIvl = updateIvl
            self.cpuRequest = cpuRequest
            self.memRequest = memRequest
            self.groupResourceType = groupResourceType
            self.subnetId = subnetId
            self.agentCpuRequest = agentCpuRequest
            self.agentCpuLimit = agentCpuLimit
            self.agentMemRequest = agentMemRequest
            self.agentMemLimit = agentMemLimit
            self.istioCpuRequest = istioCpuRequest
            self.istioCpuLimit = istioCpuLimit
            self.istioMemRequest = istioMemRequest
            self.istioMemLimit = istioMemLimit
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case namespaceId = "NamespaceId"
            case groupName = "GroupName"
            case instanceNum = "InstanceNum"
            case accessType = "AccessType"
            case protocolPorts = "ProtocolPorts"
            case clusterId = "ClusterId"
            case cpuLimit = "CpuLimit"
            case memLimit = "MemLimit"
            case groupComment = "GroupComment"
            case updateType = "UpdateType"
            case updateIvl = "UpdateIvl"
            case cpuRequest = "CpuRequest"
            case memRequest = "MemRequest"
            case groupResourceType = "GroupResourceType"
            case subnetId = "SubnetId"
            case agentCpuRequest = "AgentCpuRequest"
            case agentCpuLimit = "AgentCpuLimit"
            case agentMemRequest = "AgentMemRequest"
            case agentMemLimit = "AgentMemLimit"
            case istioCpuRequest = "IstioCpuRequest"
            case istioCpuLimit = "IstioCpuLimit"
            case istioMemRequest = "IstioMemRequest"
            case istioMemLimit = "IstioMemLimit"
        }
    }

    /// CreateContainGroup返回参数结构体
    public struct CreateContainGroupResponse: TCResponseModel {
        /// 返回创建成功的部署组ID，返回null表示失败
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建容器部署组
    @inlinable
    public func createContainGroup(_ input: CreateContainGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContainGroupResponse> {
        self.client.execute(action: "CreateContainGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建容器部署组
    @inlinable
    public func createContainGroup(_ input: CreateContainGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContainGroupResponse {
        try await self.client.execute(action: "CreateContainGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建容器部署组
    @inlinable
    public func createContainGroup(applicationId: String, namespaceId: String, groupName: String, instanceNum: Int64, accessType: Int64, protocolPorts: [ProtocolPort], clusterId: String, cpuLimit: String? = nil, memLimit: String? = nil, groupComment: String? = nil, updateType: Int64? = nil, updateIvl: Int64? = nil, cpuRequest: String? = nil, memRequest: String? = nil, groupResourceType: String? = nil, subnetId: String? = nil, agentCpuRequest: String? = nil, agentCpuLimit: String? = nil, agentMemRequest: String? = nil, agentMemLimit: String? = nil, istioCpuRequest: String? = nil, istioCpuLimit: String? = nil, istioMemRequest: String? = nil, istioMemLimit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContainGroupResponse> {
        let input = CreateContainGroupRequest(applicationId: applicationId, namespaceId: namespaceId, groupName: groupName, instanceNum: instanceNum, accessType: accessType, protocolPorts: protocolPorts, clusterId: clusterId, cpuLimit: cpuLimit, memLimit: memLimit, groupComment: groupComment, updateType: updateType, updateIvl: updateIvl, cpuRequest: cpuRequest, memRequest: memRequest, groupResourceType: groupResourceType, subnetId: subnetId, agentCpuRequest: agentCpuRequest, agentCpuLimit: agentCpuLimit, agentMemRequest: agentMemRequest, agentMemLimit: agentMemLimit, istioCpuRequest: istioCpuRequest, istioCpuLimit: istioCpuLimit, istioMemRequest: istioMemRequest, istioMemLimit: istioMemLimit)
        return self.client.execute(action: "CreateContainGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建容器部署组
    @inlinable
    public func createContainGroup(applicationId: String, namespaceId: String, groupName: String, instanceNum: Int64, accessType: Int64, protocolPorts: [ProtocolPort], clusterId: String, cpuLimit: String? = nil, memLimit: String? = nil, groupComment: String? = nil, updateType: Int64? = nil, updateIvl: Int64? = nil, cpuRequest: String? = nil, memRequest: String? = nil, groupResourceType: String? = nil, subnetId: String? = nil, agentCpuRequest: String? = nil, agentCpuLimit: String? = nil, agentMemRequest: String? = nil, agentMemLimit: String? = nil, istioCpuRequest: String? = nil, istioCpuLimit: String? = nil, istioMemRequest: String? = nil, istioMemLimit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContainGroupResponse {
        let input = CreateContainGroupRequest(applicationId: applicationId, namespaceId: namespaceId, groupName: groupName, instanceNum: instanceNum, accessType: accessType, protocolPorts: protocolPorts, clusterId: clusterId, cpuLimit: cpuLimit, memLimit: memLimit, groupComment: groupComment, updateType: updateType, updateIvl: updateIvl, cpuRequest: cpuRequest, memRequest: memRequest, groupResourceType: groupResourceType, subnetId: subnetId, agentCpuRequest: agentCpuRequest, agentCpuLimit: agentCpuLimit, agentMemRequest: agentMemRequest, agentMemLimit: agentMemLimit, istioCpuRequest: istioCpuRequest, istioCpuLimit: istioCpuLimit, istioMemRequest: istioMemRequest, istioMemLimit: istioMemLimit)
        return try await self.client.execute(action: "CreateContainGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
