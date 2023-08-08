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

extension Csip {
    /// DescribeCVMAssetInfo请求参数结构体
    public struct DescribeCVMAssetInfoRequest: TCRequestModel {
        /// -
        public let assetId: String

        public init(assetId: String) {
            self.assetId = assetId
        }

        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
        }
    }

    /// DescribeCVMAssetInfo返回参数结构体
    public struct DescribeCVMAssetInfoResponse: TCResponseModel {
        /// -
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: AssetBaseInfoResponse?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// cvm详情
    @inlinable
    public func describeCVMAssetInfo(_ input: DescribeCVMAssetInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCVMAssetInfoResponse> {
        self.client.execute(action: "DescribeCVMAssetInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// cvm详情
    @inlinable
    public func describeCVMAssetInfo(_ input: DescribeCVMAssetInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCVMAssetInfoResponse {
        try await self.client.execute(action: "DescribeCVMAssetInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// cvm详情
    @inlinable
    public func describeCVMAssetInfo(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCVMAssetInfoResponse> {
        self.describeCVMAssetInfo(.init(assetId: assetId), region: region, logger: logger, on: eventLoop)
    }

    /// cvm详情
    @inlinable
    public func describeCVMAssetInfo(assetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCVMAssetInfoResponse {
        try await self.describeCVMAssetInfo(.init(assetId: assetId), region: region, logger: logger, on: eventLoop)
    }
}
