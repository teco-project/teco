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
    /// DeleteAsset请求参数结构体
    public struct DeleteAssetRequest: TCRequest {
        /// 生成包ID
        public let assetId: String

        public init(assetId: String) {
            self.assetId = assetId
        }

        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
        }
    }

    /// DeleteAsset返回参数结构体
    public struct DeleteAssetResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除生成包
    ///
    /// 本接口（DeleteAsset）用于删除生成包。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteAsset(_ input: DeleteAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssetResponse> {
        fatalError("DeleteAsset is no longer available.")
    }

    /// 删除生成包
    ///
    /// 本接口（DeleteAsset）用于删除生成包。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteAsset(_ input: DeleteAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        fatalError("DeleteAsset is no longer available.")
    }

    /// 删除生成包
    ///
    /// 本接口（DeleteAsset）用于删除生成包。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteAsset(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssetResponse> {
        fatalError("DeleteAsset is no longer available.")
    }

    /// 删除生成包
    ///
    /// 本接口（DeleteAsset）用于删除生成包。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteAsset(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        fatalError("DeleteAsset is no longer available.")
    }
}
