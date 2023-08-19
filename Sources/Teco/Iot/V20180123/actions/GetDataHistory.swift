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

extension Iot {
    /// GetDataHistory请求参数结构体
    public struct GetDataHistoryRequest: TCRequest {
        /// 产品Id
        public let productId: String

        /// 设备名称列表，允许最多一次100台
        public let deviceNames: [String]

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 查询数据量
        public let size: UInt64?

        /// 时间排序（desc/asc）
        public let order: String?

        /// 查询游标
        public let scrollId: String?

        public init(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil) {
            self.productId = productId
            self.deviceNames = deviceNames
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.size = size
            self.order = order
            self.scrollId = scrollId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case size = "Size"
            case order = "Order"
            case scrollId = "ScrollId"
        }
    }

    /// GetDataHistory返回参数结构体
    public struct GetDataHistoryResponse: TCResponse {
        /// 数据历史
        public let dataHistory: [DataHistoryEntry]

        /// 查询游标
        public let scrollId: String

        /// 查询游标超时
        public let scrollTimeout: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataHistory = "DataHistory"
            case scrollId = "ScrollId"
            case scrollTimeout = "ScrollTimeout"
            case requestId = "RequestId"
        }
    }

    /// 获取设备历史数据
    ///
    /// 批量获取设备某一段时间范围的设备上报数据。该接口适用于使用高级版类型的产品
    @inlinable
    public func getDataHistory(_ input: GetDataHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataHistoryResponse> {
        self.client.execute(action: "GetDataHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备历史数据
    ///
    /// 批量获取设备某一段时间范围的设备上报数据。该接口适用于使用高级版类型的产品
    @inlinable
    public func getDataHistory(_ input: GetDataHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataHistoryResponse {
        try await self.client.execute(action: "GetDataHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备历史数据
    ///
    /// 批量获取设备某一段时间范围的设备上报数据。该接口适用于使用高级版类型的产品
    @inlinable
    public func getDataHistory(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataHistoryResponse> {
        self.getDataHistory(.init(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备历史数据
    ///
    /// 批量获取设备某一段时间范围的设备上报数据。该接口适用于使用高级版类型的产品
    @inlinable
    public func getDataHistory(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataHistoryResponse {
        try await self.getDataHistory(.init(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId), region: region, logger: logger, on: eventLoop)
    }
}
