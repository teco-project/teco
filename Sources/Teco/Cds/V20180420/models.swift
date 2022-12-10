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

extension Cds {
    /// 数据安全产品实例信息
    public struct CdsAuditInstance: TCOutputModel {
        /// 实例ID
        public let instanceId: String
        
        /// 用户AppId
        public let appId: String
        
        /// 用户Uin
        public let uin: String
        
        /// 项目ID
        public let projectId: UInt64
        
        /// 续费标识
        public let renewFlag: UInt64
        
        /// 所属地域
        public let region: String
        
        /// 付费模式（数据安全审计只支持预付费：1）
        public let payMode: UInt64
        
        /// 实例状态： 0，未生效；1：正常运行； 2：被隔离； 3，已过期
        public let status: UInt64
        
        /// 实例被隔离时间，格式：yyyy-mm-dd HH:ii:ss
        public let isolatedTimestamp: String
        
        /// 实例创建时间，格式： yyyy-mm-dd HH:ii:ss
        public let createTime: String
        
        /// 实例过期时间，格式：yyyy-mm-dd HH:ii:ss
        public let expireTime: String
        
        /// 实例名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?
        
        /// 实例公网IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicIp: String?
        
        /// 实例私网IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let privateIp: String?
        
        /// 实例类型（版本）
        public let instanceType: String
        
        /// 实例域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pdomain: String?
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case appId = "AppId"
            case uin = "Uin"
            case projectId = "ProjectId"
            case renewFlag = "RenewFlag"
            case region = "Region"
            case payMode = "PayMode"
            case status = "Status"
            case isolatedTimestamp = "IsolatedTimestamp"
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case instanceName = "InstanceName"
            case publicIp = "PublicIp"
            case privateIp = "PrivateIp"
            case instanceType = "InstanceType"
            case pdomain = "Pdomain"
        }
    }
    
    /// 数据安全审计产品规格信息
    public struct DbauditTypesInfo: TCOutputModel {
        /// 规格描述
        public let instanceVersionName: String
        
        /// 规格名称
        public let instanceVersionKey: String
        
        /// 最大吞吐量
        public let qps: UInt64
        
        /// 最大实例数
        public let maxInstances: UInt64
        
        /// 入库速率（每小时）
        public let insertSpeed: UInt64
        
        /// 最大在线存储量，单位：条
        public let onlineStorageCapacity: UInt64
        
        /// 最大归档存储量，单位：条
        public let archivingStorageCapacity: UInt64
        
        enum CodingKeys: String, CodingKey {
            case instanceVersionName = "InstanceVersionName"
            case instanceVersionKey = "InstanceVersionKey"
            case qps = "Qps"
            case maxInstances = "MaxInstances"
            case insertSpeed = "InsertSpeed"
            case onlineStorageCapacity = "OnlineStorageCapacity"
            case archivingStorageCapacity = "ArchivingStorageCapacity"
        }
    }
    
    /// 数盾地域信息
    public struct RegionInfo: TCOutputModel {
        /// 地域ID
        public let regionId: Int64
        
        /// 地域名称
        public let region: String
        
        /// 地域描述
        public let regionName: String
        
        /// 地域可用状态
        public let regionState: Int64
        
        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case region = "Region"
            case regionName = "RegionName"
            case regionState = "RegionState"
        }
    }
}
