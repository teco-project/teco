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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Bm {
    /// cpu信息
    public struct CpuInfo: TCOutputModel {
        /// CPU的ID
        public let cpuId: UInt64

        /// CPU型号描述
        public let cpuDescription: String

        /// 机型序列
        public let series: UInt64

        /// 支持的RAID方式，0：有RAID卡，1：没有RAID卡
        public let containRaidCard: [UInt64]

        enum CodingKeys: String, CodingKey {
            case cpuId = "CpuId"
            case cpuDescription = "CpuDescription"
            case series = "Series"
            case containRaidCard = "ContainRaidCard"
        }
    }

    /// 自定义镜像信息
    public struct CustomImage: TCOutputModel {
        /// 镜像ID
        public let imageId: String

        /// 镜像别名
        public let imageName: String

        /// 镜像状态码
        public let imageStatus: UInt64

        /// 镜像OS名
        public let osClass: String

        /// 镜像OS版本
        public let osVersion: String

        /// OS是64还是32位
        public let osBit: UInt64

        /// 镜像大小(M)
        public let imageSize: UInt64

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 分区信息
        public let partitionInfoSet: [PartitionInfo]

        /// 适用机型
        public let deviceClassCode: String

        /// 备注
        public let imageDescription: String

        /// 原始镜像id
        public let osTypeId: UInt64

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case imageName = "ImageName"
            case imageStatus = "ImageStatus"
            case osClass = "OsClass"
            case osVersion = "OsVersion"
            case osBit = "OsBit"
            case imageSize = "ImageSize"
            case createTime = "CreateTime"
            case partitionInfoSet = "PartitionInfoSet"
            case deviceClassCode = "DeviceClassCode"
            case imageDescription = "ImageDescription"
            case osTypeId = "OsTypeId"
        }
    }

    /// 镜像制作进度列表
    public struct CustomImageProcess: TCOutputModel {
        /// 步骤
        public let stepName: String

        /// 此步骤开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 0: 已完成 1: 当前进行 2: 未开始
        public let stepType: UInt64

        enum CodingKeys: String, CodingKey {
            case stepName = "StepName"
            case startTime = "StartTime"
            case stepType = "StepType"
        }
    }

    /// 设备ID与别名
    public struct DeviceAlias: TCInputModel {
        /// 设备ID
        public let instanceId: String

        /// 设备别名
        public let alias: String

        public init(instanceId: String, alias: String) {
            self.instanceId = instanceId
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alias = "Alias"
        }
    }

    /// 物理机设备类型
    public struct DeviceClass: TCOutputModel {
        /// 机型ID
        public let deviceClassCode: String

        /// CPU描述
        public let cpuDescription: String

        /// 内存描述
        public let memDescription: String

        /// 硬盘描述
        public let diskDescription: String

        /// 是否支持RAID. 0:不支持; 1:支持
        public let haveRaidCard: UInt64

        /// 网卡描述
        public let nicDescription: String

        /// GPU描述
        public let gpuDescription: String

        /// 单价折扣
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discount: Float?

        /// 用户刊例价格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPrice: UInt64?

        /// 实际价格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realPrice: UInt64?

        /// 官网刊例价格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let normalPrice: UInt64?

        /// 设备使用场景类型
        public let deviceType: String

        /// 机型系列
        public let series: UInt64

        /// cpu的核心数。仅是物理服务器未开启超线程的核心数， 超线程的核心数为Cpu*2
        public let cpu: UInt64

        /// 内存容量。单位G
        public let mem: UInt64

        enum CodingKeys: String, CodingKey {
            case deviceClassCode = "DeviceClassCode"
            case cpuDescription = "CpuDescription"
            case memDescription = "MemDescription"
            case diskDescription = "DiskDescription"
            case haveRaidCard = "HaveRaidCard"
            case nicDescription = "NicDescription"
            case gpuDescription = "GpuDescription"
            case discount = "Discount"
            case unitPrice = "UnitPrice"
            case realPrice = "RealPrice"
            case normalPrice = "NormalPrice"
            case deviceType = "DeviceType"
            case series = "Series"
            case cpu = "Cpu"
            case mem = "Mem"
        }
    }

    /// RAID和设备分区结构
    public struct DeviceClassPartitionInfo: TCOutputModel {
        /// RAID类型ID
        public let raidId: UInt64

        /// RAID名称
        public let raid: String

        /// RAID名称（前台展示用）
        public let raidDisplay: String

        /// 系统盘总大小（单位GiB）
        public let systemDiskSize: UInt64

        /// 系统盘/分区默认大小（单位GiB）
        public let sysRootSpace: UInt64

        /// 系统盘swap分区默认大小（单位GiB）
        public let sysSwaporuefiSpace: UInt64

        /// 系统盘/usr/local分区默认大小（单位GiB）
        public let sysUsrlocalSpace: UInt64

        /// 系统盘/data分区默认大小（单位GiB）
        public let sysDataSpace: UInt64

        /// 设备是否是uefi启动方式。0:legacy启动; 1:uefi启动
        public let sysIsUefiType: UInt64

        /// 数据盘总大小
        public let dataDiskSize: UInt64

        /// 硬盘列表
        public let deviceDiskSizeInfoSet: [DeviceDiskSizeInfo]

        enum CodingKeys: String, CodingKey {
            case raidId = "RaidId"
            case raid = "Raid"
            case raidDisplay = "RaidDisplay"
            case systemDiskSize = "SystemDiskSize"
            case sysRootSpace = "SysRootSpace"
            case sysSwaporuefiSpace = "SysSwaporuefiSpace"
            case sysUsrlocalSpace = "SysUsrlocalSpace"
            case sysDataSpace = "SysDataSpace"
            case sysIsUefiType = "SysIsUefiType"
            case dataDiskSize = "DataDiskSize"
            case deviceDiskSizeInfoSet = "DeviceDiskSizeInfoSet"
        }
    }

    /// 硬盘大小的描述
    public struct DeviceDiskSizeInfo: TCOutputModel {
        /// 硬盘名称
        public let diskName: String

        /// 硬盘大小（单位GiB）
        public let diskSize: UInt64

        enum CodingKeys: String, CodingKey {
            case diskName = "DiskName"
            case diskSize = "DiskSize"
        }
    }

    /// 设备硬件配置信息
    public struct DeviceHardwareInfo: TCOutputModel {
        /// 设备实例 ID
        public let instanceId: String?

        /// 是否自定义机型
        public let isElastic: UInt64?

        /// 机型计费模式，1 为预付费，2 为后付费
        public let cpmPayMode: UInt64?

        /// 自定义机型，CPU 型号 ID（非自定义机型返回0）
        public let cpuId: UInt64?

        /// 自定义机型，内存大小, 单位 GB（非自定义机型返回0）
        public let mem: UInt64?

        /// 是否有 RAID 卡，0：没有 RAID 卡； 1：有 RAID 卡
        public let containRaidCard: UInt64?

        /// 自定义机型系统盘类型ID（若没有则返回0）
        public let systemDiskTypeId: UInt64?

        /// 自定义机型系统盘数量（若没有则返回0）
        public let systemDiskCount: UInt64?

        /// 自定义机型数据盘类型 ID（若没有则返回0）
        public let dataDiskTypeId: UInt64?

        /// 自定义机型数据盘数量（若没有则返回0）
        public let dataDiskCount: UInt64?

        /// CPU 型号描述
        public let cpuDescription: String?

        /// 内存描述
        public let memDescription: String?

        /// 磁盘描述
        public let diskDescription: String?

        /// 网卡描述
        public let nicDescription: String?

        /// 是否支持 RAID 的描述
        public let raidDescription: String?

        /// cpu的核心数。仅是物理服务器未开启超线程的核心数， 超线程的核心数为Cpu*2
        public let cpu: UInt64

        /// 机型外部代号
        public let deviceClassCode: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case isElastic = "IsElastic"
            case cpmPayMode = "CpmPayMode"
            case cpuId = "CpuId"
            case mem = "Mem"
            case containRaidCard = "ContainRaidCard"
            case systemDiskTypeId = "SystemDiskTypeId"
            case systemDiskCount = "SystemDiskCount"
            case dataDiskTypeId = "DataDiskTypeId"
            case dataDiskCount = "DataDiskCount"
            case cpuDescription = "CpuDescription"
            case memDescription = "MemDescription"
            case diskDescription = "DiskDescription"
            case nicDescription = "NicDescription"
            case raidDescription = "RaidDescription"
            case cpu = "Cpu"
            case deviceClassCode = "DeviceClassCode"
        }
    }

    /// 物理机信息
    public struct DeviceInfo: TCOutputModel {
        /// 设备唯一ID
        public let instanceId: String

        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 设备状态ID，取值：
        /// - 1：申领设备中
        /// - 2：初始化中
        /// - 4：运营中
        /// - 7：隔离中
        /// - 8：已隔离
        /// - 10：解隔离中
        /// - 16：故障中
        public let deviceStatus: UInt64

        /// 设备操作状态ID，取值：
        /// - 1：运行中
        /// - 2：正在关机
        /// - 3：已关机
        /// - 5：正在开机
        /// - 7：重启中
        /// - 9：重装中
        /// - 12：绑定EIP
        /// - 13：解绑EIP
        /// - 14：绑定LB
        /// - 15：解绑LB
        /// - 19：更换IP中
        /// - 20：制作镜像中
        /// - 21：制作镜像失败
        /// - 23：故障待重装
        /// - 24：无备件待退回
        public let operateStatus: UInt64

        /// 操作系统ID，参考接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/product/386/32902)
        public let osTypeId: UInt64

        /// RAID类型ID，参考接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/product/386/32910)
        public let raidId: UInt64

        /// 设备别名
        public let alias: String

        /// 用户AppId
        public let appId: UInt64

        /// 可用区
        public let zone: String

        /// 外网IP
        public let wanIp: String

        /// 内网IP
        public let lanIp: String

        /// 设备交付时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deliverTime: Date

        /// 设备到期时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadline: Date

        /// 自动续费标识。0: 不自动续费; 1:自动续费
        public let autoRenewFlag: UInt64

        /// 设备类型
        public let deviceClassCode: String

        /// 标签列表
        public let tags: [Tag]

        /// 计费模式。1: 预付费; 2: 后付费; 3:预付费转后付费中
        public let cpmPayMode: UInt64

        /// 带外IP
        public let dhcpIp: String

        /// 所在私有网络别名
        public let vpcName: String

        /// 所在子网别名
        public let subnetName: String

        /// 所在私有网络CIDR
        public let vpcCidrBlock: String

        /// 所在子网CIDR
        public let subnetCidrBlock: String

        /// 标识是否是竞价实例。0: 普通设备; 1: 竞价实例设备
        public let isLuckyDevice: UInt64

        /// 标识机器维保状态。Maintain: 在保;  WillExpire: 即将过保; Expire: 已过保
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maintainStatus: String?

        /// 维保信息描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maintainMessage: String?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case deviceStatus = "DeviceStatus"
            case operateStatus = "OperateStatus"
            case osTypeId = "OsTypeId"
            case raidId = "RaidId"
            case alias = "Alias"
            case appId = "AppId"
            case zone = "Zone"
            case wanIp = "WanIp"
            case lanIp = "LanIp"
            case deliverTime = "DeliverTime"
            case deadline = "Deadline"
            case autoRenewFlag = "AutoRenewFlag"
            case deviceClassCode = "DeviceClassCode"
            case tags = "Tags"
            case cpmPayMode = "CpmPayMode"
            case dhcpIp = "DhcpIp"
            case vpcName = "VpcName"
            case subnetName = "SubnetName"
            case vpcCidrBlock = "VpcCidrBlock"
            case subnetCidrBlock = "SubnetCidrBlock"
            case isLuckyDevice = "IsLuckyDevice"
            case maintainStatus = "MaintainStatus"
            case maintainMessage = "MaintainMessage"
        }
    }

    /// 设备操作日志
    public struct DeviceOperationLog: TCOutputModel {
        /// 日志的ID
        public let id: UInt64

        /// 设备ID
        public let instanceId: String

        /// 日志对应的操作任务ID
        public let taskId: UInt64

        /// 操作任务名称
        public let taskName: String

        /// 操作任务中文名称
        public let taskDescription: String

        /// 操作开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 操作结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 操作状态，0: 正在执行中；1：任务成功； 2: 任务失败。
        public let status: UInt64

        /// 操作者
        public let opUin: String

        /// 操作描述
        public let logDescription: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case instanceId = "InstanceId"
            case taskId = "TaskId"
            case taskName = "TaskName"
            case taskDescription = "TaskDescription"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case opUin = "OpUin"
            case logDescription = "LogDescription"
        }
    }

    /// 物理机分区格式
    public struct DevicePartition: TCOutputModel {
        /// 系统盘大小
        public let systemDiskSize: UInt64

        /// 数据盘大小
        public let dataDiskSize: UInt64

        /// 是否兼容Uefi
        public let sysIsUefiType: Bool

        /// root分区大小
        public let sysRootSpace: UInt64

        /// Swaporuefi分区大小
        public let sysSwaporuefiSpace: UInt64

        /// Usrlocal分区大小
        public let sysUsrlocalSpace: UInt64

        /// data分区大小
        public let sysDataSpace: UInt64

        /// 硬盘大小详情
        public let deviceDiskSizeInfoSet: [DeviceDiskSizeInfo]

        enum CodingKeys: String, CodingKey {
            case systemDiskSize = "SystemDiskSize"
            case dataDiskSize = "DataDiskSize"
            case sysIsUefiType = "SysIsUefiType"
            case sysRootSpace = "SysRootSpace"
            case sysSwaporuefiSpace = "SysSwaporuefiSpace"
            case sysUsrlocalSpace = "SysUsrlocalSpace"
            case sysDataSpace = "SysDataSpace"
            case deviceDiskSizeInfoSet = "DeviceDiskSizeInfoSet"
        }
    }

    /// 物理机机架信息
    public struct DevicePositionInfo: TCOutputModel {
        /// 设备ID
        public let instanceId: String

        /// 所在可用区
        public let zone: String

        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 业务IP
        public let lanIp: String

        /// 实例别名
        public let alias: String

        /// 机架名称
        public let rckName: String

        /// 机位
        public let posCode: UInt64

        /// 交换机名称
        public let switchName: String

        /// 设备交付时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deliverTime: Date

        /// 过期时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadline: Date

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case zone = "Zone"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case lanIp = "LanIp"
            case alias = "Alias"
            case rckName = "RckName"
            case posCode = "PosCode"
            case switchName = "SwitchName"
            case deliverTime = "DeliverTime"
            case deadline = "Deadline"
        }
    }

    /// 服务器价格信息
    public struct DevicePriceInfo: TCOutputModel {
        /// 物理机ID
        public let instanceId: String

        /// 设备型号
        public let deviceClassCode: String

        /// 是否是弹性机型，1：是，0：否
        public let isElastic: UInt64

        /// 付费模式ID, 1:预付费; 2:后付费; 3:预付费转后付费中
        public let cpmPayMode: UInt64

        /// Cpu信息描述
        public let cpuDescription: String

        /// 内存信息描述
        public let memDescription: String

        /// 硬盘信息描述
        public let diskDescription: String

        /// 网卡信息描述
        public let nicDescription: String

        /// Gpu信息描述
        public let gpuDescription: String

        /// Raid信息描述
        public let raidDescription: String

        /// 客户的单价
        public let price: UInt64

        /// 刊例单价
        public let normalPrice: UInt64

        /// 原价
        public let totalCost: UInt64

        /// 折扣价
        public let realTotalCost: UInt64

        /// 计费时长
        public let timeSpan: UInt64

        /// 计费时长单位, M:按月计费; D:按天计费
        public let timeUnit: String

        /// 商品数量
        public let goodsCount: UInt64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case deviceClassCode = "DeviceClassCode"
            case isElastic = "IsElastic"
            case cpmPayMode = "CpmPayMode"
            case cpuDescription = "CpuDescription"
            case memDescription = "MemDescription"
            case diskDescription = "DiskDescription"
            case nicDescription = "NicDescription"
            case gpuDescription = "GpuDescription"
            case raidDescription = "RaidDescription"
            case price = "Price"
            case normalPrice = "NormalPrice"
            case totalCost = "TotalCost"
            case realTotalCost = "RealTotalCost"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
            case goodsCount = "GoodsCount"
        }
    }

    /// 自定义机型磁盘的描述
    public struct DiskInfo: TCOutputModel {
        /// 磁盘ID
        public let diskTypeId: UInt64

        /// 磁盘的容量，单位为G
        public let size: UInt64

        /// 磁盘信息描述
        public let diskDescription: String

        enum CodingKeys: String, CodingKey {
            case diskTypeId = "DiskTypeId"
            case size = "Size"
            case diskDescription = "DiskDescription"
        }
    }

    /// 运行失败的自定义脚本信息
    public struct FailedTaskInfo: TCOutputModel {
        /// 运行脚本的设备ID
        public let instanceId: String

        /// 失败原因
        public let errorMsg: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case errorMsg = "ErrorMsg"
        }
    }

    /// 托管设备带外信息
    public struct HostedDeviceOutBandInfo: TCOutputModel {
        /// 物理机ID
        public let instanceId: String

        /// 带外IP
        public let outBandIp: String

        /// VPN的IP
        public let vpnIp: String

        /// VPN的端口
        public let vpnPort: UInt64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case outBandIp = "OutBandIp"
            case vpnIp = "VpnIp"
            case vpnPort = "VpnPort"
        }
    }

    /// 操作系统类型
    public struct OsInfo: TCOutputModel {
        /// 操作系统ID
        public let osTypeId: UInt64

        /// 操作系统名称
        public let osName: String

        /// 操作系统名称描述
        public let osDescription: String

        /// 操作系统英文名称
        public let osEnglishDescription: String

        /// 操作系统的分类，如CentOs Debian
        public let osClass: String

        /// 标识镜像分类。public:公共镜像; private: 专属镜像
        public let imageTag: String

        /// 操作系统，ext4文件下所支持的最大的磁盘大小。单位为T
        public let maxPartitionSize: UInt64

        /// 黑石版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let osMinorVersion: String?

        /// 黑石版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let osMinorClass: String?

        enum CodingKeys: String, CodingKey {
            case osTypeId = "OsTypeId"
            case osName = "OsName"
            case osDescription = "OsDescription"
            case osEnglishDescription = "OsEnglishDescription"
            case osClass = "OsClass"
            case imageTag = "ImageTag"
            case maxPartitionSize = "MaxPartitionSize"
            case osMinorVersion = "OsMinorVersion"
            case osMinorClass = "OsMinorClass"
        }
    }

    /// 描述设备分区信息
    public struct PartitionInfo: TCOutputModel {
        /// 分区名称
        public let name: String

        /// 分区大小
        public let size: UInt64

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case size = "Size"
        }
    }

    /// 一条预授权规则
    public struct PsaRegulation: TCOutputModel {
        /// 规则ID
        public let psaId: String

        /// 规则别名
        public let psaName: String

        /// 关联标签数量
        public let tagCount: UInt64

        /// 关联实例数量
        public let instanceCount: UInt64

        /// 故障实例数量
        public let repairCount: UInt64

        /// 故障实例上限
        public let repairLimit: UInt64

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 规则备注
        public let psaDescription: String

        /// 关联标签
        public let tags: [Tag]

        /// 关联故障类型id
        public let taskTypeIds: [UInt64]

        enum CodingKeys: String, CodingKey {
            case psaId = "PsaId"
            case psaName = "PsaName"
            case tagCount = "TagCount"
            case instanceCount = "InstanceCount"
            case repairCount = "RepairCount"
            case repairLimit = "RepairLimit"
            case createTime = "CreateTime"
            case psaDescription = "PsaDescription"
            case tags = "Tags"
            case taskTypeIds = "TaskTypeIds"
        }
    }

    /// 地域信息
    public struct RegionInfo: TCOutputModel {
        /// 地域ID
        public let region: String

        /// 地域整型ID
        public let regionId: UInt64

        /// 地域描述
        public let regionDescription: String

        /// 该地域下的可用区信息
        public let zoneInfoSet: [ZoneInfo]

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case regionId = "RegionId"
            case regionDescription = "RegionDescription"
            case zoneInfoSet = "ZoneInfoSet"
        }
    }

    /// 各实例对应的异步任务执行结果
    public struct SubtaskStatus: TCOutputModel {
        /// 实例ID
        public let instanceId: String

        /// 实例ID对应任务的状态，取值如下：
        ///
        /// 1：成功
        ///
        /// 2：失败
        ///
        /// 3：部分成功，部分失败
        ///
        /// 4：未完成
        ///
        /// 5：部分成功，部分未完成
        ///
        /// 6：部分未完成，部分失败
        ///
        /// 7：部分未完成，部分失败，部分成功
        public let taskStatus: UInt64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case taskStatus = "TaskStatus"
        }
    }

    /// 成功运行的自定义脚本信息
    public struct SuccessTaskInfo: TCOutputModel {
        /// 运行脚本的设备ID
        public let instanceId: String

        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 黑石自定义脚本运行任务ID
        public let cmdTaskId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case taskId = "TaskId"
            case cmdTaskId = "CmdTaskId"
        }
    }

    /// 标签键与值
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签键对应的值
        public let tagValues: [String]

        public init(tagKey: String, tagValues: [String]) {
            self.tagKey = tagKey
            self.tagValues = tagValues
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValues = "TagValues"
        }
    }

    /// 维护平台维修任务信息
    public struct TaskInfo: TCOutputModel {
        /// 任务id
        public let taskId: String

        /// 主机id
        public let instanceId: String

        /// 主机别名
        public let alias: String

        /// 故障类型id
        public let taskTypeId: UInt64

        /// 任务状态id
        public let taskStatus: UInt64

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 授权时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var authTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 任务详情
        public let taskDetail: String

        /// 设备状态
        public let deviceStatus: UInt64

        /// 设备操作状态
        public let operateStatus: UInt64

        /// 可用区
        public let zone: String

        /// 地域
        public let region: String

        /// 所属网络
        public let vpcId: String

        /// 所在子网
        public let subnetId: String

        /// 子网名
        public let subnetName: String

        /// VPC名
        public let vpcName: String

        /// VpcCidrBlock
        public let vpcCidrBlock: String

        /// SubnetCidrBlock
        public let subnetCidrBlock: String

        /// 公网ip
        public let wanIp: String

        /// 内网IP
        public let lanIp: String

        /// 管理IP
        public let mgtIp: String

        /// 故障类中文名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskTypeName: String?

        /// 故障类型，取值：unconfirmed (不明确故障)；redundancy (有冗余故障)；nonredundancy (无冗余故障)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskSubType: String?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case instanceId = "InstanceId"
            case alias = "Alias"
            case taskTypeId = "TaskTypeId"
            case taskStatus = "TaskStatus"
            case createTime = "CreateTime"
            case authTime = "AuthTime"
            case endTime = "EndTime"
            case taskDetail = "TaskDetail"
            case deviceStatus = "DeviceStatus"
            case operateStatus = "OperateStatus"
            case zone = "Zone"
            case region = "Region"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case subnetName = "SubnetName"
            case vpcName = "VpcName"
            case vpcCidrBlock = "VpcCidrBlock"
            case subnetCidrBlock = "SubnetCidrBlock"
            case wanIp = "WanIp"
            case lanIp = "LanIp"
            case mgtIp = "MgtIp"
            case taskTypeName = "TaskTypeName"
            case taskSubType = "TaskSubType"
        }
    }

    /// 维修任务操作日志
    public struct TaskOperationLog: TCOutputModel {
        /// 操作步骤
        public let taskStep: String

        /// 操作人
        public let `operator`: String

        /// 操作描述
        public let operationDetail: String

        /// 操作时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var operationTime: Date

        enum CodingKeys: String, CodingKey {
            case taskStep = "TaskStep"
            case `operator` = "Operator"
            case operationDetail = "OperationDetail"
            case operationTime = "OperationTime"
        }
    }

    /// 故障id对应故障名列表
    public struct TaskType: TCOutputModel {
        /// 故障类ID
        public let typeId: UInt64

        /// 故障类中文名
        public let typeName: String

        /// 故障类型父类
        public let taskSubType: String

        enum CodingKeys: String, CodingKey {
            case typeId = "TypeId"
            case typeName = "TypeName"
            case taskSubType = "TaskSubType"
        }
    }

    /// 脚本信息
    public struct UserCmd: TCOutputModel {
        /// 用户自定义脚本名
        public let alias: String

        /// AppId
        public let appId: UInt64

        /// 脚本自增ID
        public let autoId: UInt64

        /// 脚本ID
        public let cmdId: String

        /// 脚本内容
        public let content: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var modifyTime: Date

        /// 命令适用的操作系统类型
        public let osType: String

        enum CodingKeys: String, CodingKey {
            case alias = "Alias"
            case appId = "AppId"
            case autoId = "AutoId"
            case cmdId = "CmdId"
            case content = "Content"
            case createTime = "CreateTime"
            case modifyTime = "ModifyTime"
            case osType = "OsType"
        }
    }

    /// 自定义脚本任务信息
    public struct UserCmdTask: TCOutputModel {
        /// 任务ID
        public let taskId: String

        /// 任务状态ID，取值: -1(进行中) 0(结束)
        public let status: Int64

        /// 脚本名称
        public let alias: String

        /// 脚本ID
        public let cmdId: String

        /// 运行实例数量
        public let instanceCount: UInt64

        /// 运行成功数量
        public let successCount: UInt64

        /// 运行失败数量
        public let failureCount: UInt64

        /// 执行开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var runBeginTime: Date

        /// 执行结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var runEndTime: Date

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case alias = "Alias"
            case cmdId = "CmdId"
            case instanceCount = "InstanceCount"
            case successCount = "SuccessCount"
            case failureCount = "FailureCount"
            case runBeginTime = "RunBeginTime"
            case runEndTime = "RunEndTime"
        }
    }

    /// 自定义脚本任务详细信息
    public struct UserCmdTaskInfo: TCOutputModel {
        /// 自动编号，可忽略
        public let autoId: UInt64

        /// 任务ID
        public let taskId: String

        /// 任务开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var runBeginTime: Date

        /// 任务结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var runEndTime: Date

        /// 任务状态ID，取值为 -1：进行中；0：成功；>0：失败错误码
        public let status: Int64

        /// 设备别名
        public let instanceName: String

        /// 设备ID
        public let instanceId: String

        /// 私有网络名
        public let vpcName: String

        /// 私有网络整型ID
        public let vpcId: String

        /// 私有网络Cidr
        public let vpcCidrBlock: String

        /// 子网名
        public let subnetName: String

        /// 子网ID
        public let subnetId: String

        /// 子网Cidr
        public let subnetCidrBlock: String

        /// 内网IP
        public let lanIp: String

        /// 脚本内容，base64编码后的值
        public let cmdContent: String

        /// 脚本参数，base64编码后的值
        public let cmdParam: String

        /// 脚本执行结果，base64编码后的值
        public let cmdResult: String

        /// 用户AppId
        public let appId: UInt64

        /// 用户执行脚本结束退出的返回值，没有返回值为-1
        public let lastShellExit: Int64

        enum CodingKeys: String, CodingKey {
            case autoId = "AutoId"
            case taskId = "TaskId"
            case runBeginTime = "RunBeginTime"
            case runEndTime = "RunEndTime"
            case status = "Status"
            case instanceName = "InstanceName"
            case instanceId = "InstanceId"
            case vpcName = "VpcName"
            case vpcId = "VpcId"
            case vpcCidrBlock = "VpcCidrBlock"
            case subnetName = "SubnetName"
            case subnetId = "SubnetId"
            case subnetCidrBlock = "SubnetCidrBlock"
            case lanIp = "LanIp"
            case cmdContent = "CmdContent"
            case cmdParam = "CmdParam"
            case cmdResult = "CmdResult"
            case appId = "AppId"
            case lastShellExit = "LastShellExit"
        }
    }

    /// 可用区信息
    public struct ZoneInfo: TCOutputModel {
        /// 可用区ID
        public let zone: String

        /// 可用区整型ID
        public let zoneId: UInt64

        /// 可用区描述
        public let zoneDescription: String

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case zoneId = "ZoneId"
            case zoneDescription = "ZoneDescription"
        }
    }
}
