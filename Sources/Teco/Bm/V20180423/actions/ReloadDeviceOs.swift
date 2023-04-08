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

import Logging
import NIOCore
import TecoCore

extension Bm {
    /// ReloadDeviceOs请求参数结构体
    public struct ReloadDeviceOsRequest: TCRequestModel {
        /// 设备的唯一ID
        public let instanceId: String

        /// 密码。 用户设置的linux root或Windows Administrator密码。密码校验规则: <li> Windows机器密码需12到16位，至少包括三项 `[a-z]`,`[A-Z]`,`[0-9]`和`[()`'`~!@#$%^&*-+=_`|`{}[]:;'<>,.?/]`的特殊符号, 密码不能包含Administrator(不区分大小写); <li> Linux机器密码需8到16位，至少包括两项`[a-z,A-Z]`,`[0-9]`和`[()`'`~!@#$%^&*-+=_`|`{}[]:;'<>,.?/]`的特殊符号
        public let password: String

        /// 操作系统类型ID。通过接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/api/386/32902)获取操作系统信息
        public let osTypeId: UInt64?

        /// RAID类型ID。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取RAID信息
        public let raidId: UInt64?

        /// 是否格式化数据盘。0: 不格式化（默认值）；1：格式化
        public let isZoning: UInt64?

        /// 系统盘根分区大小，默认是10G。系统盘的大小参考接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)
        public let sysRootSpace: UInt64?

        /// 系统盘swap分区或/boot/efi分区的大小。若是uefi启动的机器，分区为/boot/efi ,且此值是默认是2G。普通机器为swap分区，可以不指定此分区。机型是否是uefi启动，参考接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)
        public let sysSwaporuefiSpace: UInt64?

        /// /usr/local分区大小
        public let sysUsrlocalSpace: UInt64?

        /// 重装到新的私有网络的ID。如果改变VPC子网，则要求与SubnetId同时传参，否则可不填
        public let vpcId: String?

        /// 重装到新的子网的ID。如果改变VPC子网，则要求与VpcId同时传参，否则可不填
        public let subnetId: String?

        /// 重装指定IP地址
        public let lanIp: String?

        /// 指定是否开启超线程。 0：关闭超线程；1：开启超线程（默认值）
        public let hyperThreading: UInt64?

        /// 自定义镜像ID。传此字段则用自定义镜像重装
        public let imageId: String?

        /// 指定数据盘的文件系统格式，当前支持 EXT4和XFS选项， 默认为EXT4。 参数适用于数据盘和Linux， 且在IsZoning为1时生效
        public let fileSystem: String?

        /// 是否安装安全Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needSecurityAgent: UInt64?

        /// 是否安装监控Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needMonitorAgent: UInt64?

        /// 是否安装EMR Agent，取值：1(安装) 0(不安装)，默认取值0
        public let needEMRAgent: UInt64?

        /// 是否安装EMR软件包，取值：1(安装) 0(不安装)，默认取值0
        public let needEMRSoftware: UInt64?

        /// 是否保留安全组配置，取值：1(保留) 0(不保留)，默认取值0
        public let reserveSgConfig: UInt64?

        /// /data分区大小，可不填。除root、swap、usr/local的剩余空间会自动分配到data分区
        public let sysDataSpace: UInt64?

        public init(instanceId: String, password: String, osTypeId: UInt64? = nil, raidId: UInt64? = nil, isZoning: UInt64? = nil, sysRootSpace: UInt64? = nil, sysSwaporuefiSpace: UInt64? = nil, sysUsrlocalSpace: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, lanIp: String? = nil, hyperThreading: UInt64? = nil, imageId: String? = nil, fileSystem: String? = nil, needSecurityAgent: UInt64? = nil, needMonitorAgent: UInt64? = nil, needEMRAgent: UInt64? = nil, needEMRSoftware: UInt64? = nil, reserveSgConfig: UInt64? = nil, sysDataSpace: UInt64? = nil) {
            self.instanceId = instanceId
            self.password = password
            self.osTypeId = osTypeId
            self.raidId = raidId
            self.isZoning = isZoning
            self.sysRootSpace = sysRootSpace
            self.sysSwaporuefiSpace = sysSwaporuefiSpace
            self.sysUsrlocalSpace = sysUsrlocalSpace
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.lanIp = lanIp
            self.hyperThreading = hyperThreading
            self.imageId = imageId
            self.fileSystem = fileSystem
            self.needSecurityAgent = needSecurityAgent
            self.needMonitorAgent = needMonitorAgent
            self.needEMRAgent = needEMRAgent
            self.needEMRSoftware = needEMRSoftware
            self.reserveSgConfig = reserveSgConfig
            self.sysDataSpace = sysDataSpace
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case password = "Password"
            case osTypeId = "OsTypeId"
            case raidId = "RaidId"
            case isZoning = "IsZoning"
            case sysRootSpace = "SysRootSpace"
            case sysSwaporuefiSpace = "SysSwaporuefiSpace"
            case sysUsrlocalSpace = "SysUsrlocalSpace"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case lanIp = "LanIp"
            case hyperThreading = "HyperThreading"
            case imageId = "ImageId"
            case fileSystem = "FileSystem"
            case needSecurityAgent = "NeedSecurityAgent"
            case needMonitorAgent = "NeedMonitorAgent"
            case needEMRAgent = "NeedEMRAgent"
            case needEMRSoftware = "NeedEMRSoftware"
            case reserveSgConfig = "ReserveSgConfig"
            case sysDataSpace = "SysDataSpace"
        }
    }

    /// ReloadDeviceOs返回参数结构体
    public struct ReloadDeviceOsResponse: TCResponseModel {
        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 重装操作系统
    @inlinable
    public func reloadDeviceOs(_ input: ReloadDeviceOsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadDeviceOsResponse> {
        self.client.execute(action: "ReloadDeviceOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重装操作系统
    @inlinable
    public func reloadDeviceOs(_ input: ReloadDeviceOsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadDeviceOsResponse {
        try await self.client.execute(action: "ReloadDeviceOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重装操作系统
    @inlinable
    public func reloadDeviceOs(instanceId: String, password: String, osTypeId: UInt64? = nil, raidId: UInt64? = nil, isZoning: UInt64? = nil, sysRootSpace: UInt64? = nil, sysSwaporuefiSpace: UInt64? = nil, sysUsrlocalSpace: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, lanIp: String? = nil, hyperThreading: UInt64? = nil, imageId: String? = nil, fileSystem: String? = nil, needSecurityAgent: UInt64? = nil, needMonitorAgent: UInt64? = nil, needEMRAgent: UInt64? = nil, needEMRSoftware: UInt64? = nil, reserveSgConfig: UInt64? = nil, sysDataSpace: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadDeviceOsResponse> {
        self.reloadDeviceOs(.init(instanceId: instanceId, password: password, osTypeId: osTypeId, raidId: raidId, isZoning: isZoning, sysRootSpace: sysRootSpace, sysSwaporuefiSpace: sysSwaporuefiSpace, sysUsrlocalSpace: sysUsrlocalSpace, vpcId: vpcId, subnetId: subnetId, lanIp: lanIp, hyperThreading: hyperThreading, imageId: imageId, fileSystem: fileSystem, needSecurityAgent: needSecurityAgent, needMonitorAgent: needMonitorAgent, needEMRAgent: needEMRAgent, needEMRSoftware: needEMRSoftware, reserveSgConfig: reserveSgConfig, sysDataSpace: sysDataSpace), region: region, logger: logger, on: eventLoop)
    }

    /// 重装操作系统
    @inlinable
    public func reloadDeviceOs(instanceId: String, password: String, osTypeId: UInt64? = nil, raidId: UInt64? = nil, isZoning: UInt64? = nil, sysRootSpace: UInt64? = nil, sysSwaporuefiSpace: UInt64? = nil, sysUsrlocalSpace: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, lanIp: String? = nil, hyperThreading: UInt64? = nil, imageId: String? = nil, fileSystem: String? = nil, needSecurityAgent: UInt64? = nil, needMonitorAgent: UInt64? = nil, needEMRAgent: UInt64? = nil, needEMRSoftware: UInt64? = nil, reserveSgConfig: UInt64? = nil, sysDataSpace: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadDeviceOsResponse {
        try await self.reloadDeviceOs(.init(instanceId: instanceId, password: password, osTypeId: osTypeId, raidId: raidId, isZoning: isZoning, sysRootSpace: sysRootSpace, sysSwaporuefiSpace: sysSwaporuefiSpace, sysUsrlocalSpace: sysUsrlocalSpace, vpcId: vpcId, subnetId: subnetId, lanIp: lanIp, hyperThreading: hyperThreading, imageId: imageId, fileSystem: fileSystem, needSecurityAgent: needSecurityAgent, needMonitorAgent: needMonitorAgent, needEMRAgent: needEMRAgent, needEMRSoftware: needEMRSoftware, reserveSgConfig: reserveSgConfig, sysDataSpace: sysDataSpace), region: region, logger: logger, on: eventLoop)
    }
}
