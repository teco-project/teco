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

extension Bm {
    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDevicesResponse > {
        self.client.execute(action: "DescribeDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.client.execute(action: "DescribeDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDevices请求参数结构体
    public struct DescribeDevicesRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64
        
        /// 机型ID，通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)查询
        public let deviceClassCode: String?
        
        /// 设备ID数组
        public let instanceIds: [String]?
        
        /// 外网IP数组
        public let wanIps: [String]?
        
        /// 内网IP数组
        public let lanIps: [String]?
        
        /// 设备名称
        public let alias: String?
        
        /// 模糊IP查询
        public let vagueIp: String?
        
        /// 设备到期时间查询的起始时间
        public let deadlineStartTime: Date?
        
        /// 设备到期时间查询的结束时间
        public let deadlineEndTime: Date?
        
        /// 自动续费标志 0:不自动续费，1:自动续费
        public let autoRenewFlag: UInt64?
        
        /// 私有网络唯一ID
        public let vpcId: String?
        
        /// 子网唯一ID
        public let subnetId: String?
        
        /// 标签列表
        public let tags: [Tag]?
        
        /// 设备类型，取值有: compute(计算型), standard(标准型), storage(存储型) 等
        public let deviceType: String?
        
        /// 竞价实例机器的过滤。如果未指定此参数，则不做过滤。0: 查询非竞价实例的机器; 1: 查询竞价实例的机器。
        public let isLuckyDevice: UInt64?
        
        /// 排序字段
        public let orderField: String?
        
        /// 排序方式，取值：0:增序(默认)，1:降序
        public let order: UInt64?
        
        /// 按照维保方式过滤。可取值为 Maintain: 在保;  WillExpire: 即将过保; Expire: 已过保
        public let maintainStatus: String?
        
        public init (offset: UInt64, limit: UInt64, deviceClassCode: String?, instanceIds: [String]?, wanIps: [String]?, lanIps: [String]?, alias: String?, vagueIp: String?, deadlineStartTime: Date?, deadlineEndTime: Date?, autoRenewFlag: UInt64?, vpcId: String?, subnetId: String?, tags: [Tag]?, deviceType: String?, isLuckyDevice: UInt64?, orderField: String?, order: UInt64?, maintainStatus: String?) {
            self.offset = offset
            self.limit = limit
            self.deviceClassCode = deviceClassCode
            self.instanceIds = instanceIds
            self.wanIps = wanIps
            self.lanIps = lanIps
            self.alias = alias
            self.vagueIp = vagueIp
            self.deadlineStartTime = deadlineStartTime
            self.deadlineEndTime = deadlineEndTime
            self.autoRenewFlag = autoRenewFlag
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.tags = tags
            self.deviceType = deviceType
            self.isLuckyDevice = isLuckyDevice
            self.orderField = orderField
            self.order = order
            self.maintainStatus = maintainStatus
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case deviceClassCode = "DeviceClassCode"
            case instanceIds = "InstanceIds"
            case wanIps = "WanIps"
            case lanIps = "LanIps"
            case alias = "Alias"
            case vagueIp = "VagueIp"
            case deadlineStartTime = "DeadlineStartTime"
            case deadlineEndTime = "DeadlineEndTime"
            case autoRenewFlag = "AutoRenewFlag"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case tags = "Tags"
            case deviceType = "DeviceType"
            case isLuckyDevice = "IsLuckyDevice"
            case orderField = "OrderField"
            case order = "Order"
            case maintainStatus = "MaintainStatus"
        }
    }
    
    /// DescribeDevices返回参数结构体
    public struct DescribeDevicesResponse: TCResponseModel {
        /// 返回数量
        public let totalCount: UInt64
        
        /// 物理机信息列表
        public let deviceInfoSet: [DeviceInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceInfoSet = "DeviceInfoSet"
            case requestId = "RequestId"
        }
    }
}