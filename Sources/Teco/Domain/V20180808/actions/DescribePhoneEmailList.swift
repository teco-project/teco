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

extension Domain {
    /// DescribePhoneEmailList请求参数结构体
    public struct DescribePhoneEmailListRequest: TCPaginatedRequest {
        /// 0：所有类型  1：手机  2：邮箱，默认0
        public let type: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，取值范围[1,200]
        public let limit: UInt64?

        /// 手机或者邮箱精确搜索
        public let code: String?

        public init(type: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, code: String? = nil) {
            self.type = type
            self.offset = offset
            self.limit = limit
            self.code = code
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
            case code = "Code"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePhoneEmailListResponse) -> DescribePhoneEmailListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePhoneEmailListRequest(type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, code: self.code)
        }
    }

    /// DescribePhoneEmailList返回参数结构体
    public struct DescribePhoneEmailListResponse: TCPaginatedResponse {
        /// 手机或者邮箱列表
        public let phoneEmailList: [PhoneEmailData]

        /// 总数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case phoneEmailList = "PhoneEmailList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PhoneEmailData] {
            self.phoneEmailList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailList(_ input: DescribePhoneEmailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePhoneEmailListResponse> {
        self.client.execute(action: "DescribePhoneEmailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailList(_ input: DescribePhoneEmailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePhoneEmailListResponse {
        try await self.client.execute(action: "DescribePhoneEmailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailList(type: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePhoneEmailListResponse> {
        let input = DescribePhoneEmailListRequest(type: type, offset: offset, limit: limit, code: code)
        return self.client.execute(action: "DescribePhoneEmailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailList(type: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePhoneEmailListResponse {
        let input = DescribePhoneEmailListRequest(type: type, offset: offset, limit: limit, code: code)
        return try await self.client.execute(action: "DescribePhoneEmailList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailListPaginated(_ input: DescribePhoneEmailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PhoneEmailData])> {
        self.client.paginate(input: input, region: region, command: self.describePhoneEmailList, logger: logger, on: eventLoop)
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailListPaginated(_ input: DescribePhoneEmailListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePhoneEmailListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePhoneEmailList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 已验证手机邮箱列表
    ///
    /// 本接口用于获取已验证的手机邮箱列表
    @inlinable
    public func describePhoneEmailListPaginator(_ input: DescribePhoneEmailListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePhoneEmailListRequest, DescribePhoneEmailListResponse>.ResultSequence, responses: TCClient.Paginator<DescribePhoneEmailListRequest, DescribePhoneEmailListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribePhoneEmailListRequest, DescribePhoneEmailListResponse>.ResultSequence(input: input, region: region, command: self.describePhoneEmailList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribePhoneEmailListRequest, DescribePhoneEmailListResponse>.ResponseSequence(input: input, region: region, command: self.describePhoneEmailList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
