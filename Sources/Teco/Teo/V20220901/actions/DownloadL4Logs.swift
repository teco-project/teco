//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Teo {
    /// DownloadL4Logs请求参数结构体
    public struct DownloadL4LogsRequest: TCRequestModel {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 四层实例ID集合。
        public let proxyIds: [String]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        public init(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.zoneIds = zoneIds
            self.proxyIds = proxyIds
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case proxyIds = "ProxyIds"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DownloadL4Logs返回参数结构体
    public struct DownloadL4LogsResponse: TCResponseModel {
        /// 四层离线日志数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [L4OfflineLog]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(_ input: DownloadL4LogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadL4LogsResponse> {
        self.client.execute(action: "DownloadL4Logs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(_ input: DownloadL4LogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadL4LogsResponse {
        try await self.client.execute(action: "DownloadL4Logs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadL4LogsResponse> {
        self.downloadL4Logs(DownloadL4LogsRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, proxyIds: proxyIds, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadL4LogsResponse {
        try await self.downloadL4Logs(DownloadL4LogsRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, proxyIds: proxyIds, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
