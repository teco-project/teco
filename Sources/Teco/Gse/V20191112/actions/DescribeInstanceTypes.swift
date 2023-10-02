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
    /// DescribeInstanceTypes请求参数结构体
    public struct DescribeInstanceTypesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeInstanceTypes返回参数结构体
    public struct DescribeInstanceTypesResponse: TCResponse {
        /// 服务器实例类型列表
        public let instanceTypeList: [InstanceTypeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceTypeList = "InstanceTypeList"
            case requestId = "RequestId"
        }
    }

    /// 获取服务器实例类型列表
    ///
    /// 本接口（DescribeInstanceTypes）用于获取服务器实例类型列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceTypes(_ input: DescribeInstanceTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTypesResponse> {
        fatalError("'DescribeInstanceTypes' is no longer available.")
    }

    /// 获取服务器实例类型列表
    ///
    /// 本接口（DescribeInstanceTypes）用于获取服务器实例类型列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceTypes(_ input: DescribeInstanceTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypesResponse {
        fatalError("'DescribeInstanceTypes' is no longer available.")
    }

    /// 获取服务器实例类型列表
    ///
    /// 本接口（DescribeInstanceTypes）用于获取服务器实例类型列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTypesResponse> {
        fatalError("'DescribeInstanceTypes' is no longer available.")
    }

    /// 获取服务器实例类型列表
    ///
    /// 本接口（DescribeInstanceTypes）用于获取服务器实例类型列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeInstanceTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypesResponse {
        fatalError("'DescribeInstanceTypes' is no longer available.")
    }
}
