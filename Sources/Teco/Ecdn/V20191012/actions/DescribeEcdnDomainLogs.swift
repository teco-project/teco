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

extension Ecdn {
    /// DescribeEcdnDomainLogs请求参数结构体
    public struct DescribeEcdnDomainLogsRequest: TCRequestModel {
        /// 待查询域名。
        public let domain: String
        
        /// 日志起始时间。如：2019-10-01 00:00:00
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date
        
        /// 日志结束时间，只支持最近30天内日志查询。2019-10-02 00:00:00
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date
        
        /// 日志链接列表分页起始地址，默认0。
        public let offset: Int64?
        
        /// 日志链接列表分页记录条数，默认100，最大1000。
        public let limit: Int64?
        
        public init (domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil) {
            self.domain = domain
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeEcdnDomainLogs返回参数结构体
    public struct DescribeEcdnDomainLogsResponse: TCResponseModel {
        /// 日志链接列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainLogs: [DomainLogs]?
        
        /// 日志链接总条数。
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case domainLogs = "DomainLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(_ input: DescribeEcdnDomainLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEcdnDomainLogsResponse > {
        self.client.execute(action: "DescribeEcdnDomainLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(_ input: DescribeEcdnDomainLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainLogsResponse {
        try await self.client.execute(action: "DescribeEcdnDomainLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEcdnDomainLogsResponse > {
        self.describeEcdnDomainLogs(DescribeEcdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
    
    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainLogsResponse {
        try await self.describeEcdnDomainLogs(DescribeEcdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
