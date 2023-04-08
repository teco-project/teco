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

extension Tsf {
    /// CreatePathRewritesWithDetailResp请求参数结构体
    public struct CreatePathRewritesWithDetailRespRequest: TCRequestModel {
        /// 路径重写列表
        public let pathRewrites: [PathRewriteCreateObject]

        public init(pathRewrites: [PathRewriteCreateObject]) {
            self.pathRewrites = pathRewrites
        }

        enum CodingKeys: String, CodingKey {
            case pathRewrites = "PathRewrites"
        }
    }

    /// CreatePathRewritesWithDetailResp返回参数结构体
    public struct CreatePathRewritesWithDetailRespResponse: TCResponseModel {
        /// 返回路径重写规则 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建路径重写返回详细信息
    ///
    /// 创建路径重写，并返回路径重写规则信息
    @inlinable
    public func createPathRewritesWithDetailResp(_ input: CreatePathRewritesWithDetailRespRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePathRewritesWithDetailRespResponse> {
        self.client.execute(action: "CreatePathRewritesWithDetailResp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建路径重写返回详细信息
    ///
    /// 创建路径重写，并返回路径重写规则信息
    @inlinable
    public func createPathRewritesWithDetailResp(_ input: CreatePathRewritesWithDetailRespRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePathRewritesWithDetailRespResponse {
        try await self.client.execute(action: "CreatePathRewritesWithDetailResp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建路径重写返回详细信息
    ///
    /// 创建路径重写，并返回路径重写规则信息
    @inlinable
    public func createPathRewritesWithDetailResp(pathRewrites: [PathRewriteCreateObject], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePathRewritesWithDetailRespResponse> {
        self.createPathRewritesWithDetailResp(.init(pathRewrites: pathRewrites), region: region, logger: logger, on: eventLoop)
    }

    /// 创建路径重写返回详细信息
    ///
    /// 创建路径重写，并返回路径重写规则信息
    @inlinable
    public func createPathRewritesWithDetailResp(pathRewrites: [PathRewriteCreateObject], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePathRewritesWithDetailRespResponse {
        try await self.createPathRewritesWithDetailResp(.init(pathRewrites: pathRewrites), region: region, logger: logger, on: eventLoop)
    }
}
