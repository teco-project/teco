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

extension Dbdc {
    /// DB实例详情
    public struct DBInstanceDetail: TCOutputModel {
        /// DB实例Id
        public let instanceId: String

        /// DB实例名称
        public let instanceName: String

        /// DB实例状态,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        public let status: Int64

        /// DB实例状态描述,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        public let statusDesc: String

        /// DB实例版本
        public let dbVersion: String

        /// Vip信息
        public let vip: String

        /// Vip使用的端口号
        public let vport: Int64

        /// 字符串型的私有网络ID
        public let uniqueVpcId: String

        /// 字符串型的私有网络子网ID
        public let uniqueSubnetId: String

        /// 是否为分布式版本,0:否,1:是
        public let shard: Int64

        /// DB实例节点数
        public let nodeNum: Int64

        /// CPU规格(单位:核数)
        public let cpu: Int64

        /// 内存规格(单位:GB)
        public let memory: Int64

        /// 磁盘规格(单位:GB)
        public let disk: Int64

        /// 分布式类型的实例的分片数
        public let shardNum: Int64

        /// 地域
        public let region: String

        /// 可用区
        public let zone: String

        /// Db所在主机列表, 格式: m1,s1|m2,s2
        public let dbHosts: String

        /// 主机角色, 1:主, 2:从, 3:主+从
        public let hostRole: Int64

        /// DB引擎，MySQL,Percona,MariaDB
        public let dbEngine: String

        /// 创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case dbVersion = "DbVersion"
            case vip = "Vip"
            case vport = "Vport"
            case uniqueVpcId = "UniqueVpcId"
            case uniqueSubnetId = "UniqueSubnetId"
            case shard = "Shard"
            case nodeNum = "NodeNum"
            case cpu = "Cpu"
            case memory = "Memory"
            case disk = "Disk"
            case shardNum = "ShardNum"
            case region = "Region"
            case zone = "Zone"
            case dbHosts = "DbHosts"
            case hostRole = "HostRole"
            case dbEngine = "DbEngine"
            case createTime = "CreateTime"
        }
    }

    /// 独享集群详情
    public struct DescribeInstanceDetail: TCOutputModel {
        /// 独享集群实例Id
        public let instanceId: String

        /// 独享集群实例名称
        public let instanceName: String

        /// 地域
        public let region: String

        /// 产品ID, 0:CDB, 1:TDSQL
        public let productId: Int64

        /// 集群类型, 0:公有云, 1:金融围笼, 2:CDC集群
        public let type: Int64

        /// 主机类型, 0:物理机, 1:CVM机型, 2:CDC机型
        public let hostType: Int64

        /// 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        public let autoRenewFlag: Int64

        /// 集群状态
        public let status: Int64

        /// 集群状态描述
        public let statusDesc: String

        /// 创建时间
        public let createTime: String

        /// 到期时间
        public let periodEndTime: String

        /// 主机数
        public let hostNum: Int64

        /// DB实例数
        public let dbNum: Int64

        /// 分配策略, 0:紧凑, 1:均匀
        public let assignStrategy: Int64

        /// 总主机CPU(单位:核数)
        public let cpuSpec: Int64

        /// 总已分配CPU(单位:核数)
        public let cpuAssigned: Int64

        /// 总可分配CPU(单位:核数)
        public let cpuAssignable: Int64

        /// 总主机内存(单位:GB)
        public let memorySpec: Int64

        /// 总已分配内存(单位:GB)
        public let memoryAssigned: Int64

        /// 总可分配内存(单位:GB)
        public let memoryAssignable: Int64

        /// 总机器磁盘(单位:GB)
        public let diskSpec: Int64

        /// 总已分配磁盘(单位:GB)
        public let diskAssigned: Int64

        /// 总可分配磁盘(单位:GB)
        public let diskAssignable: Int64

        /// 可用区
        public let zone: String

        /// 金融围笼ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fenceId: String?

        /// 所属集群ID(默认集群为空)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case region = "Region"
            case productId = "ProductId"
            case type = "Type"
            case hostType = "HostType"
            case autoRenewFlag = "AutoRenewFlag"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case createTime = "CreateTime"
            case periodEndTime = "PeriodEndTime"
            case hostNum = "HostNum"
            case dbNum = "DbNum"
            case assignStrategy = "AssignStrategy"
            case cpuSpec = "CpuSpec"
            case cpuAssigned = "CpuAssigned"
            case cpuAssignable = "CpuAssignable"
            case memorySpec = "MemorySpec"
            case memoryAssigned = "MemoryAssigned"
            case memoryAssignable = "MemoryAssignable"
            case diskSpec = "DiskSpec"
            case diskAssigned = "DiskAssigned"
            case diskAssignable = "DiskAssignable"
            case zone = "Zone"
            case fenceId = "FenceId"
            case clusterId = "ClusterId"
        }
    }

    /// 设备信息
    public struct DeviceInfo: TCOutputModel {
        /// 设备ID
        public let deviceId: Int64

        /// 设备No
        public let deviceNo: String

        /// 设备类型
        public let devClass: String

        /// 设备总内存，单位GB
        public let maxMemory: Float

        /// 设备总磁盘，单位GB
        public let maxDisk: Float

        /// 设备剩余内存，单位GB
        public let restMemory: Float

        /// 设备剩余磁盘，单位GB
        public let restDisk: Float

        /// 设备机器个数
        public let rawDeviceNum: UInt64

        /// 数据库实例个数
        public let instanceNum: UInt64

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case deviceNo = "DeviceNo"
            case devClass = "DevClass"
            case maxMemory = "MaxMemory"
            case maxDisk = "MaxDisk"
            case restMemory = "RestMemory"
            case restDisk = "RestDisk"
            case rawDeviceNum = "RawDeviceNum"
            case instanceNum = "InstanceNum"
        }
    }

    /// 主机详情
    public struct HostDetail: TCOutputModel {
        /// 主机Id
        public let hostId: String

        /// 主机名称
        public let hostName: String

        /// 可用区
        public let zone: String

        /// 主机状态
        public let status: Int64

        /// 分配DB实例状态,0:可分配,1:不可分配
        public let assignStatus: Int64

        /// 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        public let hostType: Int64

        /// DB实例数
        public let dbNum: Int64

        /// 主机CPU(单位:核数)
        public let cpuSpec: Int64

        /// 已分配CPU(单位:核数)
        public let cpuAssigned: Int64

        /// 可分配CPU(单位:核数)
        public let cpuAssignable: Int64

        /// 主机内存(单位:GB)
        public let memorySpec: Int64

        /// 已分配内存(单位:GB)
        public let memoryAssigned: Int64

        /// 可分配内存(单位:GB)
        public let memoryAssignable: Int64

        /// 主机磁盘(单位:GB)
        public let diskSpec: Int64

        /// 已分配磁盘(单位:GB)
        public let diskAssigned: Int64

        /// 可分配磁盘(GB)
        public let diskAssignable: Int64

        /// CPU分配比
        public let cpuRatio: Float

        /// 内存分配比
        public let memoryRatio: Float

        /// 磁盘分配比
        public let diskRatio: Float

        /// 机型名称
        public let machineName: String

        /// 机型类别
        public let machineType: String

        /// 计费标签
        public let pidTag: String

        /// 计费ID
        public let pid: Int64

        /// 独享集群实例Id
        public let instanceId: String

        enum CodingKeys: String, CodingKey {
            case hostId = "HostId"
            case hostName = "HostName"
            case zone = "Zone"
            case status = "Status"
            case assignStatus = "AssignStatus"
            case hostType = "HostType"
            case dbNum = "DbNum"
            case cpuSpec = "CpuSpec"
            case cpuAssigned = "CpuAssigned"
            case cpuAssignable = "CpuAssignable"
            case memorySpec = "MemorySpec"
            case memoryAssigned = "MemoryAssigned"
            case memoryAssignable = "MemoryAssignable"
            case diskSpec = "DiskSpec"
            case diskAssigned = "DiskAssigned"
            case diskAssignable = "DiskAssignable"
            case cpuRatio = "CpuRatio"
            case memoryRatio = "MemoryRatio"
            case diskRatio = "DiskRatio"
            case machineName = "MachineName"
            case machineType = "MachineType"
            case pidTag = "PidTag"
            case pid = "Pid"
            case instanceId = "InstanceId"
        }
    }

    /// 集群容量信息。
    public struct InstanceDetail: TCOutputModel {
        /// 集群状态，0：运行中，1：不在运行
        public let status: Int64

        /// 读写集群剩余内存容量，单位GB
        public let readWriteTotalLeaveMemory: Float

        /// 读写集群剩余磁盘容量，单位GB
        public let readWriteTotalLeaveDisk: Float

        /// 读写集群总内存容量，单位GB
        public let readWriteTotalMemory: Float

        /// 读写集群总磁盘容量，单位GB
        public let readWriteTotalDisk: Float

        /// 只读集群剩余内存容量，单位GB
        public let readOnlyTotalLeaveMemory: Float

        /// 只读集群剩余磁盘容量，单位GB
        public let readOnlyTotalLeaveDisk: Float

        /// 只读集群总内存容量，单位GB
        public let readOnlyTotalMemory: Float

        /// 只读集群总磁盘容量，单位GB
        public let readOnlyTotalDisk: Float

        /// 集群设备详情
        public let instanceDeviceInfos: [InstanceDeviceInfo]

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case readWriteTotalLeaveMemory = "ReadWriteTotalLeaveMemory"
            case readWriteTotalLeaveDisk = "ReadWriteTotalLeaveDisk"
            case readWriteTotalMemory = "ReadWriteTotalMemory"
            case readWriteTotalDisk = "ReadWriteTotalDisk"
            case readOnlyTotalLeaveMemory = "ReadOnlyTotalLeaveMemory"
            case readOnlyTotalLeaveDisk = "ReadOnlyTotalLeaveDisk"
            case readOnlyTotalMemory = "ReadOnlyTotalMemory"
            case readOnlyTotalDisk = "ReadOnlyTotalDisk"
            case instanceDeviceInfos = "InstanceDeviceInfos"
        }
    }

    /// 集群设备组信息。
    public struct InstanceDeviceInfo: TCOutputModel {
        /// 集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 读写设备组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let readWriteDevice: [DeviceInfo]?

        /// 只读设备组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let readOnlyDevice: [DeviceInfo]?

        /// 空闲设备组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let freeDevice: [DeviceInfo]?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case readWriteDevice = "ReadWriteDevice"
            case readOnlyDevice = "ReadOnlyDevice"
            case freeDevice = "FreeDevice"
        }
    }

    /// 集群扩展信息。
    public struct InstanceExpand: TCOutputModel {
        /// 集群ID
        public let instanceId: String

        /// 集群名称
        public let instanceName: String

        /// 用户ID
        public let appId: UInt64

        /// 地域
        public let region: String

        /// 可用区
        public let zone: String

        /// 集群类型： 0：一主一备，1：一主两备
        public let instanceType: Int64

        /// 集群状态: 0 集群创建中, 1 集群有效, 2 集群扩容中, 3 集群删除中, 4 集群缩容中 -1 集群已隔离 -2 集群已删除
        public let instanceStatus: Int64

        /// 创建时间
        public let createTime: String

        /// 实例自动续费标识： 0正常续费 1自动续费 2到期不续费
        public let autoRenewFlag: Int64

        /// 机型
        public let machine: String

        /// 过期时间
        public let periodEndTime: String

        /// 集群信息
        public let instanceDetail: InstanceDetail

        /// 计费侧的产品ID
        public let pid: Int64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case appId = "AppId"
            case region = "Region"
            case zone = "Zone"
            case instanceType = "InstanceType"
            case instanceStatus = "InstanceStatus"
            case createTime = "CreateTime"
            case autoRenewFlag = "AutoRenewFlag"
            case machine = "Machine"
            case periodEndTime = "PeriodEndTime"
            case instanceDetail = "InstanceDetail"
            case pid = "Pid"
        }
    }
}
