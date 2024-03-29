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
    /// GetDebugLog请求参数结构体
    public struct GetDebugLogRequest: TCRequest {
        /// 产品Id
        public let productId: String

        /// 设备名称列表，最大支持100台
        public let deviceNames: [String]

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 查询数据量
        public let size: UInt64?

        /// 时间排序（desc/asc）
        public let order: String?

        /// 查询游标
        public let scrollId: String?

        /// 日志类型（shadow/action/mqtt）
        public let type: String?

        public init(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, type: String? = nil) {
            self.productId = productId
            self.deviceNames = deviceNames
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.size = size
            self.order = order
            self.scrollId = scrollId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case size = "Size"
            case order = "Order"
            case scrollId = "ScrollId"
            case type = "Type"
        }
    }

    /// GetDebugLog返回参数结构体
    public struct GetDebugLogResponse: TCResponse {
        /// 调试日志
        public let debugLog: [DebugLogEntry]

        /// 查询游标
        public let scrollId: String

        /// 游标超时
        public let scrollTimeout: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case debugLog = "DebugLog"
            case scrollId = "ScrollId"
            case scrollTimeout = "ScrollTimeout"
            case requestId = "RequestId"
        }
    }

    /// 获取调试日志
    ///
    /// 获取设备的调试日志，用于定位问题
    @inlinable
    public func getDebugLog(_ input: GetDebugLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDebugLogResponse> {
        self.client.execute(action: "GetDebugLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取调试日志
    ///
    /// 获取设备的调试日志，用于定位问题
    @inlinable
    public func getDebugLog(_ input: GetDebugLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDebugLogResponse {
        try await self.client.execute(action: "GetDebugLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取调试日志
    ///
    /// 获取设备的调试日志，用于定位问题
    @inlinable
    public func getDebugLog(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDebugLogResponse> {
        self.getDebugLog(.init(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取调试日志
    ///
    /// 获取设备的调试日志，用于定位问题
    @inlinable
    public func getDebugLog(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDebugLogResponse {
        try await self.getDebugLog(.init(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId, type: type), region: region, logger: logger, on: eventLoop)
    }
}
