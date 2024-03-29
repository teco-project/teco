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

extension Gse {
    /// DescribeInstanceLimit请求参数结构体
    public struct DescribeInstanceLimitRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeInstanceLimit返回参数结构体
    public struct DescribeInstanceLimitResponse: TCResponse {
        /// 限额
        public let limit: Int64

        /// 详细信息
        public let extraInfos: [ExtraInfos]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case extraInfos = "ExtraInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询用户实例数限额
    ///
    /// 本接口（DescribeInstanceLimit）用于查询用户实例数限额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceLimit(_ input: DescribeInstanceLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLimitResponse> {
        fatalError("'DescribeInstanceLimit' is no longer available.")
    }

    /// 查询用户实例数限额
    ///
    /// 本接口（DescribeInstanceLimit）用于查询用户实例数限额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceLimit(_ input: DescribeInstanceLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLimitResponse {
        fatalError("'DescribeInstanceLimit' is no longer available.")
    }

    /// 查询用户实例数限额
    ///
    /// 本接口（DescribeInstanceLimit）用于查询用户实例数限额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceLimit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLimitResponse> {
        fatalError("'DescribeInstanceLimit' is no longer available.")
    }

    /// 查询用户实例数限额
    ///
    /// 本接口（DescribeInstanceLimit）用于查询用户实例数限额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceLimit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLimitResponse {
        fatalError("'DescribeInstanceLimit' is no longer available.")
    }
}
