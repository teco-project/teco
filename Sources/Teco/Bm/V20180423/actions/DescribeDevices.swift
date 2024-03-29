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
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Bm {
    /// DescribeDevices请求参数结构体
    public struct DescribeDevicesRequest: TCPaginatedRequest {
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
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$deadlineStartTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineStartTime: Date?

        /// 设备到期时间查询的结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$deadlineEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineEndTime: Date?

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

        public init(offset: UInt64, limit: UInt64, deviceClassCode: String? = nil, instanceIds: [String]? = nil, wanIps: [String]? = nil, lanIps: [String]? = nil, alias: String? = nil, vagueIp: String? = nil, deadlineStartTime: Date? = nil, deadlineEndTime: Date? = nil, autoRenewFlag: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, tags: [Tag]? = nil, deviceType: String? = nil, isLuckyDevice: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, maintainStatus: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.deviceClassCode = deviceClassCode
            self.instanceIds = instanceIds
            self.wanIps = wanIps
            self.lanIps = lanIps
            self.alias = alias
            self.vagueIp = vagueIp
            self._deadlineStartTime = .init(wrappedValue: deadlineStartTime)
            self._deadlineEndTime = .init(wrappedValue: deadlineEndTime)
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

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDevicesResponse) -> DescribeDevicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, deviceClassCode: self.deviceClassCode, instanceIds: self.instanceIds, wanIps: self.wanIps, lanIps: self.lanIps, alias: self.alias, vagueIp: self.vagueIp, deadlineStartTime: self.deadlineStartTime, deadlineEndTime: self.deadlineEndTime, autoRenewFlag: self.autoRenewFlag, vpcId: self.vpcId, subnetId: self.subnetId, tags: self.tags, deviceType: self.deviceType, isLuckyDevice: self.isLuckyDevice, orderField: self.orderField, order: self.order, maintainStatus: self.maintainStatus)
        }
    }

    /// DescribeDevices返回参数结构体
    public struct DescribeDevicesResponse: TCPaginatedResponse {
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

        /// Extract the returned ``DeviceInfo`` list from the paginated response.
        public func getItems() -> [DeviceInfo] {
            self.deviceInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(offset: UInt64, limit: UInt64, deviceClassCode: String? = nil, instanceIds: [String]? = nil, wanIps: [String]? = nil, lanIps: [String]? = nil, alias: String? = nil, vagueIp: String? = nil, deadlineStartTime: Date? = nil, deadlineEndTime: Date? = nil, autoRenewFlag: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, tags: [Tag]? = nil, deviceType: String? = nil, isLuckyDevice: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, maintainStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.describeDevices(.init(offset: offset, limit: limit, deviceClassCode: deviceClassCode, instanceIds: instanceIds, wanIps: wanIps, lanIps: lanIps, alias: alias, vagueIp: vagueIp, deadlineStartTime: deadlineStartTime, deadlineEndTime: deadlineEndTime, autoRenewFlag: autoRenewFlag, vpcId: vpcId, subnetId: subnetId, tags: tags, deviceType: deviceType, isLuckyDevice: isLuckyDevice, orderField: orderField, order: order, maintainStatus: maintainStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevices(offset: UInt64, limit: UInt64, deviceClassCode: String? = nil, instanceIds: [String]? = nil, wanIps: [String]? = nil, lanIps: [String]? = nil, alias: String? = nil, vagueIp: String? = nil, deadlineStartTime: Date? = nil, deadlineEndTime: Date? = nil, autoRenewFlag: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, tags: [Tag]? = nil, deviceType: String? = nil, isLuckyDevice: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, maintainStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.describeDevices(.init(offset: offset, limit: limit, deviceClassCode: deviceClassCode, instanceIds: instanceIds, wanIps: wanIps, lanIps: lanIps, alias: alias, vagueIp: vagueIp, deadlineStartTime: deadlineStartTime, deadlineEndTime: deadlineEndTime, autoRenewFlag: autoRenewFlag, vpcId: vpcId, subnetId: subnetId, tags: tags, deviceType: deviceType, isLuckyDevice: isLuckyDevice, orderField: orderField, order: order, maintainStatus: maintainStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    @inlinable @discardableResult
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询物理机信息
    ///
    /// 查询物理服务器，可以按照实例，业务IP等过滤
    ///
    /// - Returns: `AsyncSequence`s of ``DeviceInfo`` and ``DescribeDevicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDevicesPaginator(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }
}
