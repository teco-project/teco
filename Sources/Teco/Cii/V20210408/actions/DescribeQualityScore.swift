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

import struct Foundation.Data
import Logging
import NIOCore
import TecoCore

extension Cii {
    /// DescribeQualityScore请求参数结构体
    public struct DescribeQualityScoreRequest: TCMultipartRequest {
        /// 文件二进制数据
        public let file: Data

        public init(file: Data) {
            self.file = file
        }

        enum CodingKeys: String, CodingKey {
            case file = "File"
        }
    }

    /// DescribeQualityScore返回参数结构体
    public struct DescribeQualityScoreResponse: TCResponse {
        /// 质量分
        public let qualityScore: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case qualityScore = "QualityScore"
            case requestId = "RequestId"
        }
    }

    /// 获取图片质量分
    @inlinable
    public func describeQualityScore(_ input: DescribeQualityScoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityScoreResponse> {
        self.client.execute(action: "DescribeQualityScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取图片质量分
    @inlinable
    public func describeQualityScore(_ input: DescribeQualityScoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityScoreResponse {
        try await self.client.execute(action: "DescribeQualityScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取图片质量分
    @inlinable
    public func describeQualityScore(file: Data, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityScoreResponse> {
        self.describeQualityScore(.init(file: file), region: region, logger: logger, on: eventLoop)
    }

    /// 获取图片质量分
    @inlinable
    public func describeQualityScore(file: Data, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityScoreResponse {
        try await self.describeQualityScore(.init(file: file), region: region, logger: logger, on: eventLoop)
    }
}