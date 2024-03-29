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

extension Cfw {
    /// ModifyRunSyncAsset请求参数结构体
    public struct ModifyRunSyncAssetRequest: TCRequest {
        /// 0: 互联网防火墙开关，1：vpc 防火墙开关
        public let type: UInt64?

        public init(type: UInt64? = nil) {
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
        }
    }

    /// ModifyRunSyncAsset返回参数结构体
    public struct ModifyRunSyncAssetResponse: TCResponse {
        /// 0：同步成功，1：资产更新中，2：后台同步调用失败
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 同步资产-互联网&VPC（新）
    @inlinable
    public func modifyRunSyncAsset(_ input: ModifyRunSyncAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRunSyncAssetResponse> {
        self.client.execute(action: "ModifyRunSyncAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步资产-互联网&VPC（新）
    @inlinable
    public func modifyRunSyncAsset(_ input: ModifyRunSyncAssetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRunSyncAssetResponse {
        try await self.client.execute(action: "ModifyRunSyncAsset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步资产-互联网&VPC（新）
    @inlinable
    public func modifyRunSyncAsset(type: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRunSyncAssetResponse> {
        self.modifyRunSyncAsset(.init(type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 同步资产-互联网&VPC（新）
    @inlinable
    public func modifyRunSyncAsset(type: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRunSyncAssetResponse {
        try await self.modifyRunSyncAsset(.init(type: type), region: region, logger: logger, on: eventLoop)
    }
}
