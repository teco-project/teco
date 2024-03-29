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

extension Antiddos {
    /// DescribeBlackWhiteIpList请求参数结构体
    public struct DescribeBlackWhiteIpListRequest: TCRequest {
        /// 资源实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeBlackWhiteIpList返回参数结构体
    public struct DescribeBlackWhiteIpListResponse: TCResponse {
        /// 黑名单IP列表
        public let blackIpList: [String]

        /// 白名单IP列表
        public let whiteIpList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case blackIpList = "BlackIpList"
            case whiteIpList = "WhiteIpList"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS防护的IP黑白名单
    @available(*, unavailable, message: "接口变更")
    @inlinable
    public func describeBlackWhiteIpList(_ input: DescribeBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlackWhiteIpListResponse> {
        fatalError("'DescribeBlackWhiteIpList' is no longer available.")
    }

    /// 获取DDoS防护的IP黑白名单
    @available(*, unavailable, message: "接口变更")
    @inlinable
    public func describeBlackWhiteIpList(_ input: DescribeBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlackWhiteIpListResponse {
        fatalError("'DescribeBlackWhiteIpList' is no longer available.")
    }

    /// 获取DDoS防护的IP黑白名单
    @available(*, unavailable, message: "接口变更")
    @inlinable
    public func describeBlackWhiteIpList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlackWhiteIpListResponse> {
        fatalError("'DescribeBlackWhiteIpList' is no longer available.")
    }

    /// 获取DDoS防护的IP黑白名单
    @available(*, unavailable, message: "接口变更")
    @inlinable
    public func describeBlackWhiteIpList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlackWhiteIpListResponse {
        fatalError("'DescribeBlackWhiteIpList' is no longer available.")
    }
}
