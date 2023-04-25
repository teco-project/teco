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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dasb {
    /// DescribeDasbImageIds请求参数结构体
    public struct DescribeDasbImageIdsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDasbImageIds返回参数结构体
    public struct DescribeDasbImageIdsResponse: TCResponseModel {
        /// 基础镜像ID
        public let baseImageId: String

        /// AI镜像ID
        public let aiImageId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baseImageId = "BaseImageId"
            case aiImageId = "AiImageId"
            case requestId = "RequestId"
        }
    }

    /// 数盾-DASB-获取镜像列表
    ///
    /// 获取镜像列表
    @inlinable
    public func describeDasbImageIds(_ input: DescribeDasbImageIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDasbImageIdsResponse> {
        self.client.execute(action: "DescribeDasbImageIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数盾-DASB-获取镜像列表
    ///
    /// 获取镜像列表
    @inlinable
    public func describeDasbImageIds(_ input: DescribeDasbImageIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDasbImageIdsResponse {
        try await self.client.execute(action: "DescribeDasbImageIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数盾-DASB-获取镜像列表
    ///
    /// 获取镜像列表
    @inlinable
    public func describeDasbImageIds(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDasbImageIdsResponse> {
        self.describeDasbImageIds(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 数盾-DASB-获取镜像列表
    ///
    /// 获取镜像列表
    @inlinable
    public func describeDasbImageIds(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDasbImageIdsResponse {
        try await self.describeDasbImageIds(.init(), region: region, logger: logger, on: eventLoop)
    }
}
