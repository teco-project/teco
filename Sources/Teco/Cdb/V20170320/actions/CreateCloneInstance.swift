//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// CreateCloneInstance请求参数结构体
    public struct CreateCloneInstanceRequest: TCRequestModel {
        /// 克隆源实例Id。
        public let instanceId: String
        
        /// 如果需要克隆实例回档到指定时间，则指定该值。时间格式为： yyyy-mm-dd hh:mm:ss 。
        public let specifiedRollbackTime: String?
        
        /// 如果需要克隆实例回档到指定备份的时间点，则指定该值为物理备份的Id。请使用 [查询数据备份文件列表](/document/api/236/15842) 。
        public let specifiedBackupId: Int64?
        
        /// 私有网络 ID，如果不传则默认选择基础网络，请使用 [查询私有网络列表](/document/api/215/15778) 。
        public let uniqVpcId: String?
        
        /// 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用 [查询子网列表](/document/api/215/15784)。
        public let uniqSubnetId: String?
        
        /// 实例内存大小，单位：MB，需要不低于克隆源实例，默认和源实例相同。
        public let memory: Int64?
        
        /// 实例硬盘大小，单位：GB，需要不低于克隆源实例，默认和源实例相同。
        public let volume: Int64?
        
        /// 新产生的克隆实例名称。
        public let instanceName: String?
        
        /// 安全组参数，可使用 [查询项目安全组信息](https://cloud.tencent.com/document/api/236/15850) 接口查询某个项目的安全组详情。
        public let securityGroup: [String]?
        
        /// 实例标签信息。
        public let resourceTags: [TagInfo]?
        
        /// 实例Cpu核数，需要不低于克隆源实例，默认和源实例相同。
        public let cpu: Int64?
        
        /// 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制。
        public let protectMode: Int64?
        
        /// 多可用区域，默认为 0，支持值包括：0 - 表示单可用区，1 - 表示多可用区。
        public let deployMode: Int64?
        
        /// 新产生的克隆实例备库 1 的可用区信息，默认同源实例 Zone 的值。
        public let slaveZone: String?
        
        /// 备库 2 的可用区信息，默认为空，克隆强同步主实例时可指定该参数。
        public let backupZone: String?
        
        /// 克隆实例类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例。 不指定则默认为通用型。
        public let deviceType: String?
        
        /// 新克隆实例节点数。如果需要克隆出三节点实例， 请将该值设置为3 或指定 BackupZone 参数。如果需要克隆出两节点实例，请将该值设置为2。默认克隆出两节点实例。
        public let instanceNodes: Int64?
        
        /// 置放群组 ID。
        public let deployGroupId: String?
        
        /// 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制等。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.默认为false：发送正常请求，通过检查后直接创建实例。
        public let dryRun: Bool?
        
        /// 金融围拢 ID 。
        public let cageId: String?
        
        /// 项目ID，默认项目ID0
        public let projectId: UInt64?
        
        public init (instanceId: String, specifiedRollbackTime: String? = nil, specifiedBackupId: Int64? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, memory: Int64? = nil, volume: Int64? = nil, instanceName: String? = nil, securityGroup: [String]? = nil, resourceTags: [TagInfo]? = nil, cpu: Int64? = nil, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, backupZone: String? = nil, deviceType: String? = nil, instanceNodes: Int64? = nil, deployGroupId: String? = nil, dryRun: Bool? = nil, cageId: String? = nil, projectId: UInt64? = nil) {
            self.instanceId = instanceId
            self.specifiedRollbackTime = specifiedRollbackTime
            self.specifiedBackupId = specifiedBackupId
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.memory = memory
            self.volume = volume
            self.instanceName = instanceName
            self.securityGroup = securityGroup
            self.resourceTags = resourceTags
            self.cpu = cpu
            self.protectMode = protectMode
            self.deployMode = deployMode
            self.slaveZone = slaveZone
            self.backupZone = backupZone
            self.deviceType = deviceType
            self.instanceNodes = instanceNodes
            self.deployGroupId = deployGroupId
            self.dryRun = dryRun
            self.cageId = cageId
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case specifiedRollbackTime = "SpecifiedRollbackTime"
            case specifiedBackupId = "SpecifiedBackupId"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case memory = "Memory"
            case volume = "Volume"
            case instanceName = "InstanceName"
            case securityGroup = "SecurityGroup"
            case resourceTags = "ResourceTags"
            case cpu = "Cpu"
            case protectMode = "ProtectMode"
            case deployMode = "DeployMode"
            case slaveZone = "SlaveZone"
            case backupZone = "BackupZone"
            case deviceType = "DeviceType"
            case instanceNodes = "InstanceNodes"
            case deployGroupId = "DeployGroupId"
            case dryRun = "DryRun"
            case cageId = "CageId"
            case projectId = "ProjectId"
        }
    }
    
    /// CreateCloneInstance返回参数结构体
    public struct CreateCloneInstanceResponse: TCResponseModel {
        /// 异步任务的请求ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建克隆实例
    ///
    /// 本接口(CreateCloneInstance) 用于从目标源实例创建一个克隆实例，可以指定克隆实例回档到源实例的指定物理备份文件或者指定的回档时间点。
    @inlinable
    public func createCloneInstance(_ input: CreateCloneInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCloneInstanceResponse > {
        self.client.execute(action: "CreateCloneInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建克隆实例
    ///
    /// 本接口(CreateCloneInstance) 用于从目标源实例创建一个克隆实例，可以指定克隆实例回档到源实例的指定物理备份文件或者指定的回档时间点。
    @inlinable
    public func createCloneInstance(_ input: CreateCloneInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloneInstanceResponse {
        try await self.client.execute(action: "CreateCloneInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
