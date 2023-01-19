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

extension Cloudhsm {
    /// DescribeUsg请求参数结构体
    public struct DescribeUsgRequest: TCRequestModel {
        /// 偏移量，当Offset和Limit均为0时将一次性返回用户所有的安全组列表。
        public let offset: Int64

        /// 返回量，当Offset和Limit均为0时将一次性返回用户所有的安全组列表。
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        public init(offset: Int64, limit: Int64, searchWord: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }
    }

    /// DescribeUsg返回参数结构体
    public struct DescribeUsgResponse: TCResponseModel {
        /// 用户的安全组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sgList: [SgUnit]?

        /// 返回的安全组数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sgList = "SgList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取用户安全组列表
    ///
    /// 根据用户的AppId获取用户安全组列表
    @inlinable
    public func describeUsg(_ input: DescribeUsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsgResponse> {
        self.client.execute(action: "DescribeUsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户安全组列表
    ///
    /// 根据用户的AppId获取用户安全组列表
    @inlinable
    public func describeUsg(_ input: DescribeUsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsgResponse {
        try await self.client.execute(action: "DescribeUsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户安全组列表
    ///
    /// 根据用户的AppId获取用户安全组列表
    @inlinable
    public func describeUsg(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsgResponse> {
        self.describeUsg(DescribeUsgRequest(offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户安全组列表
    ///
    /// 根据用户的AppId获取用户安全组列表
    @inlinable
    public func describeUsg(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsgResponse {
        try await self.describeUsg(DescribeUsgRequest(offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }
}
