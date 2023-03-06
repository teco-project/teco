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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Bm {
    /// DescribeDeviceOperationLog请求参数结构体
    public struct DescribeDeviceOperationLogRequest: TCPaginatedRequest {
        /// 设备实例ID
        public let instanceId: String

        /// 查询开始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date?

        /// 查询结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        public init(instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDeviceOperationLogResponse) -> DescribeDeviceOperationLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceOperationLogRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDeviceOperationLog返回参数结构体
    public struct DescribeDeviceOperationLogResponse: TCPaginatedResponse {
        /// 操作日志列表
        public let deviceOperationLogSet: [DeviceOperationLog]

        /// 返回数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceOperationLogSet = "DeviceOperationLogSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceOperationLog] {
            self.deviceOperationLogSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(_ input: DescribeDeviceOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceOperationLogResponse> {
        self.client.execute(action: "DescribeDeviceOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(_ input: DescribeDeviceOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceOperationLogResponse {
        try await self.client.execute(action: "DescribeDeviceOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceOperationLogResponse> {
        let input = DescribeDeviceOperationLogRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeDeviceOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceOperationLogResponse {
        let input = DescribeDeviceOperationLogRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeDeviceOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLogPaginated(_ input: DescribeDeviceOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceOperationLog])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceOperationLog, logger: logger, on: eventLoop)
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable @discardableResult
    public func describeDeviceOperationLogPaginated(_ input: DescribeDeviceOperationLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceOperationLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceOperationLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLogPaginator(_ input: DescribeDeviceOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceOperationLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceOperationLog, logger: logger, on: eventLoop)
    }
}
