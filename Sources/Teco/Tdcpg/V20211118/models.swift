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

extension Tdcpg {
    /// 数据库账户信息
    public struct Account: TCOutputModel {
        /// 数据库账号名
        public let accountName: String
        
        /// 集群ID
        public let clusterId: String
        
        /// 数据库账号描述
        public let accountDescription: String
        
        /// 数据库账号创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let createTime: String
        
        /// 数据库账号信息更新时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let updateTime: String
        
        enum CodingKeys: String, CodingKey {
            case accountName = "AccountName"
            case clusterId = "ClusterId"
            case accountDescription = "AccountDescription"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 可以回档时间范围
    public struct AvailableRecoveryTimeRange: TCOutputModel {
        /// 可回档起始时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let availableBeginTime: String
        
        /// 可回档结束时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let availableEndTime: String
        
        enum CodingKeys: String, CodingKey {
            case availableBeginTime = "AvailableBeginTime"
            case availableEndTime = "AvailableEndTime"
        }
    }
    
    /// 集群备份集信息
    public struct Backup: TCOutputModel {
        /// 备份集ID，集群内唯一
        public let backupId: Int64
        
        /// 备份集类型，目前只支持 SNAPSHOT：快照
        public let backupType: String
        
        /// 备份集产生的方案，目前只支持 AUTO：自动
        public let backupMethod: String
        
        /// 备份集对应的数据时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let backupDataTime: String
        
        /// 备份集数据大小，单位GiB
        public let backupDataSize: Int64
        
        /// 备份集对应的任务开始时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let backupTaskStartTime: String
        
        /// 备份集对应的任务结束时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let backupTaskEndTime: String
        
        /// 备份集对应的任务状态  SUCCESS：成功
        public let backupTaskStatus: String
        
        enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
            case backupType = "BackupType"
            case backupMethod = "BackupMethod"
            case backupDataTime = "BackupDataTime"
            case backupDataSize = "BackupDataSize"
            case backupTaskStartTime = "BackupTaskStartTime"
            case backupTaskEndTime = "BackupTaskEndTime"
            case backupTaskStatus = "BackupTaskStatus"
        }
    }
    
    /// 集群信息
    public struct Cluster: TCOutputModel {
        /// 集群ID，集群的唯一标识
        public let clusterId: String
        
        /// 集群名字，不修改时默认和集群ID相同
        public let clusterName: String
        
        /// 地域
        public let region: String
        
        /// 可用区
        public let zone: String
        
        /// TDSQL-C PostgreSQL 合入的社区版本号
        public let dbVersion: String
        
        /// 项目ID
        public let projectId: UInt64
        
        /// 集群状态。目前包括
        ///  - creating ：创建中
        ///  - running : 运行中
        ///  - isolating : 隔离中
        ///  - isolated : 已隔离
        ///  - recovering : 恢复中
        ///  - deleting : 删除中
        ///  - deleted : 已删除
        public let status: String
        
        /// 集群状态中文含义
        public let statusDesc: String
        
        /// 集群创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let createTime: String
        
        /// 存储当前使用量，单位GiB
        public let storageUsed: Float
        
        /// 存储最大使用量，单位GiB
        public let storageLimit: UInt64
        
        /// 付费模式：
        ///  - PREPAID : 预付费，即包年包月
        ///  - POSTPAID_BY_HOUR : 按小时结算后付费
        public let payMode: String
        
        /// 预付费集群到期时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let payPeriodEndTime: String
        
        /// 预付费集群自动续费标签
        ///  - 0 : 到期不自动续费
        ///  - 1 : 到期自动续费
        public let autoRenewFlag: UInt64
        
        /// 数据库字符集
        public let dbCharset: String
        
        /// 集群内实例的数量
        public let instanceCount: UInt64
        
        /// 集群内访问点信息
        public let endpointSet: [Endpoint]
        
        /// TDSQL-C PostgreSQL 合入的社区主要版本号
        public let dbMajorVersion: String
        
        /// TDSQL-C PostgreSQL 内核版本号
        public let dbKernelVersion: String
        
        /// 存储付费模式
        ///  - PREPAID：预付费，即包年包月
        ///  - POSTPAID_BY_HOUR：按小时后付费
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storagePayMode: String?
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
            case region = "Region"
            case zone = "Zone"
            case dbVersion = "DBVersion"
            case projectId = "ProjectId"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case createTime = "CreateTime"
            case storageUsed = "StorageUsed"
            case storageLimit = "StorageLimit"
            case payMode = "PayMode"
            case payPeriodEndTime = "PayPeriodEndTime"
            case autoRenewFlag = "AutoRenewFlag"
            case dbCharset = "DBCharset"
            case instanceCount = "InstanceCount"
            case endpointSet = "EndpointSet"
            case dbMajorVersion = "DBMajorVersion"
            case dbKernelVersion = "DBKernelVersion"
            case storagePayMode = "StoragePayMode"
        }
    }
    
    /// 集群的连接点信息，包含访问数据库的相关网络信息
    public struct Endpoint: TCOutputModel {
        /// 连接点ID，集群内唯一
        public let endpointId: String
        
        /// 连接点所属的集群ID
        public let clusterId: String
        
        /// 连接点名字，默认和连接点ID一致
        public let endpointName: String
        
        /// 连接点类型
        ///  - RW : 读写
        ///  - RO : 只读
        public let endpointType: String
        
        /// 私有网络VPC实例ID
        public let vpcId: String
        
        /// 私有网络VPC下子网实例ID
        public let subnetId: String
        
        /// 私有网络VPC下用于访问数据库的IP
        public let privateIp: String
        
        /// 私有网络VPC下用于访问数据库的端口
        public let privatePort: UInt64
        
        /// 公共网络用户访问数据库的IP
        public let wanIp: String
        
        /// 公共网络用户访问数据库的端口
        public let wanPort: UInt64
        
        /// 公共网络用户访问数据库的域名
        public let wanDomain: String
        
        enum CodingKeys: String, CodingKey {
            case endpointId = "EndpointId"
            case clusterId = "ClusterId"
            case endpointName = "EndpointName"
            case endpointType = "EndpointType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case privateIp = "PrivateIp"
            case privatePort = "PrivatePort"
            case wanIp = "WanIp"
            case wanPort = "WanPort"
            case wanDomain = "WanDomain"
        }
    }
    
    /// 过滤条件
    public struct Filter: TCInputModel {
        /// 过滤条件名
        public let name: String
        
        /// 过滤条件值数组
        public let values: [String]
        
        /// true:精确匹配(默认值) false:(模糊匹配)
        public let exactMatch: Bool
        
        public init (name: String, values: [String], exactMatch: Bool) {
            self.name = name
            self.values = values
            self.exactMatch = exactMatch
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
            case exactMatch = "ExactMatch"
        }
    }
    
    /// 集群下的实例信息
    public struct Instance: TCOutputModel {
        /// 实例ID，集群下唯一
        public let instanceId: String
        
        /// 实例名字，默认和实例ID一致
        public let instanceName: String
        
        /// 集群ID
        public let clusterId: String
        
        /// 实例所在的访问点ID
        public let endpointId: String
        
        /// 地域
        public let region: String
        
        /// 可用区
        public let zone: String
        
        /// 数据库版本
        public let dbVersion: String
        
        /// 实例状态
        public let status: String
        
        /// 实例状态中文含义
        public let statusDesc: String
        
        /// 实例创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let createTime: String
        
        /// 付费模式：
        /// - PREPAID : 预付费
        /// - POSTPAID_BY_HOUR : 按小时结算后付费
        /// 同一集群下付费模式需要保持一致。
        public let payMode: String
        
        /// 实例到期时间。同一集群下到期时间需要保持一致。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let payPeriodEndTime: String
        
        /// CPU核数
        public let cpu: UInt64
        
        /// 内存大小，单位GiB
        public let memory: UInt64
        
        /// 实例类型
        ///  - RW：读写实例
        ///  - RO：只读实例
        public let instanceType: String
        
        /// TDSQL-C PostgreSQL 合入的社区主要版本号
        public let dbMajorVersion: String
        
        /// TDSQL-C PostgreSQL 内核版本号
        public let dbKernelVersion: String
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case clusterId = "ClusterId"
            case endpointId = "EndpointId"
            case region = "Region"
            case zone = "Zone"
            case dbVersion = "DBVersion"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case createTime = "CreateTime"
            case payMode = "PayMode"
            case payPeriodEndTime = "PayPeriodEndTime"
            case cpu = "CPU"
            case memory = "Memory"
            case instanceType = "InstanceType"
            case dbMajorVersion = "DBMajorVersion"
            case dbKernelVersion = "DBKernelVersion"
        }
    }
    
    /// 资源ID信息，包括ClusterID和InstanceID
    public struct ResourceIdInfo: TCOutputModel {
        /// 集群ID
        public let clusterId: String
        
        /// 实例ID列表
        public let instanceIdSet: [String]
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdSet = "InstanceIdSet"
        }
    }
}