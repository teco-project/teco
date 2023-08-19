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

extension Cfs {
    /// DescribeCfsServiceStatus请求参数结构体
    public struct DescribeCfsServiceStatusRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeCfsServiceStatus返回参数结构体
    public struct DescribeCfsServiceStatusResponse: TCResponse {
        /// 该用户当前 CFS 服务的状态，none 为未开通，creating 为开通中，created 为已开通
        public let cfsServiceStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cfsServiceStatus = "CfsServiceStatus"
            case requestId = "RequestId"
        }
    }

    /// 查询CFS服务状态
    ///
    /// 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。
    @inlinable
    public func describeCfsServiceStatus(_ input: DescribeCfsServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsServiceStatusResponse> {
        self.client.execute(action: "DescribeCfsServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CFS服务状态
    ///
    /// 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。
    @inlinable
    public func describeCfsServiceStatus(_ input: DescribeCfsServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsServiceStatusResponse {
        try await self.client.execute(action: "DescribeCfsServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CFS服务状态
    ///
    /// 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。
    @inlinable
    public func describeCfsServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsServiceStatusResponse> {
        self.describeCfsServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CFS服务状态
    ///
    /// 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。
    @inlinable
    public func describeCfsServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsServiceStatusResponse {
        try await self.describeCfsServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }
}
