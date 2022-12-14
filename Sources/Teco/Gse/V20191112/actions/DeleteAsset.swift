//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gse {
    /// DeleteAsset请求参数结构体
    public struct DeleteAssetRequest: TCRequestModel {
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
    public struct DeleteAssetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除生成包
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAsset）用于删除生成包。
    @inlinable
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAssetResponse > {
        self.client.execute(action: "DeleteAsset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除生成包
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAsset）用于删除生成包。
    @inlinable
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        try await self.client.execute(action: "DeleteAsset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除生成包
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAsset）用于删除生成包。
    @inlinable
    public func deleteAsset(assetId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAssetResponse > {
        self.deleteAsset(DeleteAssetRequest(assetId: assetId), logger: logger, on: eventLoop)
    }

    /// 删除生成包
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAsset）用于删除生成包。
    @inlinable
    public func deleteAsset(assetId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        try await self.deleteAsset(DeleteAssetRequest(assetId: assetId), logger: logger, on: eventLoop)
    }
}
