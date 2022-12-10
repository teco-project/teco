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

@_exported import struct Foundation.Date

extension Eis {
    /// 运行时精简信息
    public struct AbstractRuntimeMC: TCOutputModel {
        /// 环境id
        public let runtimeId: Int64
        
        /// 环境名称，用户输入，同一uin内唯一
        public let displayName: String
        
        /// 环境类型：0: sandbox, 1:shared, 2:private
        public let type: Int64
        
        /// 环境所在地域，tianjin，beijiing，guangzhou等
        public let zone: String
        
        /// 环境所在地域，tianjin，beijiing，guangzhou等（同Zone）
        public let area: String
        
        /// 环境应用listener地址后缀
        public let addr: String
        
        /// 环境状态
        public let status: Int64
        
        /// 环境过期时间
        public let expiredAt: Int64
        
        /// 环境运行类型：0:运行时类型、1:api类型
        public let runtimeClass: Int64
        
        /// 是否已在当前环境发布
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployed: Bool?
        
        enum CodingKeys: String, CodingKey {
            case runtimeId = "RuntimeId"
            case displayName = "DisplayName"
            case type = "Type"
            case zone = "Zone"
            case area = "Area"
            case addr = "Addr"
            case status = "Status"
            case expiredAt = "ExpiredAt"
            case runtimeClass = "RuntimeClass"
            case deployed = "Deployed"
        }
    }
    
    /// GetMonitorMetricResponse
    public struct MetricValueMC: TCOutputModel {
        /// 时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let time: Int64?
        
        /// 对应的value值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let val: String?
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case val = "Val"
        }
    }
    
    /// 运行时部署的应用实例详情
    public struct RuntimeDeployedInstanceMC: TCOutputModel {
        /// 项目id
        public let groupId: Int64
        
        /// 项目名称
        public let groupName: String
        
        /// 应用id
        public let projectId: Int64
        
        /// 应用名称
        public let projectName: String
        
        /// 应用实例id
        public let instanceId: Int64
        
        /// 应用实例版本
        public let instanceVersion: Int64
        
        /// 应用实例创建时间
        public let instanceCreatedAt: Int64
        
        /// 应用实例部署状态. 0:running, 1:deleting
        public let status: Int64
        
        /// 应用实例部署创建时间
        public let createdAt: Int64
        
        /// 应用实例部署更新时间
        public let updatedAt: Int64
        
        /// 应用类型：0:NormalApp普通应用 1:TemplateApp模板应用 2:LightApp轻应用 3:MicroConnTemplate微连接模板 4:MicroConnApp微连接应用
        public let projectType: Int64
        
        /// 应用版本：0:旧版 1:3.0新控制台
        public let projectVersion: Int64
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case instanceId = "InstanceId"
            case instanceVersion = "InstanceVersion"
            case instanceCreatedAt = "InstanceCreatedAt"
            case status = "Status"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case projectType = "ProjectType"
            case projectVersion = "ProjectVersion"
        }
    }
    
    /// 运行环境扩展组件
    public struct RuntimeExtensionMC: TCInputModel, TCOutputModel {
        /// 扩展组件类型：0:cdc
        public let type: Int64
        
        /// 部署规格vcore数
        public let size: Float
        
        /// 副本数
        public let replica: Int64
        
        /// 扩展组件名称
        public let name: String
        
        /// 状态 1:未启用 2:已启用
        public let status: Int64
        
        /// 创建时间
        public let createdAt: Int64
        
        /// 修改时间
        public let updatedAt: Int64
        
        public init (type: Int64, size: Float, replica: Int64, name: String, status: Int64, createdAt: Int64, updatedAt: Int64) {
            self.type = type
            self.size = size
            self.replica = replica
            self.name = name
            self.status = status
            self.createdAt = createdAt
            self.updatedAt = updatedAt
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case size = "Size"
            case replica = "Replica"
            case name = "Name"
            case status = "Status"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
        }
    }
    
    /// 运行时详细信息
    public struct RuntimeMC: TCOutputModel {
        /// 环境id
        public let runtimeId: Int64
        
        /// 主账号uin
        public let uin: String
        
        /// 环境名称，用户输入，同一uin内唯一
        public let displayName: String
        
        /// 环境所在地域，tianjin，beijiing，guangzhou等
        public let zone: String
        
        /// 环境类型：0: sandbox, 1:shared, 2:private 3: trial
        public let type: Int64
        
        /// 运行时状态：1:running, 2:deleting, 3:creating, 4:scaling, 5:unavailable, 6:deleted, 7:errored
        public let status: Int64
        
        /// 环境创建时间
        public let createdAt: Int64
        
        /// 环境更新时间
        public let updatedAt: Int64
        
        /// 环境资源配置，worker总配额，0:0vCore0G, 1:1vCore2G, 2:2vCore4G, 4:4vCore8G, 8:8vCore16G, 12:12vCore24G, 16:16vCore32G, 100:unlimited
        public let workerSize: Int64
        
        /// 环境资源配置，worker副本数
        public let workerReplica: Int64
        
        /// 正在运行的应用实例数量
        public let runningInstanceCount: Int64
        
        /// 已使用cpu核数
        public let cpuUsed: Float
        
        /// cpu核数上限
        public let cpuLimit: Float
        
        /// 已使用内存 MB
        public let memoryUsed: Float
        
        /// 内存上限 MB
        public let memoryLimit: Float
        
        /// 环境过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expiredAt: Int64?
        
        /// 收费类型：0:缺省，1:自助下单页购买(支持续费/升配等操作)，2:代销下单页购买
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeType: Int64?
        
        /// 资源限制类型：0:无限制，1:有限制
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceLimitType: Int64?
        
        /// 是否开启自动续费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRenewal: Bool?
        
        /// 扩展组件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workerExtensions: [Date]?
        
        /// 环境类型：0: sandbox, 1:shared, 2:private 3: trial
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtimeType: Int64?
        
        /// 环境运行类型：0:运行时类型、1:api类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtimeClass: Int64?
        
        /// 已使用出带宽 Mbps
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bandwidthOutUsed: Float?
        
        /// 出带宽上限 Mbps
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bandwidthOutLimit: Float?
        
        enum CodingKeys: String, CodingKey {
            case runtimeId = "RuntimeId"
            case uin = "Uin"
            case displayName = "DisplayName"
            case zone = "Zone"
            case type = "Type"
            case status = "Status"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case workerSize = "WorkerSize"
            case workerReplica = "WorkerReplica"
            case runningInstanceCount = "RunningInstanceCount"
            case cpuUsed = "CpuUsed"
            case cpuLimit = "CpuLimit"
            case memoryUsed = "MemoryUsed"
            case memoryLimit = "MemoryLimit"
            case expiredAt = "ExpiredAt"
            case chargeType = "ChargeType"
            case resourceLimitType = "ResourceLimitType"
            case autoRenewal = "AutoRenewal"
            case workerExtensions = "WorkerExtensions"
            case runtimeType = "RuntimeType"
            case runtimeClass = "RuntimeClass"
            case bandwidthOutUsed = "BandwidthOutUsed"
            case bandwidthOutLimit = "BandwidthOutLimit"
        }
    }
}