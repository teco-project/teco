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

import TecoCore

extension Iotvideo {
    /// DescribeDeviceEventHistory请求参数结构体
    public struct DescribeDeviceEventHistoryRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 搜索的事件类型：alert 表示告警，fault 表示故障，info 表示信息，为空则表示查询上述所有类型事件
        public let type: String?

        /// 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        public let startTime: UInt64?

        /// 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        public let endTime: UInt64?

        /// 搜索上下文, 用作查询游标
        public let context: String?

        /// 单次获取的历史数据项目的最大数量, 缺省10
        public let size: UInt64?

        /// 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        public let eventId: String?

        public init(productId: String, deviceName: String, type: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.type = type
            self.startTime = startTime
            self.endTime = endTime
            self.context = context
            self.size = size
            self.eventId = eventId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case context = "Context"
            case size = "Size"
            case eventId = "EventId"
        }
    }

    /// DescribeDeviceEventHistory返回参数结构体
    public struct DescribeDeviceEventHistoryResponse: TCResponseModel {
        /// 搜索上下文, 用作查询游标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 搜索结果数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 搜索结果是否已经结束
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listover: Bool?

        /// 搜集结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventHistory: [EventHistoryItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case total = "Total"
            case listover = "Listover"
            case eventHistory = "EventHistory"
            case requestId = "RequestId"
        }
    }

    /// 获取设备的历史事件
    @inlinable
    public func describeDeviceEventHistory(_ input: DescribeDeviceEventHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceEventHistoryResponse> {
        self.client.execute(action: "DescribeDeviceEventHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备的历史事件
    @inlinable
    public func describeDeviceEventHistory(_ input: DescribeDeviceEventHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceEventHistoryResponse {
        try await self.client.execute(action: "DescribeDeviceEventHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备的历史事件
    @inlinable
    public func describeDeviceEventHistory(productId: String, deviceName: String, type: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceEventHistoryResponse> {
        self.describeDeviceEventHistory(.init(productId: productId, deviceName: deviceName, type: type, startTime: startTime, endTime: endTime, context: context, size: size, eventId: eventId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备的历史事件
    @inlinable
    public func describeDeviceEventHistory(productId: String, deviceName: String, type: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, context: String? = nil, size: UInt64? = nil, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceEventHistoryResponse {
        try await self.describeDeviceEventHistory(.init(productId: productId, deviceName: deviceName, type: type, startTime: startTime, endTime: endTime, context: context, size: size, eventId: eventId), region: region, logger: logger, on: eventLoop)
    }
}
