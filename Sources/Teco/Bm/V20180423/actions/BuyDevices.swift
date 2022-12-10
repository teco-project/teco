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

extension Bm {
    /// 购买物理机
    ///
    /// 购买黑石物理机
    @inlinable
    public func buyDevices(_ input: BuyDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BuyDevicesResponse > {
        self.client.execute(action: "BuyDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 购买物理机
    ///
    /// 购买黑石物理机
    @inlinable
    public func buyDevices(_ input: BuyDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BuyDevicesResponse {
        try await self.client.execute(action: "BuyDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BuyDevices请求参数结构体
    public struct BuyDevicesRequest: TCRequestModel {
        /// 可用区ID。通过接口[查询地域以及可用区(DescribeRegions)](https://cloud.tencent.com/document/api/386/33564)获取可用区信息
        public let zone: String
        
        /// 部署服务器的操作系统ID。通过接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/product/386/32902)获取操作系统信息
        public let osTypeId: UInt64
        
        /// RAID类型ID。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取RAID信息
        public let raidId: UInt64
        
        /// 购买数量
        public let goodsCount: UInt64
        
        /// 购买至私有网络ID
        public let vpcId: String
        
        /// 购买至子网ID
        public let subnetId: String
        
        /// 购买的机型ID。通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)获取机型信息
        public let deviceClassCode: String
        
        /// 购买时长单位，取值：M(月) D(天)
        public let timeUnit: String
        
        /// 购买时长
        public let timeSpan: UInt64
        
        /// 是否安装安全Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needSecurityAgent: UInt64?
        
        /// 是否安装监控Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needMonitorAgent: UInt64?
        
        /// 是否安装EMR Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needEMRAgent: UInt64?
        
        /// 是否安装EMR软件包，取值：1(安装) 0(不安装)，默认取值0
        public let needEMRSoftware: UInt64?
        
        /// 是否分配弹性公网IP，取值：1(分配) 0(不分配)，默认取值0
        public let applyEip: UInt64?
        
        /// 弹性公网IP计费模式，取值：Flow(按流量计费) Bandwidth(按带宽计费)，默认取值Flow
        public let eipPayMode: String?
        
        /// 弹性公网IP带宽限制，单位Mb
        public let eipBandwidth: UInt64?
        
        /// 数据盘是否格式化，取值：1(格式化) 0(不格式化)，默认取值为1
        public let isZoning: UInt64?
        
        /// 物理机计费模式，取值：1(预付费) 2(后付费)，默认取值为1
        public let cpmPayMode: UInt64?
        
        /// 自定义镜像ID，取值生效时用自定义镜像部署物理机
        public let imageId: String?
        
        /// 设置Linux root或Windows Administrator的密码
        public let password: String?
        
        /// 自动续费标志位，取值：1(自动续费) 0(不自动续费)，默认取值0
        public let autoRenewFlag: UInt64?
        
        /// 系统盘根分区大小，单位为G，默认取值10G。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取根分区信息
        public let sysRootSpace: UInt64?
        
        /// 系统盘swap分区或/boot/efi分区的大小，单位为G。若是uefi启动的机器，分区为/boot/efi，且此值是默认是2G。 普通机器为swap分区，可以不指定此分区。 机型是否是uefi启动，参见接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)
        public let sysSwaporuefiSpace: UInt64?
        
        /// /usr/local分区大小，单位为G
        public let sysUsrlocalSpace: UInt64?
        
        /// /data分区大小，单位为G。如果系统盘还有剩余大小，会分配给/data分区。（特殊情况：如果剩余空间不足10G，并且没有指定/data分区，则剩余空间会分配给Root分区）
        public let sysDataSpace: UInt64?
        
        /// 是否开启超线程，取值：1(开启) 0(关闭)，默认取值1
        public let hyperThreading: UInt64?
        
        /// 指定的内网IP列表，不指定时自动分配
        public let lanIps: [String]?
        
        /// 设备名称列表
        public let aliases: [String]?
        
        /// CPU型号ID，自定义机型需要传入，取值：
        /// <br/><li>1: E5-2620v3 (6核) &#42; 2</li><li>2: E5-2680v4 (14核) &#42; 2</li><li>3: E5-2670v3 (12核) &#42; 2</li><li>4: E5-2620v4 (8核) &#42; 2</li><li>5: 4110 (8核) &#42; 2</li><li>6: 6133 (20核) &#42; 2</li><br/>
        public let cpuId: UInt64?
        
        /// 是否有RAID卡，取值：1(有) 0(无)，自定义机型需要传入
        public let containRaidCard: UInt64?
        
        /// 内存大小，单位为G，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        public let memSize: UInt64?
        
        /// 系统盘ID，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        public let systemDiskTypeId: UInt64?
        
        /// 系统盘数量，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        public let systemDiskCount: UInt64?
        
        /// 数据盘ID，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        public let dataDiskTypeId: UInt64?
        
        /// 数据盘数量，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        public let dataDiskCount: UInt64?
        
        /// 绑定的标签列表
        public let tags: [Tag]?
        
        /// 指定数据盘的文件系统格式，当前支持 EXT4和XFS选项， 默认为EXT4。 参数适用于数据盘和Linux， 且在IsZoning为1时生效
        public let fileSystem: String?
        
        /// 此参数是为了防止重复发货。如果两次调用传入相同的BuySession，只会发货一次。 不要以设备别名作为BuySession，这样只会第一次购买成功。参数长度为128位，合法字符为大小字母，数字，下划线，横线。
        public let buySession: String?
        
        /// 绑定已有的安全组ID。仅在NeedSecurityAgent为1时生效
        public let sgId: String?
        
        /// 安全组模板ID，由模板创建新安全组并绑定。TemplateId和SgId不能同时传入
        public let templateId: String?
        
        public init (zone: String, osTypeId: UInt64, raidId: UInt64, goodsCount: UInt64, vpcId: String, subnetId: String, deviceClassCode: String, timeUnit: String, timeSpan: UInt64, needSecurityAgent: UInt64?, needMonitorAgent: UInt64?, needEMRAgent: UInt64?, needEMRSoftware: UInt64?, applyEip: UInt64?, eipPayMode: String?, eipBandwidth: UInt64?, isZoning: UInt64?, cpmPayMode: UInt64?, imageId: String?, password: String?, autoRenewFlag: UInt64?, sysRootSpace: UInt64?, sysSwaporuefiSpace: UInt64?, sysUsrlocalSpace: UInt64?, sysDataSpace: UInt64?, hyperThreading: UInt64?, lanIps: [String]?, aliases: [String]?, cpuId: UInt64?, containRaidCard: UInt64?, memSize: UInt64?, systemDiskTypeId: UInt64?, systemDiskCount: UInt64?, dataDiskTypeId: UInt64?, dataDiskCount: UInt64?, tags: [Tag]?, fileSystem: String?, buySession: String?, sgId: String?, templateId: String?) {
            self.zone = zone
            self.osTypeId = osTypeId
            self.raidId = raidId
            self.goodsCount = goodsCount
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.deviceClassCode = deviceClassCode
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
            self.needSecurityAgent = needSecurityAgent
            self.needMonitorAgent = needMonitorAgent
            self.needEMRAgent = needEMRAgent
            self.needEMRSoftware = needEMRSoftware
            self.applyEip = applyEip
            self.eipPayMode = eipPayMode
            self.eipBandwidth = eipBandwidth
            self.isZoning = isZoning
            self.cpmPayMode = cpmPayMode
            self.imageId = imageId
            self.password = password
            self.autoRenewFlag = autoRenewFlag
            self.sysRootSpace = sysRootSpace
            self.sysSwaporuefiSpace = sysSwaporuefiSpace
            self.sysUsrlocalSpace = sysUsrlocalSpace
            self.sysDataSpace = sysDataSpace
            self.hyperThreading = hyperThreading
            self.lanIps = lanIps
            self.aliases = aliases
            self.cpuId = cpuId
            self.containRaidCard = containRaidCard
            self.memSize = memSize
            self.systemDiskTypeId = systemDiskTypeId
            self.systemDiskCount = systemDiskCount
            self.dataDiskTypeId = dataDiskTypeId
            self.dataDiskCount = dataDiskCount
            self.tags = tags
            self.fileSystem = fileSystem
            self.buySession = buySession
            self.sgId = sgId
            self.templateId = templateId
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case osTypeId = "OsTypeId"
            case raidId = "RaidId"
            case goodsCount = "GoodsCount"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case deviceClassCode = "DeviceClassCode"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case needSecurityAgent = "NeedSecurityAgent"
            case needMonitorAgent = "NeedMonitorAgent"
            case needEMRAgent = "NeedEMRAgent"
            case needEMRSoftware = "NeedEMRSoftware"
            case applyEip = "ApplyEip"
            case eipPayMode = "EipPayMode"
            case eipBandwidth = "EipBandwidth"
            case isZoning = "IsZoning"
            case cpmPayMode = "CpmPayMode"
            case imageId = "ImageId"
            case password = "Password"
            case autoRenewFlag = "AutoRenewFlag"
            case sysRootSpace = "SysRootSpace"
            case sysSwaporuefiSpace = "SysSwaporuefiSpace"
            case sysUsrlocalSpace = "SysUsrlocalSpace"
            case sysDataSpace = "SysDataSpace"
            case hyperThreading = "HyperThreading"
            case lanIps = "LanIps"
            case aliases = "Aliases"
            case cpuId = "CpuId"
            case containRaidCard = "ContainRaidCard"
            case memSize = "MemSize"
            case systemDiskTypeId = "SystemDiskTypeId"
            case systemDiskCount = "SystemDiskCount"
            case dataDiskTypeId = "DataDiskTypeId"
            case dataDiskCount = "DataDiskCount"
            case tags = "Tags"
            case fileSystem = "FileSystem"
            case buySession = "BuySession"
            case sgId = "SgId"
            case templateId = "TemplateId"
        }
    }
    
    /// BuyDevices返回参数结构体
    public struct BuyDevicesResponse: TCResponseModel {
        /// 购买的物理机实例ID列表
        public let instanceIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }
}