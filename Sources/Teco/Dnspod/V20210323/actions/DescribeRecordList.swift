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

import TecoPaginationHelpers

extension Dnspod {
    /// DescribeRecordList请求参数结构体
    public struct DescribeRecordListRequest: TCPaginatedRequest {
        /// 要获取的解析记录所属的域名
        public let domain: String

        /// 要获取的解析记录所属的域名Id，如果传了DomainId，系统将会忽略Domain参数。 可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        /// 解析记录的主机头，如果传了此参数，则只会返回此主机头对应的解析记录
        public let subdomain: String?

        /// 获取某种类型的解析记录，如 A，CNAME，NS，AAAA，显性URL，隐性URL，CAA，SPF等
        public let recordType: String?

        /// 获取某条线路名称的解析记录。可以通过接口DescribeRecordLineList查看当前域名允许的线路信息
        public let recordLine: String?

        /// 获取某个线路Id对应的解析记录，如果传RecordLineId，系统会忽略RecordLine参数。可以通过接口DescribeRecordLineList查看当前域名允许的线路信息
        public let recordLineId: String?

        /// 获取某个分组下的解析记录时，传这个分组Id。
        public let groupId: UInt64?

        /// 通过关键字搜索解析记录，当前支持搜索主机头和记录值
        public let keyword: String?

        /// 排序字段，支持 name,line,type,value,weight,mx,ttl,updated_on 几个字段。
        public let sortField: String?

        /// 排序方式，正序：ASC，逆序：DESC。默认值为ASC。
        public let sortType: String?

        /// 偏移量，默认值为0。
        public let offset: UInt64?

        /// 限制数量，当前Limit最大支持3000。默认值为100。
        public let limit: UInt64?

        public init(domain: String, domainId: UInt64? = nil, subdomain: String? = nil, recordType: String? = nil, recordLine: String? = nil, recordLineId: String? = nil, groupId: UInt64? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.domain = domain
            self.domainId = domainId
            self.subdomain = subdomain
            self.recordType = recordType
            self.recordLine = recordLine
            self.recordLineId = recordLineId
            self.groupId = groupId
            self.keyword = keyword
            self.sortField = sortField
            self.sortType = sortType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case subdomain = "Subdomain"
            case recordType = "RecordType"
            case recordLine = "RecordLine"
            case recordLineId = "RecordLineId"
            case groupId = "GroupId"
            case keyword = "Keyword"
            case sortField = "SortField"
            case sortType = "SortType"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeRecordListResponse) -> DescribeRecordListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecordListRequest(domain: self.domain, domainId: self.domainId, subdomain: self.subdomain, recordType: self.recordType, recordLine: self.recordLine, recordLineId: self.recordLineId, groupId: self.groupId, keyword: self.keyword, sortField: self.sortField, sortType: self.sortType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRecordList返回参数结构体
    public struct DescribeRecordListResponse: TCPaginatedResponse {
        /// 记录的数量统计信息
        public let recordCountInfo: RecordCountInfo

        /// 获取的记录列表
        public let recordList: [RecordListItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordCountInfo = "RecordCountInfo"
            case recordList = "RecordList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RecordListItem] {
            self.recordList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.recordCountInfo.totalCount
        }
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordList(_ input: DescribeRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordListResponse> {
        self.client.execute(action: "DescribeRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordList(_ input: DescribeRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordListResponse {
        try await self.client.execute(action: "DescribeRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordList(domain: String, domainId: UInt64? = nil, subdomain: String? = nil, recordType: String? = nil, recordLine: String? = nil, recordLineId: String? = nil, groupId: UInt64? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordListResponse> {
        let input = DescribeRecordListRequest(domain: domain, domainId: domainId, subdomain: subdomain, recordType: recordType, recordLine: recordLine, recordLineId: recordLineId, groupId: groupId, keyword: keyword, sortField: sortField, sortType: sortType, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordList(domain: String, domainId: UInt64? = nil, subdomain: String? = nil, recordType: String? = nil, recordLine: String? = nil, recordLineId: String? = nil, groupId: UInt64? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordListResponse {
        let input = DescribeRecordListRequest(domain: domain, domainId: domainId, subdomain: subdomain, recordType: recordType, recordLine: recordLine, recordLineId: recordLineId, groupId: groupId, keyword: keyword, sortField: sortField, sortType: sortType, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordListPaginated(_ input: DescribeRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RecordListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordList, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordListPaginated(_ input: DescribeRecordListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordListPaginator(_ input: DescribeRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeRecordListRequest, DescribeRecordListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeRecordListRequest, DescribeRecordListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeRecordListRequest, DescribeRecordListResponse>.ResultSequence(input: input, region: region, command: self.describeRecordList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeRecordListRequest, DescribeRecordListResponse>.ResponseSequence(input: input, region: region, command: self.describeRecordList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
