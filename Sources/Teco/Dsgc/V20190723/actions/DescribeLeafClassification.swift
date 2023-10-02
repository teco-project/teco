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
    /// DescribeLeafClassification请求参数结构体
    public struct DescribeLeafClassificationRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeLeafClassification返回参数结构体
    public struct DescribeLeafClassificationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询标准下所有叶子节点分类
    @inlinable @discardableResult
    public func describeLeafClassification(_ input: DescribeLeafClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLeafClassificationResponse> {
        self.client.execute(action: "DescribeLeafClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询标准下所有叶子节点分类
    @inlinable @discardableResult
    public func describeLeafClassification(_ input: DescribeLeafClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLeafClassificationResponse {
        try await self.client.execute(action: "DescribeLeafClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询标准下所有叶子节点分类
    @inlinable @discardableResult
    public func describeLeafClassification(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLeafClassificationResponse> {
        self.describeLeafClassification(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询标准下所有叶子节点分类
    @inlinable @discardableResult
    public func describeLeafClassification(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLeafClassificationResponse {
        try await self.describeLeafClassification(.init(), region: region, logger: logger, on: eventLoop)
    }
}