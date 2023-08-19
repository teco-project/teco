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
    /// UpdateBucketAccelerateOpt请求参数结构体
    public struct UpdateBucketAccelerateOptRequest: TCRequest {
        /// true为开启全球加速，false为关闭
        public let allowed: Bool

        public init(allowed: Bool) {
            self.allowed = allowed
        }

        enum CodingKeys: String, CodingKey {
            case allowed = "Allowed"
        }
    }

    /// UpdateBucketAccelerateOpt返回参数结构体
    public struct UpdateBucketAccelerateOptResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// cos设置全球加速
    ///
    /// 本接口（UpdateBucketAccelerateOpt）用于开启cos全球加速。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateBucketAccelerateOpt(_ input: UpdateBucketAccelerateOptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBucketAccelerateOptResponse> {
        fatalError("UpdateBucketAccelerateOpt is no longer available.")
    }

    /// cos设置全球加速
    ///
    /// 本接口（UpdateBucketAccelerateOpt）用于开启cos全球加速。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateBucketAccelerateOpt(_ input: UpdateBucketAccelerateOptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBucketAccelerateOptResponse {
        fatalError("UpdateBucketAccelerateOpt is no longer available.")
    }

    /// cos设置全球加速
    ///
    /// 本接口（UpdateBucketAccelerateOpt）用于开启cos全球加速。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateBucketAccelerateOpt(allowed: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBucketAccelerateOptResponse> {
        fatalError("UpdateBucketAccelerateOpt is no longer available.")
    }

    /// cos设置全球加速
    ///
    /// 本接口（UpdateBucketAccelerateOpt）用于开启cos全球加速。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateBucketAccelerateOpt(allowed: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBucketAccelerateOptResponse {
        fatalError("UpdateBucketAccelerateOpt is no longer available.")
    }
}
