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

extension Dsgc {
    /// ModifyMergeClassification请求参数结构体
    public struct ModifyMergeClassificationRequest: TCRequest {
        public init() {
        }
    }

    /// ModifyMergeClassification返回参数结构体
    public struct ModifyMergeClassificationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 一个分类合并到另一个分类中（分类拖拽功能）
    @inlinable @discardableResult
    public func modifyMergeClassification(_ input: ModifyMergeClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMergeClassificationResponse> {
        self.client.execute(action: "ModifyMergeClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 一个分类合并到另一个分类中（分类拖拽功能）
    @inlinable @discardableResult
    public func modifyMergeClassification(_ input: ModifyMergeClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMergeClassificationResponse {
        try await self.client.execute(action: "ModifyMergeClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 一个分类合并到另一个分类中（分类拖拽功能）
    @inlinable @discardableResult
    public func modifyMergeClassification(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMergeClassificationResponse> {
        self.modifyMergeClassification(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 一个分类合并到另一个分类中（分类拖拽功能）
    @inlinable @discardableResult
    public func modifyMergeClassification(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMergeClassificationResponse {
        try await self.modifyMergeClassification(.init(), region: region, logger: logger, on: eventLoop)
    }
}
