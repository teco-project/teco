//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// 部署容器应用
    ///
    /// 部署容器应用-更新
    @inlinable
    public func deployContainerGroup(_ input: DeployContainerGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeployContainerGroupResponse > {
        self.client.execute(action: "DeployContainerGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 部署容器应用
    ///
    /// 部署容器应用-更新
    @inlinable
    public func deployContainerGroup(_ input: DeployContainerGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployContainerGroupResponse {
        try await self.client.execute(action: "DeployContainerGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeployContainerGroup请求参数结构体
    public struct DeployContainerGroupRequest: TCRequestModel {
        /// 部署组ID，分组唯一标识
        public let groupId: String
        
        /// 镜像版本名称,如v1
        public let tagName: String
        
        /// 实例数量
        public let instanceNum: Int64
        
        /// 镜像server
        public let server: String?
        
        /// 旧版镜像名，如/tsf/nginx
        public let reponame: String?
        
        /// 业务容器最大的 CPU 核数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        public let cpuLimit: String?
        
        /// 业务容器最大的内存 MiB 数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        public let memLimit: String?
        
        /// jvm参数
        public let jvmOpts: String?
        
        /// 业务容器分配的 CPU 核数，对应 K8S 的 request，默认0.25
        public let cpuRequest: String?
        
        /// 业务容器分配的内存 MiB 数，对应 K8S 的 request，默认640 MiB
        public let memRequest: String?
        
        /// 是否不立即启动
        public let doNotStart: Bool?
        
        /// （优先使用）新版镜像名，如/tsf/nginx
        public let repoName: String?
        
        /// 更新方式：0:快速更新 1:滚动更新
        public let updateType: Int64?
        
        /// 滚动更新必填，更新间隔
        public let updateIvl: Int64?
        
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
        
        /// kubernetes滚动更新策略的MaxSurge参数
        public let maxSurge: String?
        
        /// kubernetes滚动更新策略的MaxUnavailable参数
        public let maxUnavailable: String?
        
        /// 健康检查配置信息，若不指定该参数，则默认不设置健康检查。
        public let healthCheckSettings: HealthCheckSettings
        
        /// 部署组应用运行的环境变量。若不指定该参数，则默认不设置额外的环境变量。
        public let envs: [Env]?
        
        /// 容器部署组的网络设置。
        public let serviceSetting: ServiceSetting
        
        /// 是否部署 agent 容器。若不指定该参数，则默认不部署 agent 容器。
        public let deployAgent: Bool?
        
        /// 节点调度策略。若不指定改参数，则默认不使用节点调度策略。
        public let schedulingStrategy: SchedulingStrategy
        
        /// 是否进行增量部署，默认为false，全量更新
        public let incrementalDeployment: Bool?
        
        /// tcr或者不填
        public let repoType: String?
        
        /// 数据卷信息-废弃，请用VolumeInfoList参数
        public let volumeInfos: VolumeInfo
        
        /// 数据卷挂载点信息-废弃，请用VolumeMountInfoList参数
        public let volumeMountInfos: VolumeMountInfo
        
        /// 数据卷信息，list
        public let volumeInfoList: [VolumeInfo]?
        
        /// 数据卷挂载点信息，list
        public let volumeMountInfoList: [VolumeMountInfo]?
        
        /// 是否清除数据卷信息，默认false
        public let volumeClean: Bool?
        
        /// javaagent信息: SERVICE_AGENT/OT_AGENT
        public let agentProfileList: [AgentProfile]?
        
        /// 预热配置信息
        public let warmupSetting: WarmupSetting
        
        public init (groupId: String, tagName: String, instanceNum: Int64, server: String?, reponame: String?, cpuLimit: String?, memLimit: String?, jvmOpts: String?, cpuRequest: String?, memRequest: String?, doNotStart: Bool?, repoName: String?, updateType: Int64?, updateIvl: Int64?, agentCpuRequest: String?, agentCpuLimit: String?, agentMemRequest: String?, agentMemLimit: String?, istioCpuRequest: String?, istioCpuLimit: String?, istioMemRequest: String?, istioMemLimit: String?, maxSurge: String?, maxUnavailable: String?, healthCheckSettings: HealthCheckSettings, envs: [Env]?, serviceSetting: ServiceSetting, deployAgent: Bool?, schedulingStrategy: SchedulingStrategy, incrementalDeployment: Bool?, repoType: String?, volumeInfos: VolumeInfo, volumeMountInfos: VolumeMountInfo, volumeInfoList: [VolumeInfo]?, volumeMountInfoList: [VolumeMountInfo]?, volumeClean: Bool?, agentProfileList: [AgentProfile]?, warmupSetting: WarmupSetting) {
            self.groupId = groupId
            self.tagName = tagName
            self.instanceNum = instanceNum
            self.server = server
            self.reponame = reponame
            self.cpuLimit = cpuLimit
            self.memLimit = memLimit
            self.jvmOpts = jvmOpts
            self.cpuRequest = cpuRequest
            self.memRequest = memRequest
            self.doNotStart = doNotStart
            self.repoName = repoName
            self.updateType = updateType
            self.updateIvl = updateIvl
            self.agentCpuRequest = agentCpuRequest
            self.agentCpuLimit = agentCpuLimit
            self.agentMemRequest = agentMemRequest
            self.agentMemLimit = agentMemLimit
            self.istioCpuRequest = istioCpuRequest
            self.istioCpuLimit = istioCpuLimit
            self.istioMemRequest = istioMemRequest
            self.istioMemLimit = istioMemLimit
            self.maxSurge = maxSurge
            self.maxUnavailable = maxUnavailable
            self.healthCheckSettings = healthCheckSettings
            self.envs = envs
            self.serviceSetting = serviceSetting
            self.deployAgent = deployAgent
            self.schedulingStrategy = schedulingStrategy
            self.incrementalDeployment = incrementalDeployment
            self.repoType = repoType
            self.volumeInfos = volumeInfos
            self.volumeMountInfos = volumeMountInfos
            self.volumeInfoList = volumeInfoList
            self.volumeMountInfoList = volumeMountInfoList
            self.volumeClean = volumeClean
            self.agentProfileList = agentProfileList
            self.warmupSetting = warmupSetting
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case tagName = "TagName"
            case instanceNum = "InstanceNum"
            case server = "Server"
            case reponame = "Reponame"
            case cpuLimit = "CpuLimit"
            case memLimit = "MemLimit"
            case jvmOpts = "JvmOpts"
            case cpuRequest = "CpuRequest"
            case memRequest = "MemRequest"
            case doNotStart = "DoNotStart"
            case repoName = "RepoName"
            case updateType = "UpdateType"
            case updateIvl = "UpdateIvl"
            case agentCpuRequest = "AgentCpuRequest"
            case agentCpuLimit = "AgentCpuLimit"
            case agentMemRequest = "AgentMemRequest"
            case agentMemLimit = "AgentMemLimit"
            case istioCpuRequest = "IstioCpuRequest"
            case istioCpuLimit = "IstioCpuLimit"
            case istioMemRequest = "IstioMemRequest"
            case istioMemLimit = "IstioMemLimit"
            case maxSurge = "MaxSurge"
            case maxUnavailable = "MaxUnavailable"
            case healthCheckSettings = "HealthCheckSettings"
            case envs = "Envs"
            case serviceSetting = "ServiceSetting"
            case deployAgent = "DeployAgent"
            case schedulingStrategy = "SchedulingStrategy"
            case incrementalDeployment = "IncrementalDeployment"
            case repoType = "RepoType"
            case volumeInfos = "VolumeInfos"
            case volumeMountInfos = "VolumeMountInfos"
            case volumeInfoList = "VolumeInfoList"
            case volumeMountInfoList = "VolumeMountInfoList"
            case volumeClean = "VolumeClean"
            case agentProfileList = "AgentProfileList"
            case warmupSetting = "WarmupSetting"
        }
    }
    
    /// DeployContainerGroup返回参数结构体
    public struct DeployContainerGroupResponse: TCResponseModel {
        /// 部署容器应用是否成功。
        /// true：成功。
        /// false：失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}