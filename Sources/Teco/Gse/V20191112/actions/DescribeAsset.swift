//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gse {
    /// DescribeAsset请求参数结构体
    public struct DescribeAssetRequest: TCRequestModel {
        /// 生成包ID
        public let assetId: String

        public init(assetId: String) {
            self.assetId = assetId
        }

        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
        }
    }

    /// DescribeAsset返回参数结构体
    public struct DescribeAssetResponse: TCResponseModel {
        /// 生成包信息
        public let asset: Asset

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asset = "Asset"
            case requestId = "RequestId"
        }
    }

    /// 获取生成包信息
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAsset）获取生成包信息。
    @inlinable
    public func describeAsset(_ input: DescribeAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetResponse> {
        self.client.execute(action: "DescribeAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取生成包信息
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAsset）获取生成包信息。
    @inlinable
    public func describeAsset(_ input: DescribeAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetResponse {
        try await self.client.execute(action: "DescribeAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取生成包信息
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAsset）获取生成包信息。
    @inlinable
    public func describeAsset(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetResponse> {
        self.describeAsset(DescribeAssetRequest(assetId: assetId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取生成包信息
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAsset）获取生成包信息。
    @inlinable
    public func describeAsset(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetResponse {
        try await self.describeAsset(DescribeAssetRequest(assetId: assetId), region: region, logger: logger, on: eventLoop)
    }
}
