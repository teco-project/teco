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
    /// DescribePathRewrite请求参数结构体
    public struct DescribePathRewriteRequest: TCRequestModel {
        /// 路径重写规则ID
        public let pathRewriteId: String

        public init(pathRewriteId: String) {
            self.pathRewriteId = pathRewriteId
        }

        enum CodingKeys: String, CodingKey {
            case pathRewriteId = "PathRewriteId"
        }
    }

    /// DescribePathRewrite返回参数结构体
    public struct DescribePathRewriteResponse: TCResponseModel {
        /// 路径重写规则对象
        public let result: PathRewrite

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询路径重写
    @inlinable
    public func describePathRewrite(_ input: DescribePathRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePathRewriteResponse> {
        self.client.execute(action: "DescribePathRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路径重写
    @inlinable
    public func describePathRewrite(_ input: DescribePathRewriteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePathRewriteResponse {
        try await self.client.execute(action: "DescribePathRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路径重写
    @inlinable
    public func describePathRewrite(pathRewriteId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePathRewriteResponse> {
        let input = DescribePathRewriteRequest(pathRewriteId: pathRewriteId)
        return self.client.execute(action: "DescribePathRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路径重写
    @inlinable
    public func describePathRewrite(pathRewriteId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePathRewriteResponse {
        let input = DescribePathRewriteRequest(pathRewriteId: pathRewriteId)
        return try await self.client.execute(action: "DescribePathRewrite", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
