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

extension Teo {
    /// DownloadL7Logs请求参数结构体
    public struct DownloadL7LogsRequest: TCRequestModel {
        /// 开始时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let startTime: Date
        
        /// 结束时间。
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let endTime: Date
        
        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?
        
        /// 子域名集合，不填默认选择全部子域名。
        public let domains: [String]?
        
        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?
        
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?
        
        public init (startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.zoneIds = zoneIds
            self.domains = domains
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DownloadL7Logs返回参数结构体
    public struct DownloadL7LogsResponse: TCResponseModel {
        /// 七层离线日志数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [L7OfflineLog]?
        
        /// 查询结果的总条数。
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 下载七层离线日志
    ///
    /// 本接口（DownloadL7Logs）下载七层离线日志。
    @inlinable
    public func downloadL7Logs(_ input: DownloadL7LogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadL7LogsResponse > {
        self.client.execute(action: "DownloadL7Logs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下载七层离线日志
    ///
    /// 本接口（DownloadL7Logs）下载七层离线日志。
    @inlinable
    public func downloadL7Logs(_ input: DownloadL7LogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadL7LogsResponse {
        try await self.client.execute(action: "DownloadL7Logs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
