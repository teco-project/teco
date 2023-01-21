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

extension Tsf {
    /// DescribePathRewrites请求参数结构体
    public struct DescribePathRewritesRequest: TCRequestModel {
        /// 网关部署组ID
        public let gatewayGroupId: String

        /// 根据正则表达式或替换的内容模糊查询
        public let searchWord: String?

        /// 每页数量
        public let limit: UInt64?

        /// 起始偏移量
        public let offset: UInt64?

        public init(gatewayGroupId: String, searchWord: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.gatewayGroupId = gatewayGroupId
            self.searchWord = searchWord
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case gatewayGroupId = "GatewayGroupId"
            case searchWord = "SearchWord"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribePathRewrites返回参数结构体
    public struct DescribePathRewritesResponse: TCResponseModel {
        /// 路径重写翻页对象
        public let result: PathRewritePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询路径重写列表
    @inlinable
    public func describePathRewrites(_ input: DescribePathRewritesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePathRewritesResponse> {
        self.client.execute(action: "DescribePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路径重写列表
    @inlinable
    public func describePathRewrites(_ input: DescribePathRewritesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePathRewritesResponse {
        try await self.client.execute(action: "DescribePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路径重写列表
    @inlinable
    public func describePathRewrites(gatewayGroupId: String, searchWord: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePathRewritesResponse> {
        self.describePathRewrites(DescribePathRewritesRequest(gatewayGroupId: gatewayGroupId, searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路径重写列表
    @inlinable
    public func describePathRewrites(gatewayGroupId: String, searchWord: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePathRewritesResponse {
        try await self.describePathRewrites(DescribePathRewritesRequest(gatewayGroupId: gatewayGroupId, searchWord: searchWord, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
