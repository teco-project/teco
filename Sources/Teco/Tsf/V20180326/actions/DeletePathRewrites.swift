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
    /// DeletePathRewrites请求参数结构体
    public struct DeletePathRewritesRequest: TCRequestModel {
        /// 路径重写规则IDs
        public let pathRewriteIds: [String]

        public init(pathRewriteIds: [String]) {
            self.pathRewriteIds = pathRewriteIds
        }

        enum CodingKeys: String, CodingKey {
            case pathRewriteIds = "PathRewriteIds"
        }
    }

    /// DeletePathRewrites返回参数结构体
    public struct DeletePathRewritesResponse: TCResponseModel {
        /// true/false
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除路径重写
    @inlinable
    public func deletePathRewrites(_ input: DeletePathRewritesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePathRewritesResponse> {
        self.client.execute(action: "DeletePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路径重写
    @inlinable
    public func deletePathRewrites(_ input: DeletePathRewritesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePathRewritesResponse {
        try await self.client.execute(action: "DeletePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除路径重写
    @inlinable
    public func deletePathRewrites(pathRewriteIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePathRewritesResponse> {
        let input = DeletePathRewritesRequest(pathRewriteIds: pathRewriteIds)
        return self.client.execute(action: "DeletePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路径重写
    @inlinable
    public func deletePathRewrites(pathRewriteIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePathRewritesResponse {
        let input = DeletePathRewritesRequest(pathRewriteIds: pathRewriteIds)
        return try await self.client.execute(action: "DeletePathRewrites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
