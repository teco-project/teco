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

extension Bsca {
    /// MatchKBPURLList请求参数结构体
    public struct MatchKBPURLListRequest: TCRequest {
        /// SHA1。
        public let sha1: String?

        public init(sha1: String? = nil) {
            self.sha1 = sha1
        }

        enum CodingKeys: String, CodingKey {
            case sha1 = "SHA1"
        }
    }

    /// MatchKBPURLList返回参数结构体
    public struct MatchKBPURLListResponse: TCResponse {
        /// 组件列表。
        public let purlList: [PURL]

        /// 是否命中数据库。
        public let hit: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case purlList = "PURLList"
            case hit = "Hit"
            case requestId = "RequestId"
        }
    }

    /// 匹配知识库组件列表
    ///
    /// 本接口(MatchKBPURLList)用于在知识库中匹配与特征对应的开源组件列表。
    @inlinable
    public func matchKBPURLList(_ input: MatchKBPURLListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MatchKBPURLListResponse> {
        self.client.execute(action: "MatchKBPURLList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 匹配知识库组件列表
    ///
    /// 本接口(MatchKBPURLList)用于在知识库中匹配与特征对应的开源组件列表。
    @inlinable
    public func matchKBPURLList(_ input: MatchKBPURLListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MatchKBPURLListResponse {
        try await self.client.execute(action: "MatchKBPURLList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 匹配知识库组件列表
    ///
    /// 本接口(MatchKBPURLList)用于在知识库中匹配与特征对应的开源组件列表。
    @inlinable
    public func matchKBPURLList(sha1: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MatchKBPURLListResponse> {
        self.matchKBPURLList(.init(sha1: sha1), region: region, logger: logger, on: eventLoop)
    }

    /// 匹配知识库组件列表
    ///
    /// 本接口(MatchKBPURLList)用于在知识库中匹配与特征对应的开源组件列表。
    @inlinable
    public func matchKBPURLList(sha1: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MatchKBPURLListResponse {
        try await self.matchKBPURLList(.init(sha1: sha1), region: region, logger: logger, on: eventLoop)
    }
}
