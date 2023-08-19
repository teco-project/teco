//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Cloudstudio {
    /// DescribeImages请求参数结构体
    public struct DescribeImagesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeImages返回参数结构体
    public struct DescribeImagesResponse: TCResponse {
        /// 镜像列表
        public let images: [Image]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case images = "Images"
            case requestId = "RequestId"
        }
    }

    /// 获取基础镜像列表
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基础镜像列表
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基础镜像列表
    @inlinable
    public func describeImages(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.describeImages(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基础镜像列表
    @inlinable
    public func describeImages(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.describeImages(.init(), region: region, logger: logger, on: eventLoop)
    }
}
