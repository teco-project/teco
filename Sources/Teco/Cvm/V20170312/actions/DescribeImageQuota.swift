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

extension Cvm {
    /// DescribeImageQuota请求参数结构体
    public struct DescribeImageQuotaRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeImageQuota返回参数结构体
    public struct DescribeImageQuotaResponse: TCResponse {
        /// 账户的镜像配额
        public let imageNumQuota: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageNumQuota = "ImageNumQuota"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像配额上限
    ///
    /// 本接口(DescribeImageQuota)用于查询用户账号的镜像配额。
    @inlinable
    public func describeImageQuota(_ input: DescribeImageQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageQuotaResponse> {
        self.client.execute(action: "DescribeImageQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像配额上限
    ///
    /// 本接口(DescribeImageQuota)用于查询用户账号的镜像配额。
    @inlinable
    public func describeImageQuota(_ input: DescribeImageQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageQuotaResponse {
        try await self.client.execute(action: "DescribeImageQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像配额上限
    ///
    /// 本接口(DescribeImageQuota)用于查询用户账号的镜像配额。
    @inlinable
    public func describeImageQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageQuotaResponse> {
        self.describeImageQuota(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像配额上限
    ///
    /// 本接口(DescribeImageQuota)用于查询用户账号的镜像配额。
    @inlinable
    public func describeImageQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageQuotaResponse {
        try await self.describeImageQuota(.init(), region: region, logger: logger, on: eventLoop)
    }
}
