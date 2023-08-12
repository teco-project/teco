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
import TecoPaginationHelpers

extension Hasim {
    /// DescribeLinks请求参数结构体
    public struct DescribeLinksRequest: TCPaginatedRequest {
        /// 云兔卡ID
        public let linkID: Int64?

        /// 运营商ICCID
        public let iccid: String?

        /// 设备码
        public let imei: String?

        /// 卡片状态
        public let status: UInt64?

        /// 运营商 1移动 2联通 3电信
        public let teleOperator: UInt64?

        /// 标签ID
        public let tagID: UInt64?

        /// 策略ID
        public let tacticID: UInt64?

        /// 设备在线状态 0 未激活 1 在线 2 离线
        public let linkedState: Int64?

        /// 标签ID 集合
        public let tagIDs: [Int64]?

        /// 翻页大小, 默认翻页大小为10，最大数量为500
        public let limit: Int64?

        /// 翻页起始
        public let offset: Int64?

        public init(linkID: Int64? = nil, iccid: String? = nil, imei: String? = nil, status: UInt64? = nil, teleOperator: UInt64? = nil, tagID: UInt64? = nil, tacticID: UInt64? = nil, linkedState: Int64? = nil, tagIDs: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.linkID = linkID
            self.iccid = iccid
            self.imei = imei
            self.status = status
            self.teleOperator = teleOperator
            self.tagID = tagID
            self.tacticID = tacticID
            self.linkedState = linkedState
            self.tagIDs = tagIDs
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case linkID = "LinkID"
            case iccid = "ICCID"
            case imei = "IMEI"
            case status = "Status"
            case teleOperator = "TeleOperator"
            case tagID = "TagID"
            case tacticID = "TacticID"
            case linkedState = "LinkedState"
            case tagIDs = "TagIDs"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLinksResponse) -> DescribeLinksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLinksRequest(linkID: self.linkID, iccid: self.iccid, imei: self.imei, status: self.status, teleOperator: self.teleOperator, tagID: self.tagID, tacticID: self.tacticID, linkedState: self.linkedState, tagIDs: self.tagIDs, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeLinks返回参数结构体
    public struct DescribeLinksResponse: TCPaginatedResponse {
        /// 云兔连接响应信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: LinkInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LinkInfo`` list from the paginated response.
        public func getItems() -> [LinkInfo] {
            self.data?.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.total
        }
    }

    /// 查询云兔连接列表
    @inlinable
    public func describeLinks(_ input: DescribeLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLinksResponse> {
        self.client.execute(action: "DescribeLinks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云兔连接列表
    @inlinable
    public func describeLinks(_ input: DescribeLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLinksResponse {
        try await self.client.execute(action: "DescribeLinks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云兔连接列表
    @inlinable
    public func describeLinks(linkID: Int64? = nil, iccid: String? = nil, imei: String? = nil, status: UInt64? = nil, teleOperator: UInt64? = nil, tagID: UInt64? = nil, tacticID: UInt64? = nil, linkedState: Int64? = nil, tagIDs: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLinksResponse> {
        self.describeLinks(.init(linkID: linkID, iccid: iccid, imei: imei, status: status, teleOperator: teleOperator, tagID: tagID, tacticID: tacticID, linkedState: linkedState, tagIDs: tagIDs, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云兔连接列表
    @inlinable
    public func describeLinks(linkID: Int64? = nil, iccid: String? = nil, imei: String? = nil, status: UInt64? = nil, teleOperator: UInt64? = nil, tagID: UInt64? = nil, tacticID: UInt64? = nil, linkedState: Int64? = nil, tagIDs: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLinksResponse {
        try await self.describeLinks(.init(linkID: linkID, iccid: iccid, imei: imei, status: status, teleOperator: teleOperator, tagID: tagID, tacticID: tacticID, linkedState: linkedState, tagIDs: tagIDs, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云兔连接列表
    @inlinable
    public func describeLinksPaginated(_ input: DescribeLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LinkInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLinks, logger: logger, on: eventLoop)
    }

    /// 查询云兔连接列表
    @inlinable @discardableResult
    public func describeLinksPaginated(_ input: DescribeLinksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLinksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLinks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云兔连接列表
    ///
    /// - Returns: `AsyncSequence`s of ``LinkInfo`` and ``DescribeLinksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLinksPaginator(_ input: DescribeLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLinksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLinks, logger: logger, on: eventLoop)
    }
}
