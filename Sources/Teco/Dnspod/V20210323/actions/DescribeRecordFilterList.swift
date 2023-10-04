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

import Logging
import NIOCore
import TecoCore

extension Dnspod {
    /// DescribeRecordFilterList请求参数结构体
    public struct DescribeRecordFilterListRequest: TCPaginatedRequest {
        /// 要获取的解析记录所属的域名。
        public let domain: String

        /// 要获取的解析记录所属的域名 Id，如果传了 DomainId，系统将会忽略 Domain 参数。 可以通过接口 DescribeDomainList 查到所有的 Domain 以及 DomainId。
        public let domainId: UInt64?

        /// 根据解析记录的主机头获取解析记录。默认模糊匹配。可以通过设置 IsExactSubdomain 参数为 true 进行精确查找。
        public let subDomain: String?

        /// 获取某些类型的解析记录，如 A，CNAME，NS，AAAA，显性URL，隐性URL，CAA，SPF等。
        public let recordType: [String]?

        /// 获取某些线路ID的解析记录。可以通过接口 DescribeRecordLineList 查看当前域名允许的线路信息。
        public let recordLine: [String]?

        /// 获取某些分组下的解析记录时，传这个分组 Id。可以通过接口 DescribeRecordGroupList 接口 GroupId 字段获取。
        public let groupId: [UInt64]?

        /// 通过关键字搜索解析记录，当前支持搜索主机头和记录值
        public let keyword: String?

        /// 排序字段，支持 NAME，LINE，TYPE，VALUE，WEIGHT，MX，TTL，UPDATED_ON 几个字段。
        /// NAME：解析记录的主机头
        /// LINE：解析记录线路
        /// TYPE：解析记录类型
        /// VALUE：解析记录值
        /// WEIGHT：权重
        /// MX：MX 优先级
        /// TTL：解析记录缓存时间
        /// UPDATED_ON：解析记录更新时间
        public let sortField: String?

        /// 排序方式，升序：ASC，降序：DESC。默认值为ASC。
        public let sortType: String?

        /// 偏移量，默认值为0。
        public let offset: UInt64?

        /// 限制数量，当前Limit最大支持3000。默认值为100。
        public let limit: UInt64?

        /// 根据解析记录的值获取解析记录
        public let recordValue: String?

        /// 根据解析记录的状态获取解析记录。可取值为 ENABLE，DISABLE。
        /// ENABLE：正常
        /// DISABLE：暂停
        public let recordStatus: [String]?

        /// 要获取解析记录权重查询区间起点。
        public let weightBegin: UInt64?

        /// 要获取解析记录权重查询区间终点。
        public let weightEnd: UInt64?

        /// 要获取解析记录 MX 优先级查询区间起点。
        public let mxBegin: UInt64?

        /// 要获取解析记录 MX 优先级查询区间终点。
        public let mxEnd: UInt64?

        /// 要获取解析记录 TTL 查询区间起点。
        public let ttlBegin: UInt64?

        /// 要获取解析记录 TTL 查询区间终点。
        public let ttlEnd: UInt64?

        /// 要获取解析记录更新时间查询区间起点。
        public let updatedAtBegin: String?

        /// 要获取解析记录更新时间查询区间终点。
        public let updatedAtEnd: String?

        /// 根据解析记录的备注获取解析记录。
        public let remark: String?

        /// 是否根据 Subdomain 参数进行精确查找。
        public let isExactSubDomain: Bool?

        /// 项目ID
        public let projectId: Int64?

        public init(domain: String, domainId: UInt64? = nil, subDomain: String? = nil, recordType: [String]? = nil, recordLine: [String]? = nil, groupId: [UInt64]? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, recordValue: String? = nil, recordStatus: [String]? = nil, weightBegin: UInt64? = nil, weightEnd: UInt64? = nil, mxBegin: UInt64? = nil, mxEnd: UInt64? = nil, ttlBegin: UInt64? = nil, ttlEnd: UInt64? = nil, updatedAtBegin: String? = nil, updatedAtEnd: String? = nil, remark: String? = nil, isExactSubDomain: Bool? = nil, projectId: Int64? = nil) {
            self.domain = domain
            self.domainId = domainId
            self.subDomain = subDomain
            self.recordType = recordType
            self.recordLine = recordLine
            self.groupId = groupId
            self.keyword = keyword
            self.sortField = sortField
            self.sortType = sortType
            self.offset = offset
            self.limit = limit
            self.recordValue = recordValue
            self.recordStatus = recordStatus
            self.weightBegin = weightBegin
            self.weightEnd = weightEnd
            self.mxBegin = mxBegin
            self.mxEnd = mxEnd
            self.ttlBegin = ttlBegin
            self.ttlEnd = ttlEnd
            self.updatedAtBegin = updatedAtBegin
            self.updatedAtEnd = updatedAtEnd
            self.remark = remark
            self.isExactSubDomain = isExactSubDomain
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case subDomain = "SubDomain"
            case recordType = "RecordType"
            case recordLine = "RecordLine"
            case groupId = "GroupId"
            case keyword = "Keyword"
            case sortField = "SortField"
            case sortType = "SortType"
            case offset = "Offset"
            case limit = "Limit"
            case recordValue = "RecordValue"
            case recordStatus = "RecordStatus"
            case weightBegin = "WeightBegin"
            case weightEnd = "WeightEnd"
            case mxBegin = "MXBegin"
            case mxEnd = "MXEnd"
            case ttlBegin = "TTLBegin"
            case ttlEnd = "TTLEnd"
            case updatedAtBegin = "UpdatedAtBegin"
            case updatedAtEnd = "UpdatedAtEnd"
            case remark = "Remark"
            case isExactSubDomain = "IsExactSubDomain"
            case projectId = "ProjectId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRecordFilterListResponse) -> DescribeRecordFilterListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(domain: self.domain, domainId: self.domainId, subDomain: self.subDomain, recordType: self.recordType, recordLine: self.recordLine, groupId: self.groupId, keyword: self.keyword, sortField: self.sortField, sortType: self.sortType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, recordValue: self.recordValue, recordStatus: self.recordStatus, weightBegin: self.weightBegin, weightEnd: self.weightEnd, mxBegin: self.mxBegin, mxEnd: self.mxEnd, ttlBegin: self.ttlBegin, ttlEnd: self.ttlEnd, updatedAtBegin: self.updatedAtBegin, updatedAtEnd: self.updatedAtEnd, remark: self.remark, isExactSubDomain: self.isExactSubDomain, projectId: self.projectId)
        }
    }

    /// DescribeRecordFilterList返回参数结构体
    public struct DescribeRecordFilterListResponse: TCPaginatedResponse {
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

        /// Extract the returned ``RecordListItem`` list from the paginated response.
        public func getItems() -> [RecordListItem] {
            self.recordList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.recordCountInfo.totalCount
        }
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordFilterList(_ input: DescribeRecordFilterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordFilterListResponse> {
        self.client.execute(action: "DescribeRecordFilterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordFilterList(_ input: DescribeRecordFilterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordFilterListResponse {
        try await self.client.execute(action: "DescribeRecordFilterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordFilterList(domain: String, domainId: UInt64? = nil, subDomain: String? = nil, recordType: [String]? = nil, recordLine: [String]? = nil, groupId: [UInt64]? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, recordValue: String? = nil, recordStatus: [String]? = nil, weightBegin: UInt64? = nil, weightEnd: UInt64? = nil, mxBegin: UInt64? = nil, mxEnd: UInt64? = nil, ttlBegin: UInt64? = nil, ttlEnd: UInt64? = nil, updatedAtBegin: String? = nil, updatedAtEnd: String? = nil, remark: String? = nil, isExactSubDomain: Bool? = nil, projectId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordFilterListResponse> {
        self.describeRecordFilterList(.init(domain: domain, domainId: domainId, subDomain: subDomain, recordType: recordType, recordLine: recordLine, groupId: groupId, keyword: keyword, sortField: sortField, sortType: sortType, offset: offset, limit: limit, recordValue: recordValue, recordStatus: recordStatus, weightBegin: weightBegin, weightEnd: weightEnd, mxBegin: mxBegin, mxEnd: mxEnd, ttlBegin: ttlBegin, ttlEnd: ttlEnd, updatedAtBegin: updatedAtBegin, updatedAtEnd: updatedAtEnd, remark: remark, isExactSubDomain: isExactSubDomain, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordFilterList(domain: String, domainId: UInt64? = nil, subDomain: String? = nil, recordType: [String]? = nil, recordLine: [String]? = nil, groupId: [UInt64]? = nil, keyword: String? = nil, sortField: String? = nil, sortType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, recordValue: String? = nil, recordStatus: [String]? = nil, weightBegin: UInt64? = nil, weightEnd: UInt64? = nil, mxBegin: UInt64? = nil, mxEnd: UInt64? = nil, ttlBegin: UInt64? = nil, ttlEnd: UInt64? = nil, updatedAtBegin: String? = nil, updatedAtEnd: String? = nil, remark: String? = nil, isExactSubDomain: Bool? = nil, projectId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordFilterListResponse {
        try await self.describeRecordFilterList(.init(domain: domain, domainId: domainId, subDomain: subDomain, recordType: recordType, recordLine: recordLine, groupId: groupId, keyword: keyword, sortField: sortField, sortType: sortType, offset: offset, limit: limit, recordValue: recordValue, recordStatus: recordStatus, weightBegin: weightBegin, weightEnd: weightEnd, mxBegin: mxBegin, mxEnd: mxEnd, ttlBegin: ttlBegin, ttlEnd: ttlEnd, updatedAtBegin: updatedAtBegin, updatedAtEnd: updatedAtEnd, remark: remark, isExactSubDomain: isExactSubDomain, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable
    public func describeRecordFilterListPaginated(_ input: DescribeRecordFilterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RecordListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordFilterList, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    @inlinable @discardableResult
    public func describeRecordFilterListPaginated(_ input: DescribeRecordFilterListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordFilterListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordFilterList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取域名的解析记录筛选列表
    ///
    /// 获取某个域名下的解析记录列表
    ///
    /// - Returns: `AsyncSequence`s of ``RecordListItem`` and ``DescribeRecordFilterListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRecordFilterListPaginator(_ input: DescribeRecordFilterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRecordFilterListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRecordFilterList, logger: logger, on: eventLoop)
    }
}
