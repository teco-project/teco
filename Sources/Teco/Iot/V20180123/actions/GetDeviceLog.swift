//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Iot {
    /// GetDeviceLog请求参数结构体
    public struct GetDeviceLogRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        /// 设备名称列表，最大支持100台
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

        /// 日志类型（comm/status）
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

    /// GetDeviceLog返回参数结构体
    public struct GetDeviceLogResponse: TCResponseModel {
        /// 设备日志
        public let deviceLog: [DeviceLogEntry]

        /// 查询游标
        public let scrollId: String

        /// 游标超时
        public let scrollTimeout: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceLog = "DeviceLog"
            case scrollId = "ScrollId"
            case scrollTimeout = "ScrollTimeout"
            case requestId = "RequestId"
        }
    }

    /// 获取设备日志
    ///
    /// 批量获取设备与云端的详细通信日志，该接口适用于使用高级版类型的产品。
    @inlinable
    public func getDeviceLog(_ input: GetDeviceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceLogResponse> {
        self.client.execute(action: "GetDeviceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备日志
    ///
    /// 批量获取设备与云端的详细通信日志，该接口适用于使用高级版类型的产品。
    @inlinable
    public func getDeviceLog(_ input: GetDeviceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceLogResponse {
        try await self.client.execute(action: "GetDeviceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备日志
    ///
    /// 批量获取设备与云端的详细通信日志，该接口适用于使用高级版类型的产品。
    @inlinable
    public func getDeviceLog(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceLogResponse> {
        self.getDeviceLog(GetDeviceLogRequest(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备日志
    ///
    /// 批量获取设备与云端的详细通信日志，该接口适用于使用高级版类型的产品。
    @inlinable
    public func getDeviceLog(productId: String, deviceNames: [String], startTime: Date, endTime: Date, size: UInt64? = nil, order: String? = nil, scrollId: String? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceLogResponse {
        try await self.getDeviceLog(GetDeviceLogRequest(productId: productId, deviceNames: deviceNames, startTime: startTime, endTime: endTime, size: size, order: order, scrollId: scrollId, type: type), region: region, logger: logger, on: eventLoop)
    }
}
