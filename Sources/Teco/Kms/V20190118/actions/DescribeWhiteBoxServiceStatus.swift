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

extension Kms {
    /// DescribeWhiteBoxServiceStatus请求参数结构体
    public struct DescribeWhiteBoxServiceStatusRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeWhiteBoxServiceStatus返回参数结构体
    public struct DescribeWhiteBoxServiceStatusResponse: TCResponseModel {
        /// 用户的白盒密钥服务是否可用
        public let serviceEnabled: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceEnabled = "ServiceEnabled"
            case requestId = "RequestId"
        }
    }

    /// 获取白盒密钥服务状态
    @inlinable
    public func describeWhiteBoxServiceStatus(_ input: DescribeWhiteBoxServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxServiceStatusResponse> {
        self.client.execute(action: "DescribeWhiteBoxServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥服务状态
    @inlinable
    public func describeWhiteBoxServiceStatus(_ input: DescribeWhiteBoxServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxServiceStatusResponse {
        try await self.client.execute(action: "DescribeWhiteBoxServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取白盒密钥服务状态
    @inlinable
    public func describeWhiteBoxServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxServiceStatusResponse> {
        self.describeWhiteBoxServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取白盒密钥服务状态
    @inlinable
    public func describeWhiteBoxServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxServiceStatusResponse {
        try await self.describeWhiteBoxServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }
}
