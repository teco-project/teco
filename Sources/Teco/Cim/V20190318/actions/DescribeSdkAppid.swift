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

extension Cim {
    /// DescribeSdkAppid请求参数结构体
    public struct DescribeSdkAppidRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSdkAppid返回参数结构体
    public struct DescribeSdkAppidResponse: TCResponseModel {
        /// 表示 appid 对应的 SdkAppid 的数据
        public let sdkAppids: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sdkAppids = "SdkAppids"
            case requestId = "RequestId"
        }
    }

    /// 获取云通信 IM 的 SDKAppid
    ///
    /// 获取云通信IM中腾讯云账号对应的SDKAppID
    @inlinable
    public func describeSdkAppid(_ input: DescribeSdkAppidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSdkAppidResponse> {
        self.client.execute(action: "DescribeSdkAppid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云通信 IM 的 SDKAppid
    ///
    /// 获取云通信IM中腾讯云账号对应的SDKAppID
    @inlinable
    public func describeSdkAppid(_ input: DescribeSdkAppidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSdkAppidResponse {
        try await self.client.execute(action: "DescribeSdkAppid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云通信 IM 的 SDKAppid
    ///
    /// 获取云通信IM中腾讯云账号对应的SDKAppID
    @inlinable
    public func describeSdkAppid(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSdkAppidResponse> {
        self.describeSdkAppid(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云通信 IM 的 SDKAppid
    ///
    /// 获取云通信IM中腾讯云账号对应的SDKAppID
    @inlinable
    public func describeSdkAppid(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSdkAppidResponse {
        try await self.describeSdkAppid(.init(), region: region, logger: logger, on: eventLoop)
    }
}
